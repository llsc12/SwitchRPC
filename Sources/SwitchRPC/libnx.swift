import libnx

// this file defines some functions and constants that are expected to exist

// key constants

// Sysmodules should not use applet*.
let __nx_applet_type: UInt32 = .init(AppletType_None.rawValue)

// Sysmodules will normally only want to use one FS session.
let __nx_fs_num_sessions: UInt32 = 1;


// Service initialization.
@_cdecl("__appInit")
func __appInit()
{
    var rc: Result = .init();

    // Open a service manager session.
    rc = smInitialize();

    if rc.failed {
      diagAbortWithResult(Result.make(module: Module_Libnx, description: LibnxError_InitFail_SM));
    }
    // Retrieve the current version of Horizon OS.
    rc = setsysInitialize();
    if rc.succeeded {
      var fw: SetSysFirmwareVersion = .init()
        rc = setsysGetFirmwareVersion(&fw);
        if rc.succeeded {
          hosversionSet(MAKEHOSVERSION(fw.major, fw.minor, fw.micro));
        }
        setsysExit();
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
    rc = fsInitialize();
    if rc.failed { 
      diagAbortWithResult(Result.make(module: Module_Libnx, description: LibnxError_InitFail_FS)); 
    }

    // Disable this if you don't want to use the SD card filesystem.
    fsdevMountSdmc();

    // Add other services you want to use here.

    // Close the service manager session.
    smExit();
}

// Service deinitialization.
@_cdecl("__appExit")
func __appExit()
{
    // Close extra services you added to __appInit here.
    fsdevUnmountAll(); // Disable this if you don't want to use the SD card filesystem.
    fsExit(); // Disable this if you don't want to use the filesystem.
    //timeExit(); // Enable this if you want to use time.
    //hidExit(); // Enable this if you want to use HID.
}




// Macro ports

/// Checks whether a result code indicates success.
// #define R_SUCCEEDED(res)   ((res)==0)
extension Result {
  var succeeded: Bool {
    self == 0
  }
}
/// Checks whether a result code indicates failure.
// #define R_FAILED(res)      ((res)!=0)
extension Result {
  var failed: Bool {
    self != 0
  }
}
/// Returns the module ID of a result code.
// #define R_MODULE(res)      ((res)&0x1FF)
extension Result {
  var module: Int {
    return Int(self) & 0x1FF
  }
}
/// Returns the description of a result code.
extension Result {
  var description: Int {
    return (Int(self) >> 9) & 0x1FFF
  }
}
/// Masks out unused bits in a result code, retrieving the actual value for use in comparisons.
// #define R_VALUE(res)       ((res)&0x3FFFFF)
extension Result {
  var value: Int {
    return Int(self) & 0x3FFFFF
  }
}

/// Builds a result code from its constituent components.
// #define MAKERESULT(module,description) \
//     ((((module)&0x1FF)) | ((description)&0x1FFF)<<9)
extension Result {
  static func make(module: Int, description: Int) -> Result {
    return Result((module & 0x1FF) | ((description & 0x1FFF) << 9))
  }
}


/// Builds a HOS version value from its constituent components.
// #define MAKEHOSVERSION(_major,_minor,_micro) (((u32)(_major) << 16) | ((u32)(_minor) << 8) | (u32)(_micro))
func MAKEHOSVERSION(_ major: UInt8, _ minor: UInt8, _ micro: UInt8) -> UInt32 {
    return (UInt32(major) << 16) | (UInt32(minor) << 8) | UInt32(micro)
}
