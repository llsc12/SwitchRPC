//
//  Webserver.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 31/07/2025.
//

// This code was originally from NXGallery, modified for auth flow
// thank you iUltimateLP for the original code!

import devkitpro
import libnx

class WebServer {
	nonisolated(unsafe) static let shared = WebServer(port: 45601)

	// these will be a value by the time the server is stopped
	public var code: String?
	public var state: String?

	// Constructor taking in the port for this server to run on
	public init(port: UInt16) {
		// Store the port
		self.port = port
		// Initialize the server socket to an invalid state for now
		self.serverSocket = -1
		// Set the server to not running
		self.isRunning = false

		// We won't initialize the web server here just now,
		// the caller can do that by calling CWebServer::Start
	}

	var servAddress: sockaddr_in = .init()

	// Starts the web server
	public func start() {
		// If we're already running, don't try to start again
		guard !isRunning else { return print("Web server is already running") }

		// Construct a socket address where we want to listen for requests
		self.servAddress.sin_addr.s_addr = INADDR_ANY  // The Switch's IP address
		self.servAddress.sin_port = port.bigEndian  // same as htons(port)
		self.servAddress.sin_family = sa_family_t(PF_INET)  // The Switch only supports AF_INET and AF_ROUTE: https://switchbrew.org/wiki/Sockets_services#Socket

		// Create a new STREAM IPv4 socket
		self.serverSocket = socket(AF_INET, SOCK_STREAM, 0)
		if serverSocket < 0 { return print("Failed to create web server socket") }

		// Set a relatively short timeout for recv() calls, see CWebServer::ServeRequest for more info why
		var recvTimeout: timeval = .init()
		recvTimeout.tv_sec = 1
		recvTimeout.tv_usec = 0
		withUnsafePointer(to: &recvTimeout) {
			$0.withMemoryRebound(to: UInt8.self, capacity: MemoryLayout<timeval>.size)
			{ ptr in
				setsockopt(
					serverSocket,
					SOL_SOCKET,
					SO_RCVTIMEO,
					ptr,
					socklen_t(MemoryLayout<timeval>.size)
				)
				return
			}
			return
		}

		// Enable address and port reusing
		var yes = 1
		withUnsafePointer(to: &yes) {
			$0.withMemoryRebound(to: UInt8.self, capacity: MemoryLayout<timeval>.size)
			{ ptr in
				setsockopt(
					serverSocket,
					SOL_SOCKET,
					SO_REUSEADDR,
					ptr,
					socklen_t(MemoryLayout<Int>.size)
				)
				setsockopt(
					serverSocket,
					SOL_SOCKET,
					SO_REUSEPORT,
					ptr,
					socklen_t(MemoryLayout<Int>.size)
				)
				return
			}
			return
		}

		// Bind the just-created socket to the address
		let rc = withUnsafePointer(to: &servAddress) {
			$0.withMemoryRebound(to: sockaddr.self, capacity: 1) { serv_addr in
				// Bind the socket to the address and port
				bind(serverSocket, serv_addr, socklen_t(MemoryLayout<sockaddr_in>.size))
			}
		}
		if rc < 0 {
			return print("Failed to bind web server socket")
		}

		// Start listening to the socket with 5 maximum parallel connections
		if listen(serverSocket, 10) < 0 {
			print("Failed to listen to the web server socket")
			return
		}

		// Now we're running
		isRunning = true
	}

	// Stops the web server
	public func stop() {
		// Not running anymore
		self.isRunning = false

		// Shutdown the server socket, then close it
		shutdown(serverSocket, SHUT_RDWR)
		close(serverSocket)
	}

	// The loop for the server to accept and handle requests
	public func serveLoop() -> Bool {

		// Asynchronous / event-driven loop using poll
		// More here: http://man7.org/linux/man-pages/man2/poll.2.html

		// Do not try to serve anything when the server isn't running
		if !isRunning { return false }

		// Will hold the data returned from poll()
		var pollInfo: pollfd = .init()
		pollInfo.fd = serverSocket  // Listen to events from the server socket we opened
		pollInfo.events = Int16(POLLIN)  // Only react on incoming events
		pollInfo.revents = 0  // Gets filled with events later

		// Poll for new events
		if poll(&pollInfo, 1, 0) > 0 {
			// There was an incoming event on the server socket
			if pollInfo.revents & Int16(POLLIN) != 0 {
				// Will hold data about the new connection
				var clientAddress: sockaddr_in = .init()
				var addrLen: socklen_t = socklen_t(MemoryLayout<sockaddr_in>.size)

				// Accept the incoming connection
				let acceptedConnection: Int32 = withUnsafeMutablePointer(
					to: &clientAddress
				) { clientAddrPtr in
					clientAddrPtr.withMemoryRebound(to: sockaddr.self, capacity: 1) {
						clientAddr in
						accept(serverSocket, clientAddr, &addrLen)
					}
				}
				if acceptedConnection > 0 {
					// Serve ("answer") the request which is waiting at the file descriptor accept() returned
					Self.ServeRequest(in: acceptedConnection, out: acceptedConnection)

					// After we served the request, close the connection
					if close(acceptedConnection) < 0 {
						print("Failed to close accepted connection")
					}
				} else if __errno().pointee == ECONNABORTED && isRunning {
					// Make sure this only happens once
					isRunning = false

					// Shutdown and close a socket if still open
					shutdown(serverSocket, SHUT_RDWR)
					close(serverSocket)

					// Start the sever again
					start()
				}
			}
		}

		return true
	}

	// Returns the address and port string this server is running on
	public func getWebAddress(port: UInt16? = nil) -> String {
		var buffer = [CChar](repeating: 0, count: 64)
		var serv_addr = sockaddr_in()
		serv_addr.sin_addr.s_addr = in_addr_t(gethostid())

		guard let ipCString = inet_ntoa(serv_addr.sin_addr) else { return "" }
		formatAddress(&buffer, buffer.count, ipCString, Int32(port ?? self.port))  // snprintf is variadic so i used c and made a helper function

		return String(cString: buffer)
	}
	public func getIPAddress() -> String {
		var buffer = [CChar](repeating: 0, count: 64)
		var serv_addr = sockaddr_in()
		serv_addr.sin_addr.s_addr = in_addr_t(gethostid())

		guard let ipCString = inet_ntoa(serv_addr.sin_addr) else { return "" }
		return String(cString: ipCString)
	}

	// Serves a incoming request to the specified out socket
	static func ServeRequest(in: Int32, out: Int32) {
		var buffer = [UInt8](repeating: 0, count: 8192)
		
		let bytesReceived = recv(`in`, &buffer, buffer.count, 0)
		guard bytesReceived > 0 else { return }

		buffer[bytesReceived] = 0 // good way to null-terminate
		let requestString = String(cString: buffer)
		guard let requestLine = requestString.split(separator: "\r\n").first
		else { return }

		guard requestLine.hasPrefix("GET /callback") else { return }
		
		let comps = requestLine.split(
			separator: " ",
			maxSplits: 2,
			omittingEmptySubsequences: true
		)
		guard comps.count >= 2 else {
			print("Malformed requestLine: \(requestLine)")
			return
		}
		let pathAndQuery = String(comps[1]).trimmingWhitespaces()

		let parts = pathAndQuery.split(separator: "?", maxSplits: 1).map(
			String.init
		)
		let path = parts.first ?? ""
		let query = parts.count > 1 ? parts[1] : ""

		if path == "/callback" {
			var code: String? = nil
			var state: String? = nil
			let queries = query.split(separator: "&")
			for pair in queries {
				let keyValue = pair.split(separator: "=", maxSplits: 1).map(
					String.init
				)
				if keyValue.count == 2 {
					if keyValue[0] == "code" {
						code = keyValue[1]
					} else if keyValue[0] == "state" {
						state = keyValue[1]
					}
				}
			}

			if let code, let state {
				// redirect to completion page
				let response =
					"HTTP/1.1 302 Found\r\nContent-Type: text/plain\r\nLocation: https://static.llsc12.me/discord/complete\r\n\r\nCallback received. You can close this window."
				_ = response.withCString { cstr in
					send(out, cstr, strlen(cstr), 0)
				}
				
				// set states and stop
				self.shared.code = code
				self.shared.state = state

				Self.shared.stop()
				return
			}
		}

		// no match, 404
		let response =
			"HTTP/1.1 404 Not Found\r\nContent-Type: text/plain\r\n\r\nNot Found"
		_ = response.withCString { cstr in
			send(out, cstr, strlen(cstr), 0)
		}
		return
	}

	/// The port the web server is running on
	public let port: UInt16
	/// Indicates if the server is currently running
	public var isRunning: Bool = false
	/// Socket the web server is listening on
	public var serverSocket: Int32
}
