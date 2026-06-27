//
//  QRCode.swift
//  SwitchRPC
//
//  Self-contained QR Code (Model 2) encoder + console renderer.
//  Byte (8-bit) mode only. Reed-Solomon ECC over GF(256). Supports versions 1...10.
//
//  Embedded-Swift safe: no Foundation, no libnx. The pure encoding logic also
//  compiles under host swiftc so it can be diffed against an oracle (e.g. segno).
//

enum QRCode {
	// MARK: - Public API

	enum ECC {
		case l, m, q, h
	}

	/// Encode `text` (UTF-8, byte mode) picking the smallest version that fits at
	/// ECC level M, falling back to L only if no version 1...10 fits at M.
	/// Full mask selection (lowest penalty, tie -> lowest index). The returned
	/// matrix has NO quiet zone; `true` = dark. Returns nil if the text is too long.
	static func encode(_ text: String) -> [[Bool]]? {
		let data = Array(text.utf8)

		var chosenV = 0
		var chosenEcc: ECC = .m
		for v in 1...10 {
			if fits(data.count, v, .m) { chosenV = v; chosenEcc = .m; break }
		}
		if chosenV == 0 {
			for v in 1...10 {
				if fits(data.count, v, .l) { chosenV = v; chosenEcc = .l; break }
			}
		}
		if chosenV == 0 { return nil }

		guard let interleaved = buildCodewords(data, chosenV, chosenEcc) else { return nil }

		// Mask selection is evaluated WITHOUT format/version/dark modules placed
		// (ISO 18004 7.8.3); lowest penalty wins, ties resolve to the lowest index.
		var bestMask = 0
		var bestPenalty = Int.max
		for m in 0..<8 {
			let evalMat = buildMatrix(interleaved, chosenV, chosenEcc, m, eval: true)
			let p = penalty(evalMat)
			if p < bestPenalty {
				bestPenalty = p
				bestMask = m
			}
		}
		return buildMatrix(interleaved, chosenV, chosenEcc, bestMask)
	}

	/// Host-testable forced-parameter encoder. Returns nil if the parameters are
	/// out of range or the text does not fit the requested version/ecc.
	static func encodeForced(_ text: String, version: Int, ecc: ECC, mask: Int) -> [[Bool]]? {
		if version < 1 || version > 10 { return nil }
		if mask < 0 || mask > 7 { return nil }
		let data = Array(text.utf8)
		if !fits(data.count, version, ecc) { return nil }
		guard let interleaved = buildCodewords(data, version, ecc) else { return nil }
		return buildMatrix(interleaved, version, ecc, mask)
	}

	/// Render a (quiet-zone-free) matrix to stdout/libnx console, dark-on-light,
	/// with a 4-module quiet zone. Each module is ONE space painted with a VT
	/// background color (light = ESC[47m, dark = ESC[40m), reset at the end of each
	/// line. The caller is responsible for consoleClear/consoleUpdate.
	static func render(_ matrix: [[Bool]]) {
		let n = matrix.count
		if n == 0 { return }
		let quiet = 4
		let total = n + quiet * 2
		let lightSeq = "\u{1B}[47m"
		let darkSeq = "\u{1B}[40m"
		let reset = "\u{1B}[0m"

		func renderRow(_ isDark: (Int) -> Bool) {
			var line = ""
			var current = false
			var started = false
			for c in 0..<total {
				let dark = isDark(c)
				if !started || dark != current {
					line += dark ? darkSeq : lightSeq
					current = dark
					started = true
				}
				line += " "
			}
			line += reset
			print(line)
		}

		for _ in 0..<quiet { renderRow { _ in false } }
		for r in 0..<n {
			let row = matrix[r]
			renderRow { c in
				if c < quiet || c >= quiet + n { return false }
				return row[c - quiet]
			}
		}
		for _ in 0..<quiet { renderRow { _ in false } }
	}

	// MARK: - Capacity / EC tables

	/// (ec codewords per block, group1 blocks, group1 data cw, group2 blocks, group2 data cw)
	static func eccTable(_ version: Int, _ ecc: ECC) -> (ec: Int, b1: Int, d1: Int, b2: Int, d2: Int) {
		switch version {
		case 1:
			switch ecc { case .l: return (7,1,19,0,0); case .m: return (10,1,16,0,0); case .q: return (13,1,13,0,0); case .h: return (17,1,9,0,0) }
		case 2:
			switch ecc { case .l: return (10,1,34,0,0); case .m: return (16,1,28,0,0); case .q: return (22,1,22,0,0); case .h: return (28,1,16,0,0) }
		case 3:
			switch ecc { case .l: return (15,1,55,0,0); case .m: return (26,1,44,0,0); case .q: return (18,2,17,0,0); case .h: return (22,2,13,0,0) }
		case 4:
			switch ecc { case .l: return (20,1,80,0,0); case .m: return (18,2,32,0,0); case .q: return (26,2,24,0,0); case .h: return (16,4,9,0,0) }
		case 5:
			switch ecc { case .l: return (26,1,108,0,0); case .m: return (24,2,43,0,0); case .q: return (18,2,15,2,16); case .h: return (22,2,11,2,12) }
		case 6:
			switch ecc { case .l: return (18,2,68,0,0); case .m: return (16,4,27,0,0); case .q: return (24,4,19,0,0); case .h: return (28,4,15,0,0) }
		case 7:
			switch ecc { case .l: return (20,2,78,0,0); case .m: return (18,4,31,0,0); case .q: return (18,2,14,4,15); case .h: return (26,4,13,1,14) }
		case 8:
			switch ecc { case .l: return (24,2,97,0,0); case .m: return (22,2,38,2,39); case .q: return (22,4,18,2,19); case .h: return (26,4,14,2,15) }
		case 9:
			switch ecc { case .l: return (30,2,116,0,0); case .m: return (22,3,36,2,37); case .q: return (20,4,16,4,17); case .h: return (24,4,12,4,13) }
		case 10:
			switch ecc { case .l: return (18,2,68,2,69); case .m: return (26,4,43,1,44); case .q: return (24,6,19,2,20); case .h: return (28,6,15,2,16) }
		default:
			return (0,0,0,0,0)
		}
	}

	static func alignmentPositions(_ v: Int) -> [Int] {
		switch v {
		case 2: return [6, 18]
		case 3: return [6, 22]
		case 4: return [6, 26]
		case 5: return [6, 30]
		case 6: return [6, 34]
		case 7: return [6, 22, 38]
		case 8: return [6, 24, 42]
		case 9: return [6, 26, 46]
		case 10: return [6, 28, 50]
		default: return []
		}
	}

	static func charCountBits(_ version: Int) -> Int {
		// byte mode: 8 bits for versions 1...9, 16 bits for 10...40
		return version < 10 ? 8 : 16
	}

	static func fits(_ len: Int, _ v: Int, _ ecc: ECC) -> Bool {
		let t = eccTable(v, ecc)
		let totalDataCW = t.b1 * t.d1 + t.b2 * t.d2
		let required = 4 + charCountBits(v) + 8 * len
		return required <= totalDataCW * 8
	}

	// MARK: - GF(256) / Reed-Solomon

	static func gfTables() -> (exp: [Int], log: [Int]) {
		var exp = [Int](repeating: 0, count: 512)
		var log = [Int](repeating: 0, count: 256)
		var x = 1
		for i in 0..<255 {
			exp[i] = x
			log[x] = i
			x <<= 1
			if x & 0x100 != 0 { x ^= 0x11D }
		}
		for i in 255..<512 { exp[i] = exp[i - 255] }
		return (exp, log)
	}

	static func gfMul(_ a: Int, _ b: Int, _ exp: [Int], _ log: [Int]) -> Int {
		if a == 0 || b == 0 { return 0 }
		return exp[log[a] + log[b]]
	}

	/// Generator polynomial coefficients (field values), length degree+1, index 0 = leading (x^degree).
	static func rsGenerator(_ degree: Int, _ exp: [Int], _ log: [Int]) -> [Int] {
		var poly: [Int] = [1]
		for i in 0..<degree {
			let alpha = exp[i]
			var next = [Int](repeating: 0, count: poly.count + 1)
			for j in 0..<poly.count {
				next[j] ^= poly[j]
				next[j + 1] ^= gfMul(poly[j], alpha, exp, log)
			}
			poly = next
		}
		return poly
	}

	static func rsEncode(_ data: [UInt8], _ ecCount: Int, _ exp: [Int], _ log: [Int]) -> [UInt8] {
		let gen = rsGenerator(ecCount, exp, log) // length ecCount+1, gen[0] == 1
		var rem = [Int](repeating: 0, count: ecCount)
		for byte in data {
			let factor = Int(byte) ^ rem[0]
			var i = 0
			while i < ecCount - 1 {
				rem[i] = rem[i + 1]
				i += 1
			}
			rem[ecCount - 1] = 0
			if factor != 0 {
				for k in 0..<ecCount {
					rem[k] ^= gfMul(gen[k + 1], factor, exp, log)
				}
			}
		}
		var out = [UInt8](repeating: 0, count: ecCount)
		for i in 0..<ecCount { out[i] = UInt8(rem[i]) }
		return out
	}

	// MARK: - Bitstream / codeword assembly

	static func buildCodewords(_ data: [UInt8], _ version: Int, _ ecc: ECC) -> [UInt8]? {
		let t = eccTable(version, ecc)
		let totalBlocks = t.b1 + t.b2
		if totalBlocks == 0 { return nil }
		let totalDataCW = t.b1 * t.d1 + t.b2 * t.d2
		let capacityBits = totalDataCW * 8

		var bits: [Bool] = []
		bits.reserveCapacity(capacityBits)

		func appendBits(_ value: Int, _ count: Int) {
			if count <= 0 { return }
			var k = count - 1
			while k >= 0 {
				bits.append(((value >> k) & 1) == 1)
				k -= 1
			}
		}

		// Mode indicator (byte mode = 0100) + character count + payload.
		appendBits(0b0100, 4)
		appendBits(data.count, charCountBits(version))
		for byte in data { appendBits(Int(byte), 8) }
		if bits.count > capacityBits { return nil }

		// Terminator (up to 4 zero bits).
		let termLen = capacityBits - bits.count
		appendBits(0, termLen < 4 ? termLen : 4)

		// Padding bits to extend to a codeword boundary. Matches ISO 18004 /
		// segno: (8 - length % 8) bits are appended, which adds a full zero byte
		// when the stream already ends on a byte boundary.
		appendBits(0, 8 - (bits.count % 8))

		// Pad bytes 0xEC / 0x11 alternating.
		var pad = 0xEC
		while bits.count < capacityBits {
			appendBits(pad, 8)
			pad = (pad == 0xEC) ? 0x11 : 0xEC
		}

		// Pack into data codewords.
		var dataCW = [UInt8](repeating: 0, count: totalDataCW)
		for i in 0..<totalDataCW {
			var b = 0
			for j in 0..<8 {
				b = (b << 1) | (bits[i * 8 + j] ? 1 : 0)
			}
			dataCW[i] = UInt8(b)
		}

		// Split into blocks and compute EC.
		let (exp, log) = gfTables()
		var blocks: [[UInt8]] = []
		var ecBlocks: [[UInt8]] = []
		var idx = 0
		for blk in 0..<totalBlocks {
			let dcount = blk < t.b1 ? t.d1 : t.d2
			var blockData = [UInt8](repeating: 0, count: dcount)
			for j in 0..<dcount {
				blockData[j] = dataCW[idx + j]
			}
			idx += dcount
			blocks.append(blockData)
			ecBlocks.append(rsEncode(blockData, t.ec, exp, log))
		}

		// Interleave data, then EC.
		var result: [UInt8] = []
		result.reserveCapacity(totalDataCW + t.ec * totalBlocks)
		let maxData = t.d1 > t.d2 ? t.d1 : t.d2
		for i in 0..<maxData {
			for b in 0..<totalBlocks {
				if i < blocks[b].count { result.append(blocks[b][i]) }
			}
		}
		for i in 0..<t.ec {
			for b in 0..<totalBlocks {
				result.append(ecBlocks[b][i])
			}
		}
		return result
	}

	// MARK: - Matrix construction

	static func buildMatrix(_ interleaved: [UInt8], _ version: Int, _ ecc: ECC, _ mask: Int, eval: Bool = false) -> [[Bool]] {
		let n = 17 + 4 * version
		var modules = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
		var reserved = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)

		// --- Finder patterns + separators ---
		func placeFinder(_ r0: Int, _ c0: Int) {
			for dr in -1...7 {
				for dc in -1...7 {
					let r = r0 + dr
					let c = c0 + dc
					if r < 0 || r >= n || c < 0 || c >= n { continue }
					var dark = false
					if dr >= 0 && dr <= 6 && dc >= 0 && dc <= 6 {
						let isBorder = dr == 0 || dr == 6 || dc == 0 || dc == 6
						let isCenter = dr >= 2 && dr <= 4 && dc >= 2 && dc <= 4
						dark = isBorder || isCenter
					}
					modules[r][c] = dark
					reserved[r][c] = true
				}
			}
		}
		placeFinder(0, 0)
		placeFinder(0, n - 7)
		placeFinder(n - 7, 0)

		// --- Timing patterns ---
		if n > 16 {
			for i in 8...(n - 9) {
				let dark = (i % 2 == 0)
				if !reserved[6][i] { modules[6][i] = dark; reserved[6][i] = true }
				if !reserved[i][6] { modules[i][6] = dark; reserved[i][6] = true }
			}
		}

		// --- Dark module --- (placed with format info, so absent during evaluation)
		if !eval { modules[n - 8][8] = true }
		reserved[n - 8][8] = true

		// --- Alignment patterns ---
		let positions = alignmentPositions(version)
		let cnt = positions.count
		if cnt > 0 {
			for a in 0..<cnt {
				for b in 0..<cnt {
					if (a == 0 && b == 0) || (a == 0 && b == cnt - 1) || (a == cnt - 1 && b == 0) { continue }
					let cr = positions[a]
					let cc = positions[b]
					for dr in -2...2 {
						for dc in -2...2 {
							let r = cr + dr
							let c = cc + dc
							let cheb = max(dr < 0 ? -dr : dr, dc < 0 ? -dc : dc)
							modules[r][c] = (cheb != 1)
							reserved[r][c] = true
						}
					}
				}
			}
		}

		// --- Version information (v >= 7) ---
		if version >= 7 {
			var rem = version
			for _ in 0..<12 { rem = (rem << 1) ^ ((rem >> 11) * 0x1F25) }
			let vbits = (version << 12) | rem
			for i in 0..<18 {
				let bit = ((vbits >> i) & 1) == 1
				let a = n - 11 + i % 3
				let b = i / 3
				if !eval { modules[b][a] = bit; modules[a][b] = bit }
				reserved[b][a] = true
				reserved[a][b] = true
			}
		}

		// --- Reserve format information areas (filled after masking) ---
		for i in 0...5 { reserved[i][8] = true }
		reserved[7][8] = true
		reserved[8][8] = true
		reserved[8][7] = true
		for i in 9...14 { reserved[8][14 - i] = true }
		for i in 0...7 { reserved[8][n - 1 - i] = true }
		for i in 8...14 { reserved[n - 15 + i][8] = true }

		// --- Place data bits (zigzag, right to left) ---
		var dataBits: [Bool] = []
		dataBits.reserveCapacity(interleaved.count * 8)
		for cw in interleaved {
			let v = Int(cw)
			var k = 7
			while k >= 0 {
				dataBits.append(((v >> k) & 1) == 1)
				k -= 1
			}
		}
		let nbits = dataBits.count
		var bitPos = 0
		var col = n - 1
		while col > 0 {
			if col == 6 { col -= 1 }
			let upward = (((col + 1) & 2) == 0)
			var vert = 0
			while vert < n {
				for j in 0..<2 {
					let c = col - j
					let r = upward ? (n - 1 - vert) : vert
					if !reserved[r][c] {
						var dark = false
						if bitPos < nbits {
							dark = dataBits[bitPos]
							bitPos += 1
						}
						modules[r][c] = dark
					}
				}
				vert += 1
			}
			col -= 2
		}

		// --- Apply mask to data (non-reserved) modules ---
		for r in 0..<n {
			for c in 0..<n {
				if reserved[r][c] { continue }
				var flip = false
				switch mask {
				case 0: flip = (r + c) % 2 == 0
				case 1: flip = r % 2 == 0
				case 2: flip = c % 3 == 0
				case 3: flip = (r + c) % 3 == 0
				case 4: flip = (r / 2 + c / 3) % 2 == 0
				case 5: flip = (r * c) % 2 + (r * c) % 3 == 0
				case 6: flip = ((r * c) % 2 + (r * c) % 3) % 2 == 0
				case 7: flip = ((r + c) % 2 + (r * c) % 3) % 2 == 0
				default: flip = false
				}
				if flip { modules[r][c].toggle() }
			}
		}

		// --- Format information --- (skipped during evaluation: ISO 18004 7.8.3)
		if !eval {
			let eccFmt: Int
			switch ecc {
			case .l: eccFmt = 1
			case .m: eccFmt = 0
			case .q: eccFmt = 3
			case .h: eccFmt = 2
			}
			let dataF = (eccFmt << 3) | mask
			var remF = dataF
			for _ in 0..<10 { remF = (remF << 1) ^ ((remF >> 9) * 0x537) }
			let fbits = ((dataF << 10) | remF) ^ 0x5412
			func fbit(_ i: Int) -> Bool { ((fbits >> i) & 1) == 1 }

			for i in 0...5 { modules[i][8] = fbit(i) }
			modules[7][8] = fbit(6)
			modules[8][8] = fbit(7)
			modules[8][7] = fbit(8)
			for i in 9...14 { modules[8][14 - i] = fbit(i) }
			for i in 0...7 { modules[8][n - 1 - i] = fbit(i) }
			for i in 8...14 { modules[n - 15 + i][8] = fbit(i) }
			modules[n - 8][8] = true
		}

		return modules
	}

	// MARK: - Mask penalty scoring (mirrors the ISO 18004 / segno scoring exactly)

	static func penalty(_ m: [[Bool]]) -> Int {
		let n = m.count
		let N2 = 3, N4 = 10
		var scoreN1 = 0
		var scoreN2 = 0
		var scoreN3 = 0

		// 1:1:3:1:1 pattern detection (dark light dark dark dark light dark)
		// preceded or followed by a 4-module light area, or at the edge.
		let pat: [Bool] = [true, false, true, true, true, false, true]
		func matchAt(_ seq: [Bool], _ i: Int) -> Bool {
			for k in 0..<7 { if seq[i + k] != pat[k] { return false } }
			return true
		}
		func findPattern(_ seq: [Bool], _ start: Int) -> Int {
			var i = start
			let last = n - 7
			while i <= last {
				if matchAt(seq, i) { return i }
				i += 1
			}
			return -1
		}
		func allLight(_ seq: [Bool], _ lo: Int, _ hi: Int) -> Bool {
			var i = lo
			while i < hi {
				if seq[i] { return false }
				i += 1
			}
			return true
		}
		func n3Count(_ seq: [Bool]) -> Int {
			var count = 0
			var idx = findPattern(seq, 0)
			while idx != -1 {
				var offset = idx + 7
				let before = allLight(seq, max(idx - 4, 0), min(idx, n))
				let after = allLight(seq, max(offset, 0), min(offset + 4, n))
				if idx == 0 || idx == n - 7 || before || after {
					count += 40
				} else {
					offset = idx + 4
				}
				idx = findPattern(seq, offset)
			}
			return count
		}

		var dark = 0
		var lastRow: [Bool]? = nil
		for i in 0..<n {
			let row = m[i]
			var col = [Bool](repeating: false, count: n)
			var rowPrev = false
			var colPrev = false
			var firstR = true
			var firstC = true
			var n1Row = 0
			var n1Col = 0
			for j in 0..<n {
				let rb = row[j]
				let cb = m[j][i]
				col[j] = cb
				if rb { dark += 1 }
				// N1 row
				if !firstR && rb == rowPrev {
					n1Row += 1
				} else {
					if n1Row >= 5 { scoreN1 += n1Row - 2 }
					n1Row = 1
				}
				// N1 col
				if !firstC && cb == colPrev {
					n1Col += 1
				} else {
					if n1Col >= 5 { scoreN1 += n1Col - 2 }
					n1Col = 1
				}
				// N2
				if let lr = lastRow, j > 0 && rb == rowPrev && rb == lr[j] && rb == lr[j - 1] {
					scoreN2 += N2
				}
				rowPrev = rb; firstR = false
				colPrev = cb; firstC = false
			}
			if n1Row >= 5 { scoreN1 += n1Row - 2 }
			if n1Col >= 5 { scoreN1 += n1Col - 2 }
			scoreN3 += n3Count(row)
			scoreN3 += n3Count(col)
			lastRow = row
		}

		// N4: proportion of dark modules.
		let total = n * n
		let diff = dark * 100 - 50 * total
		let scoreN4 = N4 * ((diff < 0 ? -diff : diff) / (5 * total))

		return scoreN1 + scoreN2 + scoreN3 + scoreN4
	}
}
