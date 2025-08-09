import libnx

// this file defines some functions and constants that are expected to exist

// Service initialization.
@_cdecl("__appInit")
func appInit() {
	var rc: Result = .init()

	// Open a service manager session.
	rc = smInitialize()

	if rc.failed {
		diagAbortWithResult(
			Result.make(module: Module_Libnx, description: LibnxError_InitFail_SM)
		)
	}
	// Retrieve the current version of Horizon OS.
	rc = setsysInitialize()
	if rc.succeeded {
		var fw: SetSysFirmwareVersion = .init()
		rc = setsysGetFirmwareVersion(&fw)
		if rc.succeeded {
			hosversionSet(MAKEHOSVERSION(fw.major, fw.minor, fw.micro))
		}
		setsysExit()
	}

	// Enable this if you want to use HID.
	/*rc = hidInitialize();
	if (R_FAILED(rc))
	    diagAbortWithResult(MAKERESULT(Module_Libnx, LibnxError_InitFail_HID));*/

	// Enable this if you want to use time.
	/*rc = timeInitialize();
	if (R_FAILED(rc))
	    diagAbortWithResult(MAKERESULT(Module_Libnx, LibnxError_InitFail_Time));
	
	__libnx_init_time();*/

	// Disable this if you don't want to use the filesystem.
	rc = fsInitialize()
	if rc.failed {
		diagAbortWithResult(
			Result.make(module: Module_Libnx, description: LibnxError_InitFail_FS)
		)
	}

	// Disable this if you don't want to use the SD card filesystem.
	fsdevMountSdmc()

	// Add other services you want to use here.
	var socketConfig = SocketInitConfig()
	socketConfig.tcp_tx_buf_size = 0x8000 // 32 KiB
	socketConfig.tcp_rx_buf_size = 0x8000
	socketConfig.tcp_tx_buf_max_size = 0x20000 // 128 KiB
	socketConfig.tcp_rx_buf_max_size = 0x20000
	socketConfig.udp_tx_buf_size = 0x0
	socketConfig.udp_rx_buf_size = 0x0
	socketConfig.sb_efficiency = 1
	socketConfig.bsd_service_type = BsdServiceType_Auto
	socketInitialize(&socketConfig)
	Request.curlInit()
	
	// Close the service manager session.
	smExit()
}

// Service deinitialization.
@_cdecl("__appExit")
func appExit() {
	// Close extra services you added to __appInit here.
	Request.curlCleanup()
	socketExit()
	fsdevUnmountAll()  // Disable this if you don't want to use the SD card filesystem.
	fsExit()  // Disable this if you don't want to use the filesystem.
	//timeExit(); // Enable this if you want to use time.
	//hidExit(); // Enable this if you want to use HID.
}
