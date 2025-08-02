// // we make a thread to close the web page after 5 seconds because showing a page blocks the thread
// let laterWork: ThreadFunc = { conf in
// // conf is UnsafeMutableRawPointer, so we need to get it to UnsafeMutablePointer<WebCommonConfig> somehow
//   let conf = UnsafeMutablePointer<WebCommonConfig>(OpaquePointer(conf))
//   // Wait for the user to log in and get the code
//   svcSleepThread(5 * 1_000_000_000) // sleep for 5 seconds
//   webConfigRequestExit(conf)
//   print("gm")
//   threadExit()
// }

// var thread: Thread = .init()
// _ = threadCreate(&thread, laterWork, &conf, nil, 0x4000, 0x3B, -2)
// threadStart(&thread)

// _ = webConfigShow(&conf, &reply) // this blocks until the user closes the web page, but other thread will close it after 5 seconds to free this one
// threadWaitForExit(&thread) // just in case, wait for the thread to finish
// threadClose(&thread) // cleanup memory allocs etc

// theres also threadPause and threadResume. now lets make a thread api for swift!

/**
 * @brief Creates a thread.
 * @param t Thread information structure which will be filled in.
 * @param entry Entrypoint of the thread.
 * @param arg Argument to pass to the entrypoint.
 * @param stack_mem Memory to use as backing for stack/tls/reent. Must be page-aligned. NULL argument means to allocate new memory.
 * @param stack_sz  If stack_mem is NULL, size to use for stack. If stack_mem is non-NULL, size to use for stack + reent + tls (must be page-aligned).
 * @param prio Thread priority (0x00~0x3F); 0x2C is the usual priority of the main thread, 0x3B is a special priority on cores 0..2 that enables preemptive multithreading (0x3F on core 3).
 * @param cpuid ID of the core on which to create the thread (0~3); or -2 to use the default core for the current process.
 * @return Result code.
 */
// Result threadCreate(
//     Thread* t, ThreadFunc entry, void* arg, void *stack_mem, size_t stack_sz,
//     int prio, int cpuid);

import libnx

// class SThread {
//   static func current() -> SThread {
//     return .init(ref: threadGetSelf())
//   }

//   var threadRef: UnsafeMutablePointer<Thread>

//   private init(ref: UnsafeMutablePointer<Thread>) {
//     self.threadRef = ref
//   }

//   static func create(
//     _ func: @escaping ThreadFunc,
//     _ arg: UnsafeMutableRawPointer? = nil, // i want to support passing any type and the closure will be that type instead, so we'll need to wrap it
//     _ stackSize: Int = 0x4000,
//     _ priority: ThreadPriority = .normal,
//     _ cpuId: CPUCore = .defaultCore
//   ) -> SThread {
//     var thread = Thread()
//     let result = threadCreate(
//       &thread,
//       `func`,
//       arg,
//       nil, // stack_mem
//       stackSize,
//       priority.rawValue,
//       cpuId.rawValue
//     )
//     return SThread(ref: &thread)
//   }

//   enum ThreadPriority: Int32 {
//     case low = 0x00 // Lowest priority
//     case normal = 0x2C // Normal priority, default for main thread
//     case high = 0x3B // High priority, allows preemptive multithreading on cores 0..2
//     case highest = 0x3F // Highest priority, used on core 3
//   }

//   enum CPUCore: Int32 {
//     case core0 = 0
//     case core1 = 1
//     case core2 = 2
//     case core3 = 3
//     case defaultCore = -2 // use the default core for the current process
//   }
// }