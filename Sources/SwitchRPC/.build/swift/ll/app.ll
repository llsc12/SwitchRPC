; ModuleID = 'swift/ll/app.ll'
source_filename = "swift/ll/app.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-none-none-elf"

%Ts6UInt32V = type <{ i32 }>
%TSi = type <{ i64 }>
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, ptr }>
%Ts6UInt64V = type <{ i64 }>
%Ts5UInt8V = type <{ i8 }>
%TSo21SetSysFirmwareVersiona = type <{ %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, <{ %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V }>, <{ %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V }>, <{ %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V }>, <{ %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V, %Ts4Int8V }> }>
%Ts4Int8V = type <{ i8 }>
%Ts15ContiguousArrayV = type <{ %Ts22_ContiguousArrayBufferV }>
%Ts22_ContiguousArrayBufferV = type <{ ptr }>
%swift.refcounted = type { ptr, i64 }
%swift.noescape.function = type { ptr, ptr }
%Ts28__ContiguousArrayStorageBaseC = type <{ %swift.refcounted, %Ts10_ArrayBodyV }>
%Ts10_ArrayBodyV = type <{ %TSo22_SwiftArrayBodyStorageV }>
%TSo22_SwiftArrayBodyStorageV = type <{ %TSi, %TSu }>
%TSu = type <{ i64 }>
%TSS5IndexV = type <{ %Ts6UInt64V }>
%Ts21__SharedStringStorageC = type <{ %swift.refcounted, %TyXlSg, %TSP, %Ts13_StringObjectV13CountAndFlagsV, %Ts18_StringBreadcrumbsCSg, %TSb }>
%TyXlSg = type <{ [8 x i8] }>
%TSP = type <{ ptr }>
%Ts13_StringObjectV13CountAndFlagsV = type <{ %Ts6UInt64V }>
%Ts18_StringBreadcrumbsCSg = type <{ [8 x i8] }>
%TSb = type <{ i1 }>
%Ts16_ValidUTF8BufferV5IndexV = type <{ %Ts6UInt32V }>
%Ts15__StringStorageC = type <{ %swift.refcounted, %Ts17_CapacityAndFlags33_A317BBF16F3432B4D1DDED3E0452DA4DLLV, %Ts13_StringObjectV13CountAndFlagsV }>
%Ts17_CapacityAndFlags33_A317BBF16F3432B4D1DDED3E0452DA4DLLV = type <{ %Ts6UInt64V }>
%Ts18_StringBreadcrumbsC = type <{ %swift.refcounted, %TSi, %TSa }>
%TSa = type <{ %Ts22_ContiguousArrayBufferV }>
%TSnySiG = type <{ %TSi, %TSi }>
%TSvSg = type <{ [8 x i8] }>
%Ts10HeapObjectV = type <{ %TSV, %TSi }>
%TSV = type <{ ptr }>
%Ts13ClassMetadataV = type <{ %TSpys13ClassMetadataVGSg, %TSV, %TSVSg }>
%TSpys13ClassMetadataVGSg = type <{ [8 x i8] }>
%TSVSg = type <{ [8 x i8] }>
%struct.EmbeddedHeapObject = type { ptr }
%Ts16IndexingIteratorVys15ContiguousArrayVys4Int8VGG = type <{ %Ts15ContiguousArrayV, %TSi }>
%Ts4Int8VSg = type <{ [1 x i8], [1 x i8] }>

@"$e3app16__nx_applet_types6UInt32Vvp" = hidden global %Ts6UInt32V zeroinitializer, align 4
@"$e3app20__nx_fs_num_sessionss6UInt32Vvp" = hidden constant %Ts6UInt32V <{ i32 1 }>, align 4
@"$es23_swiftEmptyArrayStorageSi_S3itvp" = protected global <{ %TSi, %TSi, %TSi, %TSi }> <{ %TSi zeroinitializer, %TSi <{ i64 -1 }>, %TSi zeroinitializer, %TSi <{ i64 1 }> }>, align 8
@".str.7./gm.txt" = private unnamed_addr constant [8 x i8] c"/gm.txt\00"
@.str.1.w = private unnamed_addr constant [2 x i8] c"w\00"
@.str.6.wagwan = private unnamed_addr constant [7 x i8] c"wagwan\00"
@".str.35.Negative value is not representable" = private unnamed_addr constant [36 x i8] c"Negative value is not representable\00"
@".str.20.Swift/Integers.swift" = private unnamed_addr constant [21 x i8] c"Swift/Integers.swift\00"
@".str.11.Fatal error" = private unnamed_addr constant [12 x i8] c"Fatal error\00"
@".str.45.Not enough bits to represent the passed value" = private unnamed_addr constant [46 x i8] c"Not enough bits to represent the passed value\00"
@".str.27.Swift/EmbeddedRuntime.swift" = private unnamed_addr constant [28 x i8] c"Swift/EmbeddedRuntime.swift\00"
@".str.17.negative refcount" = private unnamed_addr constant [18 x i8] c"negative refcount\00"
@".str.28.non-escaping closure escaped" = private unnamed_addr constant [29 x i8] c"non-escaping closure escaped\00"
@".str.11.failed cast" = private unnamed_addr constant [12 x i8] c"failed cast\00"
@".str.39.Range requires lowerBound <= upperBound" = private unnamed_addr constant [40 x i8] c"Range requires lowerBound <= upperBound\00"
@".str.17.Swift/Range.swift" = private unnamed_addr constant [18 x i8] c"Swift/Range.swift\00"
@".str.18.Index out of range" = private unnamed_addr constant [19 x i8] c"Index out of range\00"
@".str.48.Attempt to copy contents into nil buffer pointer" = private unnamed_addr constant [49 x i8] c"Attempt to copy contents into nil buffer pointer\00"
@".str.27.Swift/ContiguousArray.swift" = private unnamed_addr constant [28 x i8] c"Swift/ContiguousArray.swift\00"
@".str.51.Insufficient space allocated to copy array contents" = private unnamed_addr constant [52 x i8] c"Insufficient space allocated to copy array contents\00"
@".str.46.UnsafeMutableBufferPointer with negative count" = private unnamed_addr constant [47 x i8] c"UnsafeMutableBufferPointer with negative count\00"
@".str.31.Swift/UnsafeBufferPointer.swift" = private unnamed_addr constant [32 x i8] c"Swift/UnsafeBufferPointer.swift\00"
@".str.60.invalid Collection: more than 'count' elements in collection" = private unnamed_addr constant [61 x i8] c"invalid Collection: more than 'count' elements in collection\00"
@".str.33.Swift/ContiguousArrayBuffer.swift" = private unnamed_addr constant [34 x i8] c"Swift/ContiguousArrayBuffer.swift\00"
@".str.60.invalid Collection: less than 'count' elements in collection" = private unnamed_addr constant [61 x i8] c"invalid Collection: less than 'count' elements in collection\00"
@".str.51.UnsafeMutablePointer.initialize with negative count" = private unnamed_addr constant [52 x i8] c"UnsafeMutablePointer.initialize with negative count\00"
@".str.25.Swift/UnsafePointer.swift" = private unnamed_addr constant [26 x i8] c"Swift/UnsafePointer.swift\00"
@".str.49.UnsafeMutablePointer.initialize overlapping range" = private unnamed_addr constant [50 x i8] c"UnsafeMutablePointer.initialize overlapping range\00"
@".str.16.Assertion failed" = private unnamed_addr constant [17 x i8] c"Assertion failed\00"
@.str.0. = private unnamed_addr constant [1 x i8] zeroinitializer
@".str.1.:" = private unnamed_addr constant [2 x i8] c":\00"
@".str.2.: " = private unnamed_addr constant [3 x i8] c": \00"
@".str.47.StaticString should have pointer representation" = private unnamed_addr constant [48 x i8] c"StaticString should have pointer representation\00"
@".str.24.Swift/StaticString.swift" = private unnamed_addr constant [25 x i8] c"Swift/StaticString.swift\00"
@".str.1.\0A" = private unnamed_addr constant [2 x i8] c"\0A\00"
@".str.39.UnsafeBufferPointer with negative count" = private unnamed_addr constant [40 x i8] c"UnsafeBufferPointer with negative count\00"
@".str.34.Swift/UnsafeRawBufferPointer.swift" = private unnamed_addr constant [35 x i8] c"Swift/UnsafeRawBufferPointer.swift\00"
@".str.16.Division by zero" = private unnamed_addr constant [17 x i8] c"Division by zero\00"
@".str.24.Swift/IntegerTypes.swift" = private unnamed_addr constant [25 x i8] c"Swift/IntegerTypes.swift\00"
@".str.69.UnsafeMutableRawBufferPointer.copyMemory source has too many elements" = private unnamed_addr constant [70 x i8] c"UnsafeMutableRawBufferPointer.copyMemory source has too many elements\00"
@".str.54.UnsafeMutableRawPointer.copyMemory with negative count" = private unnamed_addr constant [55 x i8] c"UnsafeMutableRawPointer.copyMemory with negative count\00"
@".str.28.Swift/UnsafeRawPointer.swift" = private unnamed_addr constant [29 x i8] c"Swift/UnsafeRawPointer.swift\00"
@".str.49.UnsafeMutableRawBufferPointer with negative count" = private unnamed_addr constant [50 x i8] c"UnsafeMutableRawBufferPointer with negative count\00"
@".str.63.UnsafeMutableRawBufferPointer has a nil start and nonzero count" = private unnamed_addr constant [64 x i8] c"UnsafeMutableRawBufferPointer has a nil start and nonzero count\00"
@".str.57.Unexpectedly found nil while unwrapping an Optional value" = private unnamed_addr constant [58 x i8] c"Unexpectedly found nil while unwrapping an Optional value\00"
@".str.55.UnsafeMutablePointer.moveInitialize with negative count" = private unnamed_addr constant [56 x i8] c"UnsafeMutablePointer.moveInitialize with negative count\00"
@".str.29.String index is out of bounds" = private unnamed_addr constant [30 x i8] c"String index is out of bounds\00"
@".str.26.Swift/StringUTF8View.swift" = private unnamed_addr constant [27 x i8] c"Swift/StringUTF8View.swift\00"
@".str.26.Swift/UnicodeHelpers.swift" = private unnamed_addr constant [27 x i8] c"Swift/UnicodeHelpers.swift\00"
@".str.52.No foreign strings on Linux in this version of Swift" = private unnamed_addr constant [53 x i8] c"No foreign strings on Linux in this version of Swift\00"
@".str.27.Swift/StringUTF16View.swift" = private unnamed_addr constant [28 x i8] c"Swift/StringUTF16View.swift\00"
@".str.36.Can't construct Array with count < 0" = private unnamed_addr constant [37 x i8] c"Can't construct Array with count < 0\00"
@".str.17.Swift/Array.swift" = private unnamed_addr constant [18 x i8] c"Swift/Array.swift\00"
@".str.46.Internal error: string breadcrumbs not present" = private unnamed_addr constant [47 x i8] c"Internal error: string breadcrumbs not present\00"
@".str.25.Swift/StringStorage.swift" = private unnamed_addr constant [26 x i8] c"Swift/StringStorage.swift\00"
@".str.13.Invalid slice" = private unnamed_addr constant [14 x i8] c"Invalid slice\00"
@".str.53.UnsafeBufferPointer has a nil start and nonzero count" = private unnamed_addr constant [54 x i8] c"UnsafeBufferPointer has a nil start and nonzero count\00"
@".str.42.UnsafeRawBufferPointer with negative count" = private unnamed_addr constant [43 x i8] c"UnsafeRawBufferPointer with negative count\00"
@".str.56.UnsafeRawBufferPointer has a nil start and nonzero count" = private unnamed_addr constant [57 x i8] c"UnsafeRawBufferPointer has a nil start and nonzero count\00"
@".str.27.Swift/ValidUTF8Buffer.swift" = private unnamed_addr constant [28 x i8] c"Swift/ValidUTF8Buffer.swift\00"
@"$es18_StringBreadcrumbsCN" = protected global <{ ptr, ptr, ptr, ptr }> <{ ptr null, ptr @"$es18_StringBreadcrumbsCfD", ptr null, ptr @swift_deletedMethodError }>, align 8
@"$es23_ContiguousArrayStorageCySS5IndexVGN" = protected global <{ ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"$es28__ContiguousArrayStorageBaseCN", ptr @"$es23_ContiguousArrayStorageCfDSS5IndexV_Tg5", ptr null, ptr @"$es28__ContiguousArrayStorageBaseCABycfC", ptr @"$es23_ContiguousArrayStorageC16_doNotCallMeBaseAByxGyt_tcfCSS5IndexV_Tg5", ptr @"$es23_ContiguousArrayStorageC16canStoreElements13ofDynamicTypeSbypXp_tFSS5IndexV_Tg5" }>, align 8
@"$es23_ContiguousArrayStorageCys4Int8VGN" = protected global <{ ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"$es28__ContiguousArrayStorageBaseCN", ptr @"$es23_ContiguousArrayStorageCfDs4Int8V_Tg5", ptr null, ptr @"$es28__ContiguousArrayStorageBaseCABycfC", ptr @"$es23_ContiguousArrayStorageC16_doNotCallMeBaseAByxGyt_tcfCs4Int8V_Tg5", ptr @"$es23_ContiguousArrayStorageC16canStoreElements13ofDynamicTypeSbypXp_tFs4Int8V_Tg5" }>, align 8
@"$es28__ContiguousArrayStorageBaseCN" = protected global <{ ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"$es41__SwiftNativeNSArrayWithContiguousStorageCN", ptr @"$es28__ContiguousArrayStorageBaseCfD", ptr null, ptr @"$es28__ContiguousArrayStorageBaseCABycfC", ptr @"$es28__ContiguousArrayStorageBaseC012_doNotCallMeD0AByt_tcfC", ptr @"$es28__ContiguousArrayStorageBaseC16canStoreElements13ofDynamicTypeSbypXp_tF" }>, align 8
@"$es41__SwiftNativeNSArrayWithContiguousStorageCN" = protected global <{ ptr, ptr, ptr, ptr }> <{ ptr null, ptr @"$es41__SwiftNativeNSArrayWithContiguousStorageCfD", ptr null, ptr @"$es41__SwiftNativeNSArrayWithContiguousStorageCABycfC" }>, align 8
@_swift1_autolink_entries = private constant [0 x i8] zeroinitializer, section ".swift1_autolink_entries", no_sanitize_address, align 8
@llvm.used = appending global [4 x ptr] [ptr @"$e3app16__nx_applet_types6UInt32Vvp", ptr @"$e3app20__nx_fs_num_sessionss6UInt32Vvp", ptr @"$es23_swiftEmptyArrayStorageSi_S3itvp", ptr @_swift1_autolink_entries], section "llvm.metadata"

; Function Attrs: nounwind
define hidden void @main() #0 {
entry:
  call swiftcc void @"$e3app4mainyyF"() #16
  ret void
}

; Function Attrs: nounwind
define protected swiftcc void @"$e3app4mainyyF"() #0 {
entry:
  %file.debug = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %file.debug, i8 0, i64 8, i1 false)
  %file.debug1 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %file.debug1, i8 0, i64 8, i1 false)
  %content.debug = alloca %TSS, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %content.debug, i8 0, i64 16, i1 false)
  %0 = call swiftcc { i64, ptr } @"$eSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(ptr @".str.7./gm.txt", i64 7, i1 true)
  %1 = extractvalue { i64, ptr } %0, 0
  %2 = extractvalue { i64, ptr } %0, 1
  %3 = call swiftcc { i64, ptr } @"$eSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(ptr @.str.1.w, i64 1, i1 true)
  %4 = extractvalue { i64, ptr } %3, 0
  %5 = extractvalue { i64, ptr } %3, 1
  %6 = call swiftcc ptr @"$eSS11utf8CStrings15ContiguousArrayVys4Int8VGvg"(i64 %1, ptr %2)
  %7 = call swiftcc ptr @"$eSaySayxGqd__c7ElementQyd__RszSTRd__lufCs4Int8V_s15ContiguousArrayVyAEGTt0g5"(ptr %6)
  %8 = call ptr @swift_retain(ptr returned %7) #3
  %9 = getelementptr inbounds i8, ptr %7, i64 32
  %10 = ptrtoint ptr %7 to i64
  call void @swift_release(ptr %7) #4
  %11 = ptrtoint ptr %9 to i64
  %12 = call swiftcc ptr @"$eSS11utf8CStrings15ContiguousArrayVys4Int8VGvg"(i64 %4, ptr %5)
  %13 = call swiftcc ptr @"$eSaySayxGqd__c7ElementQyd__RszSTRd__lufCs4Int8V_s15ContiguousArrayVyAEGTt0g5"(ptr %12)
  %14 = call ptr @swift_retain(ptr returned %13) #3
  %15 = getelementptr inbounds i8, ptr %13, i64 32
  %16 = ptrtoint ptr %13 to i64
  call void @swift_release(ptr %13) #4
  %17 = ptrtoint ptr %15 to i64
  %18 = inttoptr i64 %11 to ptr
  %19 = inttoptr i64 %17 to ptr
  %20 = call ptr @fopen(ptr %18, ptr %19)
  %21 = ptrtoint ptr %20 to i64
  %22 = inttoptr i64 %16 to ptr
  call void @swift_release(ptr %22) #4
  %23 = inttoptr i64 %10 to ptr
  call void @swift_release(ptr %23) #4
  call void @swift_bridgeObjectRelease(ptr %5) #4
  call void @swift_bridgeObjectRelease(ptr %2) #4
  store i64 %21, ptr %file.debug, align 8
  %24 = icmp eq i64 %21, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %entry
  %26 = inttoptr i64 %21 to ptr
  br label %28

27:                                               ; preds = %entry
  br label %48

28:                                               ; preds = %25
  %29 = phi ptr [ %26, %25 ]
  store ptr %29, ptr %file.debug1, align 8
  %30 = call swiftcc { i64, ptr } @"$eSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(ptr @.str.6.wagwan, i64 6, i1 true)
  %31 = extractvalue { i64, ptr } %30, 0
  %32 = extractvalue { i64, ptr } %30, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr %content.debug)
  %content.debug._guts = getelementptr inbounds %TSS, ptr %content.debug, i32 0, i32 0
  %content.debug._guts._object = getelementptr inbounds %Ts11_StringGutsV, ptr %content.debug._guts, i32 0, i32 0
  %content.debug._guts._object._countAndFlagsBits = getelementptr inbounds %Ts13_StringObjectV, ptr %content.debug._guts._object, i32 0, i32 0
  %content.debug._guts._object._countAndFlagsBits._value = getelementptr inbounds %Ts6UInt64V, ptr %content.debug._guts._object._countAndFlagsBits, i32 0, i32 0
  store i64 %31, ptr %content.debug._guts._object._countAndFlagsBits._value, align 8
  %content.debug._guts._object._object = getelementptr inbounds %Ts13_StringObjectV, ptr %content.debug._guts._object, i32 0, i32 1
  store ptr %32, ptr %content.debug._guts._object._object, align 8
  %33 = call ptr @swift_bridgeObjectRetain(ptr returned %32) #4
  %34 = ptrtoint ptr %29 to i64
  %35 = call swiftcc ptr @"$eSS11utf8CStrings15ContiguousArrayVys4Int8VGvg"(i64 %31, ptr %32)
  %36 = call swiftcc ptr @"$eSaySayxGqd__c7ElementQyd__RszSTRd__lufCs4Int8V_s15ContiguousArrayVyAEGTt0g5"(ptr %35)
  %37 = call ptr @swift_retain(ptr returned %36) #3
  %38 = getelementptr inbounds i8, ptr %36, i64 32
  %39 = ptrtoint ptr %36 to i64
  call void @swift_release(ptr %36) #4
  %40 = ptrtoint ptr %38 to i64
  %41 = inttoptr i64 %40 to ptr
  %42 = inttoptr i64 %34 to ptr
  %43 = call i32 @fputs(ptr %41, ptr %42)
  %44 = inttoptr i64 %39 to ptr
  call void @swift_release(ptr %44) #4
  call void @swift_bridgeObjectRelease(ptr %32) #4
  %45 = ptrtoint ptr %29 to i64
  %46 = inttoptr i64 %45 to ptr
  %47 = call i32 @fclose(ptr %46)
  call void @swift_bridgeObjectRelease(ptr %32) #4
  br label %48

48:                                               ; preds = %28, %27
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: nounwind
define hidden swiftcc { i64, ptr } @"$eSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(ptr %0, i64 %1, i1 %2) #0 {
entry:
  %bitcast = alloca i64, align 8
  %bitcast1 = alloca i64, align 8
  %bitcast3 = alloca i64, align 8
  %bitcast4 = alloca i64, align 8
  %bitcast5 = alloca ptr, align 8
  %3 = icmp slt i64 %1, 0
  %4 = call i1 @llvm.expect.i1(i1 %3, i1 false)
  br i1 %4, label %164, label %5

5:                                                ; preds = %entry
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %144, label %7

7:                                                ; preds = %5
  %8 = icmp slt i64 15, %1
  br i1 %8, label %130, label %9

9:                                                ; preds = %7
  %10 = icmp slt i64 8, %1
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %15, label %14

13:                                               ; preds = %9
  br label %18

14:                                               ; preds = %11
  br label %18

15:                                               ; preds = %11
  br i1 %10, label %17, label %16

16:                                               ; preds = %15
  br label %113

17:                                               ; preds = %15
  br label %59

18:                                               ; preds = %13, %14
  %19 = phi i64 [ %1, %14 ], [ 8, %13 ]
  %20 = phi i64 [ ptrtoint (ptr @".str.39.Range requires lowerBound <= upperBound" to i64), %14 ], [ ptrtoint (ptr @".str.39.Range requires lowerBound <= upperBound" to i64), %13 ]
  %21 = phi i64 [ 39, %14 ], [ 39, %13 ]
  %22 = phi i8 [ 2, %14 ], [ 2, %13 ]
  %23 = phi i64 [ ptrtoint (ptr @".str.17.Swift/Range.swift" to i64), %14 ], [ ptrtoint (ptr @".str.17.Swift/Range.swift" to i64), %13 ]
  %24 = phi i64 [ 17, %14 ], [ 17, %13 ]
  %25 = phi i8 [ 2, %14 ], [ 2, %13 ]
  %26 = phi i64 [ 760, %14 ], [ 760, %13 ]
  br label %27

27:                                               ; preds = %55, %18
  %28 = phi i64 [ 0, %18 ], [ %50, %55 ]
  %29 = phi i64 [ 0, %18 ], [ %52, %55 ]
  %30 = phi i64 [ 0, %18 ], [ %41, %55 ]
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %128, label %32

32:                                               ; preds = %27
  %33 = icmp slt i64 %30, %19
  %34 = call i1 @llvm.expect.i1(i1 %33, i1 true)
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %129

36:                                               ; preds = %32
  %37 = icmp slt i64 %19, 0
  %38 = call i1 @llvm.expect.i1(i1 %37, i1 false)
  br i1 %38, label %127, label %39

39:                                               ; preds = %36
  %40 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %30, i64 1)
  %41 = extractvalue { i64, i1 } %40, 0
  %42 = extractvalue { i64, i1 } %40, 1
  %43 = call i1 @llvm.expect.i1(i1 %42, i1 false)
  br i1 %43, label %165, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %Ts5UInt8V, ptr %0, i64 %30
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %45, i32 0, i32 0
  %46 = load i8, ptr %._value, align 1
  %47 = zext i8 %46 to i64
  %48 = and i64 %29, 63
  %49 = shl i64 %47, %48
  %50 = or i64 %28, %49
  %51 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %29, i64 8)
  %52 = extractvalue { i64, i1 } %51, 0
  %53 = extractvalue { i64, i1 } %51, 1
  %54 = icmp eq i64 %41, %19
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  br label %27

56:                                               ; preds = %44
  %.lcssa6 = phi i64 [ %50, %44 ]
  br i1 %10, label %58, label %57

57:                                               ; preds = %56
  br label %113

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %17, %58
  %60 = phi i64 [ %.lcssa6, %58 ], [ 0, %17 ]
  %61 = phi i64 [ %20, %58 ], [ ptrtoint (ptr @".str.39.Range requires lowerBound <= upperBound" to i64), %17 ]
  %62 = phi i64 [ %21, %58 ], [ 39, %17 ]
  %63 = phi i8 [ %22, %58 ], [ 2, %17 ]
  %64 = phi i64 [ %23, %58 ], [ ptrtoint (ptr @".str.17.Swift/Range.swift" to i64), %17 ]
  %65 = phi i64 [ %24, %58 ], [ 17, %17 ]
  %66 = phi i8 [ %25, %58 ], [ 2, %17 ]
  %67 = phi i64 [ %26, %58 ], [ 760, %17 ]
  %68 = getelementptr inbounds %Ts5UInt8V, ptr %0, i64 8
  %69 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 8)
  %70 = extractvalue { i64, i1 } %69, 0
  %71 = extractvalue { i64, i1 } %69, 1
  %72 = icmp slt i64 %70, 0
  %73 = call i1 @llvm.expect.i1(i1 %72, i1 false)
  br i1 %73, label %126, label %74

74:                                               ; preds = %59
  %75 = icmp eq i64 %70, 0
  br i1 %75, label %110, label %76

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %105, %76
  %78 = phi i64 [ 0, %76 ], [ %100, %105 ]
  %79 = phi i64 [ 0, %76 ], [ %102, %105 ]
  %80 = phi i64 [ 0, %76 ], [ %91, %105 ]
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %77
  %83 = icmp slt i64 %80, %70
  %84 = call i1 @llvm.expect.i1(i1 %83, i1 true)
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %109

86:                                               ; preds = %82
  %87 = icmp slt i64 %70, 0
  %88 = call i1 @llvm.expect.i1(i1 %87, i1 false)
  br i1 %88, label %107, label %89

89:                                               ; preds = %86
  %90 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %80, i64 1)
  %91 = extractvalue { i64, i1 } %90, 0
  %92 = extractvalue { i64, i1 } %90, 1
  %93 = call i1 @llvm.expect.i1(i1 %92, i1 false)
  br i1 %93, label %166, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %Ts5UInt8V, ptr %68, i64 %80
  %._value2 = getelementptr inbounds %Ts5UInt8V, ptr %95, i32 0, i32 0
  %96 = load i8, ptr %._value2, align 1
  %97 = zext i8 %96 to i64
  %98 = and i64 %79, 63
  %99 = shl i64 %97, %98
  %100 = or i64 %78, %99
  %101 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %79, i64 8)
  %102 = extractvalue { i64, i1 } %101, 0
  %103 = extractvalue { i64, i1 } %101, 1
  %104 = icmp eq i64 %91, %70
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  br label %77

106:                                              ; preds = %94
  %.lcssa = phi i64 [ %100, %94 ]
  br label %111

107:                                              ; preds = %86
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 %61, i64 %62, i8 %63, i64 %64, i64 %65, i8 %66, i64 %67, i32 1)
  unreachable

108:                                              ; preds = %77
  br label %109

109:                                              ; preds = %108, %85
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.18.Index out of range" to i64), i64 18, i8 2, i64 %64, i64 %65, i8 %66, i64 309, i32 1)
  unreachable

110:                                              ; preds = %74
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i64 [ %.lcssa, %106 ], [ 0, %110 ]
  br label %113

113:                                              ; preds = %16, %111, %57
  %114 = phi i64 [ 0, %57 ], [ %112, %111 ], [ 0, %16 ]
  %115 = phi i64 [ %.lcssa6, %57 ], [ %60, %111 ], [ 0, %16 ]
  %116 = or i64 %115, %114
  %117 = and i64 %116, -9187201950435737472
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  br label %121

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %119
  %122 = phi i64 [ -6917529027641081856, %119 ], [ -2305843009213693952, %120 ]
  %123 = shl i64 %1, 56
  %124 = or i64 %122, %123
  %125 = or i64 %114, %124
  br label %150

126:                                              ; preds = %59
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 %61, i64 %62, i8 %63, i64 %64, i64 %65, i8 %66, i64 %67, i32 1)
  unreachable

127:                                              ; preds = %36
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 %20, i64 %21, i8 %22, i64 %23, i64 %24, i8 %25, i64 %26, i32 1)
  unreachable

128:                                              ; preds = %27
  br label %129

129:                                              ; preds = %128, %35
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.18.Index out of range" to i64), i64 18, i8 2, i64 %23, i64 %24, i8 %25, i64 309, i32 1)
  unreachable

130:                                              ; preds = %7
  br i1 %2, label %132, label %131

131:                                              ; preds = %130
  br label %134

132:                                              ; preds = %130
  %133 = or i64 %1, -4611686018427387904
  br label %134

134:                                              ; preds = %132, %131
  %135 = phi i64 [ %1, %131 ], [ %133, %132 ]
  %136 = or i64 %135, 1152921504606846976
  %137 = ptrtoint ptr %0 to i64
  %138 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %137, i64 32)
  %139 = extractvalue { i64, i1 } %138, 0
  %140 = extractvalue { i64, i1 } %138, 1
  %141 = or i64 %139, -9223372036854775808
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast3)
  store i64 %141, ptr %bitcast3, align 8
  %142 = load ptr, ptr %bitcast3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast3)
  %143 = call ptr @swift_bridgeObjectRetain(ptr returned %142) #4
  br label %159

144:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast4)
  store i64 -2305843009213693952, ptr %bitcast4, align 8
  %145 = load ptr, ptr %bitcast4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast4)
  %146 = call ptr @swift_bridgeObjectRetain(ptr returned %145) #4
  %147 = call ptr @swift_bridgeObjectRetain(ptr returned %145) #4
  call void @swift_bridgeObjectRelease(ptr %145) #4
  %148 = call ptr @swift_bridgeObjectRetain(ptr returned %145) #4
  call void @swift_bridgeObjectRelease(ptr %145) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast5)
  store ptr %145, ptr %bitcast5, align 8
  %bitcast5._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast5, i32 0, i32 0
  %149 = load i64, ptr %bitcast5._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast5)
  call void @swift_bridgeObjectRelease(ptr %145) #4
  br label %150

150:                                              ; preds = %144, %121
  %151 = phi i64 [ %115, %121 ], [ 0, %144 ]
  %152 = phi i64 [ %125, %121 ], [ %149, %144 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store i64 0, ptr %bitcast, align 8
  %153 = load ptr, ptr %bitcast, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %154 = call ptr @swift_bridgeObjectRetain(ptr returned %153) #4
  call void @swift_bridgeObjectRelease(ptr %153) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast1)
  store i64 %152, ptr %bitcast1, align 8
  %155 = load ptr, ptr %bitcast1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast1)
  %156 = call ptr @swift_bridgeObjectRetain(ptr returned %155) #4
  %157 = call ptr @swift_bridgeObjectRetain(ptr returned %155) #4
  call void @swift_bridgeObjectRelease(ptr %155) #4
  %158 = call ptr @swift_bridgeObjectRetain(ptr returned %155) #4
  call void @swift_bridgeObjectRelease(ptr %155) #4
  br label %159

159:                                              ; preds = %134, %150
  %160 = phi i64 [ %151, %150 ], [ %136, %134 ]
  %161 = phi ptr [ %155, %150 ], [ %142, %134 ]
  %162 = insertvalue { i64, ptr } undef, i64 %160, 0
  %163 = insertvalue { i64, ptr } %162, ptr %161, 1
  ret { i64, ptr } %163

164:                                              ; preds = %entry
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.39.UnsafeBufferPointer with negative count" to i64), i64 39, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1401, i32 1)
  unreachable

165:                                              ; preds = %39
  call void @llvm.trap()
  unreachable

166:                                              ; preds = %89
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden void @__appInit() #0 {
entry:
  call swiftcc void @"$e3app02__A4InityyF"() #16
  ret void
}

; Function Attrs: nounwind sspreq
define protected swiftcc void @"$e3app02__A4InityyF"() #2 {
entry:
  %rc = alloca %Ts6UInt32V, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %rc, i8 0, i64 4, i1 false)
  %0 = alloca %TSo21SetSysFirmwareVersiona, align 1
  %1 = alloca %TSo21SetSysFirmwareVersiona, align 1
  %fw = alloca %TSo21SetSysFirmwareVersiona, align 1
  call void @llvm.memset.p0.i64(ptr align 1 %fw, i8 0, i64 256, i1 false)
  %2 = alloca %TSo21SetSysFirmwareVersiona, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc)
  %rc._value = getelementptr inbounds %Ts6UInt32V, ptr %rc, i32 0, i32 0
  store i32 0, ptr %rc._value, align 4
  %3 = call i32 @smInitialize()
  %rc._value1 = getelementptr inbounds %Ts6UInt32V, ptr %rc, i32 0, i32 0
  store i32 %3, ptr %rc._value1, align 4
  %4 = call swiftcc i1 @"$es6UInt32V3appE6failedSbvg"(i32 %3)
  br i1 %4, label %5, label %7

5:                                                ; preds = %entry
  %6 = call swiftcc i32 @"$es6UInt32V3appE4make6module11descriptionABSi_SitFZ"(i64 345, i64 30)
  call void @diagAbortWithResult(i32 %6)
  unreachable

7:                                                ; preds = %entry
  %8 = call i32 @setsysInitialize()
  %rc._value2 = getelementptr inbounds %Ts6UInt32V, ptr %rc, i32 0, i32 0
  store i32 %8, ptr %rc._value2, align 4
  %9 = call swiftcc i1 @"$es6UInt32V3appE9succeededSbvg"(i32 %8)
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 256, ptr %0)
  call void @llvm.lifetime.start.p0(i64 256, ptr %1)
  call void @llvm.lifetime.start.p0(i64 256, ptr %fw)
  call void @llvm.lifetime.start.p0(i64 256, ptr %2)
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 256, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %1, i64 256, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(i64 256, ptr %2)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fw, ptr align 1 %0, i64 256, i1 false)
  %11 = ptrtoint ptr %fw to i64
  %12 = inttoptr i64 %11 to ptr
  %13 = call i32 @setsysGetFirmwareVersion(ptr %12)
  %rc._value4 = getelementptr inbounds %Ts6UInt32V, ptr %rc, i32 0, i32 0
  store i32 %13, ptr %rc._value4, align 4
  %14 = call swiftcc i1 @"$es6UInt32V3appE9succeededSbvg"(i32 %13)
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %fw.major = getelementptr inbounds %TSo21SetSysFirmwareVersiona, ptr %fw, i32 0, i32 0
  %fw.major._value = getelementptr inbounds %Ts5UInt8V, ptr %fw.major, i32 0, i32 0
  %16 = load i8, ptr %fw.major._value, align 1
  %fw.minor = getelementptr inbounds %TSo21SetSysFirmwareVersiona, ptr %fw, i32 0, i32 1
  %fw.minor._value = getelementptr inbounds %Ts5UInt8V, ptr %fw.minor, i32 0, i32 0
  %17 = load i8, ptr %fw.minor._value, align 1
  %fw.micro = getelementptr inbounds %TSo21SetSysFirmwareVersiona, ptr %fw, i32 0, i32 2
  %fw.micro._value = getelementptr inbounds %Ts5UInt8V, ptr %fw.micro, i32 0, i32 0
  %18 = load i8, ptr %fw.micro._value, align 1
  %19 = call swiftcc i32 @"$e3app14MAKEHOSVERSIONys6UInt32Vs5UInt8V_A2FtF"(i8 %16, i8 %17, i8 %18)
  call void @hosversionSet(i32 %19)
  br label %21

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %15, %20
  call void @setsysExit()
  call void @llvm.lifetime.end.p0(i64 256, ptr %fw)
  call void @llvm.lifetime.end.p0(i64 256, ptr %1)
  call void @llvm.lifetime.end.p0(i64 256, ptr %0)
  br label %23

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %21, %22
  %24 = call i32 @fsInitialize()
  %rc._value3 = getelementptr inbounds %Ts6UInt32V, ptr %rc, i32 0, i32 0
  store i32 %24, ptr %rc._value3, align 4
  %25 = call swiftcc i1 @"$es6UInt32V3appE6failedSbvg"(i32 %24)
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call swiftcc i32 @"$es6UInt32V3appE4make6module11descriptionABSi_SitFZ"(i64 345, i64 33)
  call void @diagAbortWithResult(i32 %27)
  unreachable

28:                                               ; preds = %23
  %29 = call i32 @fsdevMountSdmc()
  call void @smExit()
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc)
  ret void
}

; Function Attrs: nounwind
define protected swiftcc i1 @"$es6UInt32V3appE6failedSbvg"(i32 %0) #0 {
entry:
  %self.debug = alloca i32, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %self.debug, i8 0, i64 4, i1 false)
  store i32 %0, ptr %self.debug, align 8
  %1 = icmp eq i32 %0, 0
  %2 = xor i1 %1, true
  ret i1 %2
}

; Function Attrs: nounwind
define protected swiftcc i32 @"$es6UInt32V3appE4make6module11descriptionABSi_SitFZ"(i64 %0, i64 %1) #0 {
entry:
  %module.debug = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %module.debug, i8 0, i64 8, i1 false)
  %description.debug = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %description.debug, i8 0, i64 8, i1 false)
  store i64 %0, ptr %module.debug, align 8
  store i64 %1, ptr %description.debug, align 8
  %2 = and i64 %0, 511
  %3 = and i64 %1, 8191
  call void asm sideeffect "nop", ""()
  %4 = shl i64 %3, 9
  %5 = or i64 %2, %4
  %6 = icmp slt i64 %5, 0
  %7 = xor i1 %6, true
  %8 = call i1 @llvm.expect.i1(i1 %7, i1 true)
  br i1 %8, label %10, label %9

9:                                                ; preds = %entry
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.35.Negative value is not representable" to i64), i64 35, i8 2, i64 ptrtoint (ptr @".str.20.Swift/Integers.swift" to i64), i64 20, i8 2, i64 3049, i32 1)
  unreachable

10:                                               ; preds = %entry
  %11 = icmp slt i64 4294967295, %5
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 false)
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  call void asm sideeffect "nop", ""()
  %14 = trunc i64 %5 to i32
  ret i32 %14

15:                                               ; preds = %10
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.45.Not enough bits to represent the passed value" to i64), i64 45, i8 2, i64 ptrtoint (ptr @".str.20.Swift/Integers.swift" to i64), i64 20, i8 2, i64 3053, i32 1)
  unreachable
}

; Function Attrs: nounwind
define protected swiftcc i1 @"$es6UInt32V3appE9succeededSbvg"(i32 %0) #0 {
entry:
  %self.debug = alloca i32, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %self.debug, i8 0, i64 4, i1 false)
  store i32 %0, ptr %self.debug, align 8
  %1 = icmp eq i32 %0, 0
  ret i1 %1
}

; Function Attrs: nounwind
define protected swiftcc i32 @"$e3app14MAKEHOSVERSIONys6UInt32Vs5UInt8V_A2FtF"(i8 %0, i8 %1, i8 %2) #0 {
entry:
  %major.debug = alloca i8, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %major.debug, i8 0, i64 1, i1 false)
  %minor.debug = alloca i8, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %minor.debug, i8 0, i64 1, i1 false)
  %micro.debug = alloca i8, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %micro.debug, i8 0, i64 1, i1 false)
  store i8 %0, ptr %major.debug, align 8
  store i8 %1, ptr %minor.debug, align 8
  store i8 %2, ptr %micro.debug, align 8
  call void asm sideeffect "nop", ""()
  %3 = zext i8 %0 to i64
  %4 = trunc i64 %3 to i32
  call void asm sideeffect "nop", ""()
  %5 = shl i32 %4, 16
  call void asm sideeffect "nop", ""()
  %6 = zext i8 %1 to i64
  %7 = trunc i64 %6 to i32
  call void asm sideeffect "nop", ""()
  %8 = shl i32 %7, 8
  %9 = or i32 %5, %8
  call void asm sideeffect "nop", ""()
  %10 = zext i8 %2 to i64
  %11 = trunc i64 %10 to i32
  %12 = or i32 %9, %11
  ret i32 %12
}

; Function Attrs: nounwind
define hidden void @__appExit() #0 {
entry:
  call swiftcc void @"$e3app02__A4ExityyF"() #16
  ret void
}

; Function Attrs: nounwind
define protected swiftcc void @"$e3app02__A4ExityyF"() #0 {
entry:
  %0 = call i32 @fsdevUnmountAll()
  call void @fsExit()
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$eSS11utf8CStrings15ContiguousArrayVys4Int8VGvg"(i64 %0, ptr %1) #0 {
entry:
  %bitcast = alloca ptr, align 8
  %2 = alloca %Ts15ContiguousArrayV, align 8
  %3 = alloca %Ts15ContiguousArrayV, align 8
  %4 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %5 = alloca %Ts15ContiguousArrayV, align 8
  %6 = alloca ptr, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %1, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %7 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %8 = and i64 %7, 1152921504606846976
  %9 = icmp eq i64 %8, 0
  %10 = call i1 @llvm.expect.i1(i1 %9, i1 true)
  %11 = call i1 @llvm.expect.i1(i1 %10, i1 true)
  br i1 %11, label %14, label %12

12:                                               ; preds = %entry
  %13 = call swiftcc ptr @"$eSS16_slowUTF8CStrings15ContiguousArrayVys4Int8VGyF"(i64 %0, ptr %1)
  br label %77

14:                                               ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %2)
  %spsave = call ptr @llvm.stacksave.p0()
  %15 = alloca i8, i64 32, align 16
  %16 = getelementptr inbounds <{ %swift.refcounted, %swift.noescape.function }>, ptr %15, i32 0, i32 1
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %16, i32 0, i32 0
  store ptr @"$eSS11utf8CStrings15ContiguousArrayVys4Int8VGvgAFSRyAEGXEfU_", ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %16, i32 0, i32 1
  store ptr null, ptr %.data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %3)
  %17 = and i64 %7, 2305843009213693952
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %14
  %20 = and i64 %7, 1080863910568919040
  %21 = lshr i64 %20, 56
  call void @llvm.lifetime.start.p0(i64 16, ptr %4)
  %.elt = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %4, i32 0, i32 0
  %.elt1 = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %4, i32 0, i32 1
  %22 = call i64 @llvm.bswap.i64(i64 255)
  %23 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %22)
  %24 = extractvalue { i64, i1 } %23, 0
  %25 = extractvalue { i64, i1 } %23, 1
  %26 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %24, i64 1)
  %27 = extractvalue { i64, i1 } %26, 0
  %28 = extractvalue { i64, i1 } %26, 1
  %29 = and i64 %7, %27
  %.elt._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt, i32 0, i32 0
  store i64 %0, ptr %.elt._value, align 8
  %.elt1._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt1, i32 0, i32 0
  store i64 %29, ptr %.elt1._value, align 8
  %spsave2 = call ptr @llvm.stacksave.p0()
  %30 = alloca i8, i64 40, align 16
  %31 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %30, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %31, i32 0, i32 0
  store i64 %21, ptr %._value, align 8
  %32 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %30, i32 0, i32 2
  %.fn3 = getelementptr inbounds %swift.noescape.function, ptr %32, i32 0, i32 0
  store ptr @"$es11_StringGutsV13withFastCCharyxxSRys4Int8VGKXEKlFxSRys5UInt8VGKXEfU_s15ContiguousArrayVyAEG_TG5TA", ptr %.fn3, align 8
  %.data4 = getelementptr inbounds %swift.noescape.function, ptr %32, i32 0, i32 1
  store ptr %15, ptr %.data4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %5)
  %33 = ptrtoint ptr %4 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 16
  %35 = ptrtoint ptr %34 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr %6)
  call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_s15ContiguousArrayVys4Int8VG_TG5TA"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %5, i64 %33, i64 %35, ptr swiftself %30, ptr noalias nocapture swifterror dereferenceable(8) %swifterror, ptr %6)
  %36 = load ptr, ptr %swifterror, align 8
  %37 = icmp ne ptr %36, null
  %38 = ptrtoint ptr %36 to i64
  br i1 %37, label %39, label %40

39:                                               ; preds = %19
  store ptr null, ptr %swifterror, align 8
  %toDestroy = load ptr, ptr %6, align 8
  call void @swift_release(ptr %toDestroy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  call void @llvm.stackrestore.p0(ptr %spsave2)
  call void @llvm.lifetime.end.p0(i64 16, ptr %4)
  br label %69

40:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %5, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %41 = load ptr, ptr %._buffer._storage, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  call void @llvm.stackrestore.p0(ptr %spsave2)
  call void @llvm.lifetime.end.p0(i64 16, ptr %4)
  %._buffer5 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %3, i32 0, i32 0
  %._buffer5._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer5, i32 0, i32 0
  store ptr %41, ptr %._buffer5._storage, align 8
  br label %71

42:                                               ; preds = %14
  %43 = and i64 %0, 1152921504606846976
  %44 = icmp eq i64 %43, 0
  %45 = call i1 @llvm.expect.i1(i1 %44, i1 false)
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = and i64 %7, 1152921504606846975
  %48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %47, i64 32)
  %49 = extractvalue { i64, i1 } %48, 0
  %50 = extractvalue { i64, i1 } %48, 1
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = inttoptr i64 %49 to ptr
  %54 = ptrtoint ptr %53 to i64
  %55 = and i64 %0, 281474976710655
  br label %61

56:                                               ; preds = %46
  unreachable

57:                                               ; preds = %42
  %58 = call swiftcc { i64, i64 } @"$es13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %0, ptr %1)
  %59 = extractvalue { i64, i64 } %58, 0
  %60 = extractvalue { i64, i64 } %58, 1
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %54, %52 ], [ %59, %57 ]
  %63 = phi i64 [ %55, %52 ], [ %60, %57 ]
  call swiftcc void @"$es11_StringGutsV13withFastCCharyxxSRys4Int8VGKXEKlFxSRys5UInt8VGKXEfU_s15ContiguousArrayVyAEG_TG5TA"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %3, i64 %62, i64 %63, ptr swiftself %15, ptr noalias nocapture swifterror dereferenceable(8) %swifterror)
  %64 = load ptr, ptr %swifterror, align 8
  %65 = icmp ne ptr %64, null
  %66 = ptrtoint ptr %64 to i64
  br i1 %65, label %67, label %70

67:                                               ; preds = %61
  %68 = phi ptr [ %64, %61 ]
  store ptr null, ptr %swifterror, align 8
  call void @swift_release(ptr %68) #4
  br label %69

69:                                               ; preds = %67, %39
  unreachable

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %40
  %._buffer6 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %3, i32 0, i32 0
  %._buffer6._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer6, i32 0, i32 0
  %72 = load ptr, ptr %._buffer6._storage, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %3)
  call void @llvm.stackrestore.p0(ptr %spsave)
  %._buffer7 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %2, i32 0, i32 0
  %._buffer7._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer7, i32 0, i32 0
  store ptr %72, ptr %._buffer7._storage, align 8
  call swiftcc void @"$es15ContiguousArrayV034_makeUniqueAndReserveCapacityIfNotD0yyFs4Int8V_Tg5"(ptr nocapture swiftself dereferenceable(8) %2)
  %._buffer8 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %2, i32 0, i32 0
  %._buffer8._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer8, i32 0, i32 0
  %73 = load ptr, ptr %._buffer8._storage, align 8
  %74 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %73, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %74, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  %75 = load i64, ptr %._storage.count._value, align 8, !range !6
  call swiftcc void @"$es15ContiguousArrayV36_reserveCapacityAssumingUniqueBuffer8oldCountySi_tFs4Int8V_Tg5"(i64 %75, ptr nocapture swiftself dereferenceable(8) %2)
  call swiftcc void @"$es15ContiguousArrayV37_appendElementAssumeUniqueAndCapacity_03newD0ySi_xntFs4Int8V_Tg5"(i64 %75, i8 0, ptr nocapture swiftself dereferenceable(8) %2)
  call swiftcc void @"$es15ContiguousArrayV12_endMutationyyFs4Int8V_Tg5"(ptr nocapture swiftself dereferenceable(8) %2)
  %._buffer9 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %2, i32 0, i32 0
  %._buffer9._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer9, i32 0, i32 0
  %76 = load ptr, ptr %._buffer9._storage, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %2)
  br label %77

77:                                               ; preds = %71, %12
  %78 = phi ptr [ %13, %12 ], [ %76, %71 ]
  ret ptr %78
}

; Function Attrs: nounwind
define protected swiftcc ptr @"$eSaySayxGqd__c7ElementQyd__RszSTRd__lufCs4Int8V_s15ContiguousArrayVyAEGTt0g5"(ptr %0) #0 {
entry:
  %1 = call swiftcc ptr @"$es15ContiguousArrayV07_copyToaB0AByxGyFs4Int8V_Tg5"(ptr %0)
  ret ptr %1
}

; Function Attrs: nounwind willreturn
define protected ptr @swift_retain(ptr returned %0) #3 {
entry:
  %1 = call swiftcc ptr @"$es12swift_retain6objectBpBp_tF"(ptr %0) #16
  ret ptr %1
}

; Function Attrs: nounwind
define protected void @swift_release(ptr %0) #4 {
entry:
  call swiftcc void @"$es13swift_release6objectyBp_tF"(ptr %0) #16
  ret void
}

declare ptr @fopen(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
define protected void @swift_bridgeObjectRelease(ptr %0) #4 {
entry:
  call swiftcc void @"$es25swift_bridgeObjectRelease6objectyBp_tF"(ptr %0) #16
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind
define protected ptr @swift_bridgeObjectRetain(ptr returned %0) #4 {
entry:
  %1 = call swiftcc ptr @"$es24swift_bridgeObjectRetain6objectBpBp_tF"(ptr %0) #16
  ret ptr %1
}

declare i32 @fputs(ptr noundef, ptr noundef) #5

declare i32 @fclose(ptr noundef) #5

declare i32 @smInitialize() #5

declare i32 @setsysInitialize() #5

declare i32 @fsInitialize() #5

declare i32 @fsdevMountSdmc() #5

declare void @smExit() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: noreturn
declare void @diagAbortWithResult(i32 noundef) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare i32 @setsysGetFirmwareVersion(ptr noundef) #5

declare void @setsysExit() #5

declare void @hosversionSet(i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #10

; Function Attrs: noinline nounwind
define hidden swiftcc ptr @"$eSS16_slowUTF8CStrings15ContiguousArrayVys4Int8VGyF"(i64 %0, ptr %1) #11 {
entry:
  %2 = alloca %Ts15ContiguousArrayV, align 8
  %bitcast = alloca ptr, align 8
  %bitcast1 = alloca ptr, align 8
  %bitcast2 = alloca ptr, align 8
  %bitcast3 = alloca ptr, align 8
  %3 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %4 = alloca %Ts5UInt8V, align 1
  %5 = alloca ptr, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %2)
  %6 = call swiftcc ptr @"$es15ContiguousArrayVAByxGycfCs4Int8V_Ttg5"()
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %2, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  store ptr %6, ptr %._buffer._storage, align 8
  %7 = call ptr @swift_bridgeObjectRetain(ptr returned %1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %1, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %8 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %9 = and i64 %8, 2305843009213693952
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %entry
  %12 = and i64 %8, 1080863910568919040
  %13 = lshr i64 %12, 56
  br label %16

14:                                               ; preds = %entry
  %15 = and i64 %0, 281474976710655
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i64 [ %13, %11 ], [ %15, %14 ]
  %18 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 1)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  %21 = call i1 @llvm.expect.i1(i1 %20, i1 false)
  br i1 %21, label %217, label %22

22:                                               ; preds = %16
  call swiftcc void @"$es15ContiguousArrayV15reserveCapacityyySiFs4Int8V_Tg5"(i64 %19, ptr nocapture swiftself dereferenceable(8) %2)
  %23 = call ptr @swift_bridgeObjectRetain(ptr returned %1) #4
  call void @swift_bridgeObjectRelease(ptr %1) #4
  br label %24

24:                                               ; preds = %207, %22
  %25 = phi i64 [ 15, %22 ], [ %208, %207 ]
  %26 = call ptr @swift_bridgeObjectRetain(ptr returned %1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast1)
  store ptr %1, ptr %bitcast1, align 8
  %bitcast1._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast1, i32 0, i32 0
  %27 = load i64, ptr %bitcast1._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast1)
  %28 = and i64 %27, 2305843009213693952
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = and i64 %27, 1080863910568919040
  %32 = lshr i64 %31, 56
  br label %35

33:                                               ; preds = %24
  %34 = and i64 %0, 281474976710655
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i64 [ %32, %30 ], [ %34, %33 ]
  %37 = shl i64 %36, 16
  %38 = and i64 %27, 1152921504606846976
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  call void @swift_bridgeObjectRelease(ptr %1) #4
  %41 = and i64 %0, 576460752303423488
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %40
  %45 = or i64 %37, 11
  br label %49

46:                                               ; preds = %35
  call void @swift_bridgeObjectRelease(ptr %1) #4
  br label %47

47:                                               ; preds = %46, %43
  %48 = or i64 %37, 7
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi i64 [ %48, %47 ], [ %45, %44 ]
  %51 = lshr i64 %25, 14
  %52 = lshr i64 %50, 14
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %212, label %54

54:                                               ; preds = %49
  %55 = call ptr @swift_bridgeObjectRetain(ptr returned %1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast2)
  store ptr %1, ptr %bitcast2, align 8
  %bitcast2._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast2, i32 0, i32 0
  %56 = load i64, ptr %bitcast2._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast2)
  %57 = and i64 %56, 1152921504606846976
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = and i64 %0, 576460752303423488
  %61 = icmp eq i64 %60, 0
  %62 = xor i1 %61, true
  br label %64

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i1 [ %62, %59 ], [ true, %63 ]
  %66 = and i64 %25, 12
  %67 = zext i1 %65 to i8
  %68 = sext i8 %67 to i64
  %69 = and i64 %68, 63
  %70 = shl i64 4, %69
  %71 = icmp eq i64 %66, %70
  %72 = call i1 @llvm.expect.i1(i1 %71, i1 false)
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %76

74:                                               ; preds = %64
  %75 = call swiftcc i64 @"$es11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %25, i64 %0, ptr %1)
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i64 [ %25, %73 ], [ %75, %74 ]
  %78 = lshr i64 %77, 16
  %79 = and i64 %56, 2305843009213693952
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = and i64 %56, 1080863910568919040
  %83 = lshr i64 %82, 56
  br label %86

84:                                               ; preds = %76
  %85 = and i64 %0, 281474976710655
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i64 [ %83, %81 ], [ %85, %84 ]
  %88 = icmp slt i64 %78, %87
  %89 = call i1 @llvm.expect.i1(i1 %88, i1 true)
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.26.Swift/StringUTF8View.swift" to i64), i64 26, i8 2, i64 228)
  call void @llvm.trap()
  unreachable

91:                                               ; preds = %86
  %92 = call i1 @llvm.expect.i1(i1 %58, i1 true)
  %93 = call i1 @llvm.expect.i1(i1 %92, i1 true)
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call swiftcc i8 @"$eSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %77, i64 %0, ptr %1)
  call void @swift_bridgeObjectRelease(ptr %1) #4
  br label %156

96:                                               ; preds = %91
  %spsave = call ptr @llvm.stacksave.p0()
  %97 = alloca i8, i64 24, align 16
  %98 = getelementptr inbounds <{ %swift.refcounted, %TSS5IndexV }>, ptr %97, i32 0, i32 1
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %98, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  store i64 %77, ptr %._rawBits._value, align 8
  %99 = and i64 %56, 2305843009213693952
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %124, label %101

101:                                              ; preds = %96
  %102 = and i64 %56, 1080863910568919040
  %103 = lshr i64 %102, 56
  call void @llvm.lifetime.start.p0(i64 16, ptr %3)
  %.elt = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %3, i32 0, i32 0
  %.elt5 = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %3, i32 0, i32 1
  %104 = call i64 @llvm.bswap.i64(i64 255)
  %105 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %104)
  %106 = extractvalue { i64, i1 } %105, 0
  %107 = extractvalue { i64, i1 } %105, 1
  %108 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %106, i64 1)
  %109 = extractvalue { i64, i1 } %108, 0
  %110 = extractvalue { i64, i1 } %108, 1
  %111 = and i64 %56, %109
  %.elt._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt, i32 0, i32 0
  store i64 %0, ptr %.elt._value, align 8
  %.elt5._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt5, i32 0, i32 0
  store i64 %111, ptr %.elt5._value, align 8
  %spsave6 = call ptr @llvm.stacksave.p0()
  %112 = alloca i8, i64 40, align 16
  %113 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %112, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %113, i32 0, i32 0
  store i64 %103, ptr %._value, align 8
  %114 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %112, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %114, i32 0, i32 0
  store ptr @"$eSS8UTF8ViewV10_uncheckeds5UInt8VSS5IndexV_tcigAESRyAEGXEfU_TA", ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %114, i32 0, i32 1
  store ptr %97, ptr %.data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %4)
  %115 = ptrtoint ptr %3 to i64
  %116 = getelementptr inbounds i8, ptr %3, i64 16
  %117 = ptrtoint ptr %116 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr %5)
  call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5TA"(ptr noalias nocapture sret(%Ts5UInt8V) %4, i64 %115, i64 %117, ptr swiftself %112, ptr noalias nocapture swifterror dereferenceable(8) %swifterror, ptr %5)
  %118 = load ptr, ptr %swifterror, align 8
  %119 = icmp ne ptr %118, null
  %120 = ptrtoint ptr %118 to i64
  br i1 %119, label %121, label %122

121:                                              ; preds = %101
  %spsave6.lcssa = phi ptr [ %spsave6, %101 ]
  store ptr null, ptr %swifterror, align 8
  %toDestroy = load ptr, ptr %5, align 8
  call void @swift_release(ptr %toDestroy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr %4)
  call void @llvm.stackrestore.p0(ptr %spsave6.lcssa)
  call void @llvm.lifetime.end.p0(i64 16, ptr %3)
  unreachable

122:                                              ; preds = %101
  call void @swift_bridgeObjectRelease(ptr %1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  %._value7 = getelementptr inbounds %Ts5UInt8V, ptr %4, i32 0, i32 0
  %123 = load i8, ptr %._value7, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %4)
  call void @llvm.stackrestore.p0(ptr %spsave6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %3)
  call void @llvm.stackrestore.p0(ptr %spsave)
  br label %156

124:                                              ; preds = %96
  %125 = and i64 %0, 1152921504606846976
  %126 = icmp eq i64 %125, 0
  %127 = call i1 @llvm.expect.i1(i1 %126, i1 false)
  br i1 %127, label %139, label %128

128:                                              ; preds = %124
  %129 = and i64 %56, 1152921504606846975
  %130 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %129, i64 32)
  %131 = extractvalue { i64, i1 } %130, 0
  %132 = extractvalue { i64, i1 } %130, 1
  %133 = icmp eq i64 %131, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = inttoptr i64 %131 to ptr
  %136 = ptrtoint ptr %135 to i64
  %137 = lshr i64 %77, 16
  br label %150

138:                                              ; preds = %128
  unreachable

139:                                              ; preds = %124
  %140 = call swiftcc { i64, i64 } @"$es13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %0, ptr %1)
  %141 = extractvalue { i64, i64 } %140, 0
  %142 = extractvalue { i64, i64 } %140, 1
  %143 = lshr i64 %77, 16
  %144 = icmp eq i64 %141, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %139
  %146 = inttoptr i64 %141 to ptr
  br label %148

147:                                              ; preds = %139
  unreachable

148:                                              ; preds = %145
  %149 = phi ptr [ %146, %145 ]
  br label %150

150:                                              ; preds = %148, %134
  %151 = phi i64 [ %136, %134 ], [ %141, %148 ]
  %152 = phi i64 [ %137, %134 ], [ %143, %148 ]
  %153 = inttoptr i64 %151 to ptr
  %154 = getelementptr inbounds %Ts5UInt8V, ptr %153, i64 %152
  %._value8 = getelementptr inbounds %Ts5UInt8V, ptr %154, i32 0, i32 0
  %155 = load i8, ptr %._value8, align 1
  call void @llvm.stackrestore.p0(ptr %spsave)
  call void @swift_bridgeObjectRelease(ptr %1) #4
  br label %156

156:                                              ; preds = %150, %122, %94
  %157 = phi i8 [ %95, %94 ], [ %123, %122 ], [ %155, %150 ]
  %158 = call ptr @swift_bridgeObjectRetain(ptr returned %1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast3)
  store ptr %1, ptr %bitcast3, align 8
  %bitcast3._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast3, i32 0, i32 0
  %159 = load i64, ptr %bitcast3._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast3)
  %160 = and i64 %159, 1152921504606846976
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = and i64 %0, 576460752303423488
  %164 = icmp eq i64 %163, 0
  %165 = xor i1 %164, true
  br label %167

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %162
  %168 = phi i1 [ %165, %162 ], [ true, %166 ]
  %169 = zext i1 %168 to i8
  %170 = sext i8 %169 to i64
  %171 = and i64 %170, 63
  %172 = shl i64 4, %171
  %173 = icmp eq i64 %66, %172
  %174 = call i1 @llvm.expect.i1(i1 %173, i1 false)
  br i1 %174, label %176, label %175

175:                                              ; preds = %167
  br label %178

176:                                              ; preds = %167
  %177 = call swiftcc i64 @"$es11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %25, i64 %0, ptr %1)
  br label %178

178:                                              ; preds = %176, %175
  %179 = phi i64 [ %25, %175 ], [ %177, %176 ]
  %180 = call i1 @llvm.expect.i1(i1 %161, i1 true)
  %181 = call i1 @llvm.expect.i1(i1 %180, i1 true)
  br i1 %181, label %198, label %182

182:                                              ; preds = %178
  %183 = lshr i64 %179, 16
  %184 = and i64 %159, 2305843009213693952
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %182
  %187 = and i64 %159, 1080863910568919040
  %188 = lshr i64 %187, 56
  br label %191

189:                                              ; preds = %182
  %190 = and i64 %0, 281474976710655
  br label %191

191:                                              ; preds = %189, %186
  %192 = phi i64 [ %188, %186 ], [ %190, %189 ]
  %193 = icmp slt i64 %183, %192
  %194 = call i1 @llvm.expect.i1(i1 %193, i1 true)
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.26.Swift/StringUTF8View.swift" to i64), i64 26, i8 2, i64 144)
  call void @llvm.trap()
  unreachable

196:                                              ; preds = %191
  %197 = call swiftcc i64 @"$eSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %179, i64 %0, ptr %1)
  call void @swift_bridgeObjectRelease(ptr %1) #4
  br label %207

198:                                              ; preds = %178
  call void @swift_bridgeObjectRelease(ptr %1) #4
  %199 = lshr i64 %179, 16
  %200 = shl i64 %199, 16
  %201 = lshr i64 %200, 16
  %202 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %201, i64 1)
  %203 = extractvalue { i64, i1 } %202, 0
  %204 = extractvalue { i64, i1 } %202, 1
  %205 = shl i64 %203, 16
  %206 = or i64 %205, 4
  br label %207

207:                                              ; preds = %198, %196
  %208 = phi i64 [ %197, %196 ], [ %206, %198 ]
  call swiftcc void @"$es15ContiguousArrayV034_makeUniqueAndReserveCapacityIfNotD0yyFs4Int8V_Tg5"(ptr nocapture swiftself dereferenceable(8) %2)
  %._buffer4 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %2, i32 0, i32 0
  %._buffer4._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer4, i32 0, i32 0
  %209 = load ptr, ptr %._buffer4._storage, align 8
  %210 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %209, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %210, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  %211 = load i64, ptr %._storage.count._value, align 8, !range !6
  call swiftcc void @"$es15ContiguousArrayV36_reserveCapacityAssumingUniqueBuffer8oldCountySi_tFs4Int8V_Tg5"(i64 %211, ptr nocapture swiftself dereferenceable(8) %2)
  call swiftcc void @"$es15ContiguousArrayV37_appendElementAssumeUniqueAndCapacity_03newD0ySi_xntFs4Int8V_Tg5"(i64 %211, i8 %157, ptr nocapture swiftself dereferenceable(8) %2)
  call swiftcc void @"$es15ContiguousArrayV12_endMutationyyFs4Int8V_Tg5"(ptr nocapture swiftself dereferenceable(8) %2)
  br label %24

212:                                              ; preds = %49
  call void @swift_bridgeObjectRelease(ptr %1) #4
  call swiftcc void @"$es15ContiguousArrayV034_makeUniqueAndReserveCapacityIfNotD0yyFs4Int8V_Tg5"(ptr nocapture swiftself dereferenceable(8) %2)
  %._buffer9 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %2, i32 0, i32 0
  %._buffer9._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer9, i32 0, i32 0
  %213 = load ptr, ptr %._buffer9._storage, align 8
  %214 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %213, i32 0, i32 1
  %._storage10 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %214, i32 0, i32 0
  %._storage10.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage10, i32 0, i32 0
  %._storage10.count._value = getelementptr inbounds %TSi, ptr %._storage10.count, i32 0, i32 0
  %215 = load i64, ptr %._storage10.count._value, align 8, !range !6
  call swiftcc void @"$es15ContiguousArrayV36_reserveCapacityAssumingUniqueBuffer8oldCountySi_tFs4Int8V_Tg5"(i64 %215, ptr nocapture swiftself dereferenceable(8) %2)
  call swiftcc void @"$es15ContiguousArrayV37_appendElementAssumeUniqueAndCapacity_03newD0ySi_xntFs4Int8V_Tg5"(i64 %215, i8 0, ptr nocapture swiftself dereferenceable(8) %2)
  call swiftcc void @"$es15ContiguousArrayV12_endMutationyyFs4Int8V_Tg5"(ptr nocapture swiftself dereferenceable(8) %2)
  %._buffer11 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %2, i32 0, i32 0
  %._buffer11._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer11, i32 0, i32 0
  %216 = load ptr, ptr %._buffer11._storage, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %2)
  ret ptr %216

217:                                              ; preds = %16
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSS11utf8CStrings15ContiguousArrayVys4Int8VGvgAFSRyAEGXEfU_"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = call swiftcc ptr @"$es32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSRys4Int8VG_Tg5"(i64 %1, i64 %2)
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  store ptr %5, ptr %._buffer._storage, align 8
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es11_StringGutsV13withFastCCharyxxSRys4Int8VGKXEKlFxSRys5UInt8VGKXEfU_s15ContiguousArrayVyAEG_TG5"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, ptr %3, ptr %4, ptr swiftself %5, ptr noalias nocapture swifterror dereferenceable(8) %6) #0 {
entry:
  %7 = alloca %Ts15ContiguousArrayV, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, i64 32, align 16
  %11 = getelementptr inbounds <{ %swift.refcounted, %swift.noescape.function }>, ptr %10, i32 0, i32 1
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %11, i32 0, i32 0
  store ptr %3, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %11, i32 0, i32 1
  store ptr %4, ptr %.data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %7)
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %entry
  %14 = inttoptr i64 %1 to ptr
  br label %22

15:                                               ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %8)
  call swiftcc void @"$eSRys4Int8VGxs5Error_pIgyrzo_ACxsAD_pIegyrzr_lTRs15ContiguousArrayVyABG_TG5TA"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %7, i64 0, i64 0, ptr swiftself %10, ptr noalias nocapture swifterror dereferenceable(8) %6, ptr %8) #16
  %16 = load ptr, ptr %6, align 8
  %17 = icmp ne ptr %16, null
  %18 = ptrtoint ptr %16 to i64
  br i1 %17, label %19, label %21

19:                                               ; preds = %15
  store ptr null, ptr %6, align 8
  %20 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8)
  br label %33

21:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 8, ptr %8)
  br label %36

22:                                               ; preds = %13
  %23 = phi ptr [ %14, %13 ]
  %24 = ptrtoint ptr %23 to i64
  %25 = icmp slt i64 %2, 0
  %26 = call i1 @llvm.expect.i1(i1 %25, i1 false)
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr %9)
  call swiftcc void @"$eSRys4Int8VGxs5Error_pIgyrzo_ACxsAD_pIegyrzr_lTRs15ContiguousArrayVyABG_TG5TA"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %7, i64 %24, i64 %2, ptr swiftself %10, ptr noalias nocapture swifterror dereferenceable(8) %6, ptr %9) #16
  %28 = load ptr, ptr %6, align 8
  %29 = icmp ne ptr %28, null
  %30 = ptrtoint ptr %28 to i64
  br i1 %29, label %31, label %35

31:                                               ; preds = %27
  store ptr null, ptr %6, align 8
  %32 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  br label %33

33:                                               ; preds = %31, %19
  %34 = phi ptr [ %20, %19 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %7)
  store ptr %34, ptr %6, align 8
  ret void

35:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  br label %36

36:                                               ; preds = %35, %21
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %7, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %37 = load ptr, ptr %._buffer._storage, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7)
  %._buffer1 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  store ptr %37, ptr %._buffer1._storage, align 8
  ret void

38:                                               ; preds = %22
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.39.UnsafeBufferPointer with negative count" to i64), i64 39, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1401) #16
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_s15ContiguousArrayVys4Int8VG_TG5"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, i64 %3, ptr %4, ptr %5, ptr swiftself %6, ptr noalias nocapture swifterror dereferenceable(8) %7, ptr %8) #0 {
entry:
  %9 = alloca %Ts15ContiguousArrayV, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %9)
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %entry
  %12 = inttoptr i64 %1 to ptr
  br label %14

13:                                               ; preds = %entry
  unreachable

14:                                               ; preds = %11
  %15 = phi ptr [ %12, %11 ]
  %16 = inttoptr i64 %1 to ptr
  %17 = ptrtoint ptr %16 to i64
  call swiftcc void %4(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %9, i64 %17, i64 %3, ptr swiftself %5, ptr noalias nocapture swifterror dereferenceable(8) %7) #16
  %18 = load ptr, ptr %7, align 8
  %19 = icmp ne ptr %18, null
  %20 = ptrtoint ptr %18 to i64
  br i1 %19, label %21, label %23

21:                                               ; preds = %14
  %22 = phi ptr [ %18, %14 ]
  store ptr null, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  store ptr %22, ptr %8, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8
  ret void

23:                                               ; preds = %14
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %9, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %24 = load ptr, ptr %._buffer._storage, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  %._buffer1 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  store ptr %24, ptr %._buffer1._storage, align 8
  ret void
}

; Function Attrs: noinline nounwind
define hidden swiftcc { i64, i64 } @"$es13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %0, ptr %1) #11 {
entry:
  %2 = call swiftcc ptr @"$es13_StringObjectV18getSharedUTF8StartSPys5UInt8VGyF"(i64 %0, ptr %1)
  %3 = ptrtoint ptr %2 to i64
  %4 = and i64 %0, 281474976710655
  %5 = icmp slt i64 %4, 0
  %6 = call i1 @llvm.expect.i1(i1 %5, i1 false)
  br i1 %6, label %10, label %7

7:                                                ; preds = %entry
  %8 = insertvalue { i64, i64 } undef, i64 %3, 0
  %9 = insertvalue { i64, i64 } %8, i64 %4, 1
  ret { i64, i64 } %9

10:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.39.UnsafeBufferPointer with negative count" to i64), i64 39, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1401)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es15ContiguousArrayV034_makeUniqueAndReserveCapacityIfNotD0yyFs4Int8V_Tg5"(ptr nocapture swiftself dereferenceable(8) %0) #0 {
entry:
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %1 = load ptr, ptr %._buffer._storage, align 8
  %2 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %1) #3
  %._buffer1 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  store ptr %1, ptr %._buffer1._storage, align 8
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %._buffer2 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer2._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer2, i32 0, i32 0
  %4 = load ptr, ptr %._buffer2._storage, align 8
  %5 = call swiftcc i64 @"$es15ContiguousArrayV9_getCountSiyFs4Int8V_Tg5"(ptr %4)
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %5, i64 1)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  call swiftcc void @"$es15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFs4Int8V_Tg5"(i1 false, i64 %7, i1 true, ptr nocapture swiftself dereferenceable(8) %0)
  br label %10

9:                                                ; preds = %entry
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es15ContiguousArrayV36_reserveCapacityAssumingUniqueBuffer8oldCountySi_tFs4Int8V_Tg5"(i64 %0, ptr nocapture swiftself dereferenceable(8) %1) #0 {
entry:
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %1, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %2 = load ptr, ptr %._buffer._storage, align 8
  %3 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %2, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %3, i32 0, i32 0
  %._storage._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 1
  %._storage._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage._capacityAndFlags, i32 0, i32 0
  %4 = load i64, ptr %._storage._capacityAndFlags._value, align 8
  %5 = lshr i64 %4, 1
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 1)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  %9 = icmp slt i64 %5, %7
  %10 = call i1 @llvm.expect.i1(i1 %9, i1 false)
  br i1 %10, label %12, label %11

11:                                               ; preds = %entry
  br label %14

12:                                               ; preds = %entry
  %13 = icmp slt i64 0, %5
  call swiftcc void @"$es15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFs4Int8V_Tg5"(i1 %13, i64 %7, i1 true, ptr nocapture swiftself dereferenceable(8) %1)
  br label %14

14:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es15ContiguousArrayV37_appendElementAssumeUniqueAndCapacity_03newD0ySi_xntFs4Int8V_Tg5"(i64 %0, i8 %1, ptr nocapture swiftself dereferenceable(8) %2) #0 {
entry:
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %2, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %3 = load ptr, ptr %._buffer._storage, align 8
  %4 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 1)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %3, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %7, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  store i64 %5, ptr %._storage.count._value, align 8
  %._buffer._storage1 = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %8 = load ptr, ptr %._buffer._storage1, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 32
  %10 = getelementptr inbounds %Ts4Int8V, ptr %9, i64 %0
  %._value = getelementptr inbounds %Ts4Int8V, ptr %10, i32 0, i32 0
  store i8 %1, ptr %._value, align 1
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es15ContiguousArrayV12_endMutationyyFs4Int8V_Tg5"(ptr nocapture swiftself dereferenceable(8) %0) #0 {
entry:
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %1 = load ptr, ptr %._buffer._storage, align 8
  %._buffer1 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  store ptr %1, ptr %._buffer1._storage, align 8
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es15ContiguousArrayVAByxGycfCs4Int8V_Ttg5"() #0 {
entry:
  %0 = call ptr @swift_retain(ptr returned @"$es23_swiftEmptyArrayStorageSi_S3itvp") #3
  ret ptr @"$es23_swiftEmptyArrayStorageSi_S3itvp"
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es15ContiguousArrayV15reserveCapacityyySiFs4Int8V_Tg5"(i64 %0, ptr nocapture swiftself dereferenceable(8) %1) #0 {
entry:
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %1, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %2 = load ptr, ptr %._buffer._storage, align 8
  %3 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %2) #3
  %._buffer1 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %1, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  store ptr %2, ptr %._buffer1._storage, align 8
  br i1 %3, label %5, label %4

4:                                                ; preds = %entry
  br label %14

5:                                                ; preds = %entry
  %._buffer._storage3 = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %6 = load ptr, ptr %._buffer._storage3, align 8
  %7 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %6, i32 0, i32 1
  %._storage4 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %7, i32 0, i32 0
  %._storage4._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage4, i32 0, i32 1
  %._storage4._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage4._capacityAndFlags, i32 0, i32 0
  %8 = load i64, ptr %._storage4._capacityAndFlags._value, align 8
  %9 = lshr i64 %8, 1
  %10 = icmp slt i64 %9, %0
  %11 = call i1 @llvm.expect.i1(i1 %10, i1 false)
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  br label %24

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i1 [ false, %4 ], [ true, %13 ]
  %._buffer._storage2 = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %16 = load ptr, ptr %._buffer._storage2, align 8
  %17 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %16, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %17, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  %18 = load i64, ptr %._storage.count._value, align 8, !range !6
  %19 = icmp slt i64 %18, %0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i64 [ %18, %20 ], [ %0, %21 ]
  call swiftcc void @"$es15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFs4Int8V_Tg5"(i1 %15, i64 %23, i1 false, ptr nocapture swiftself dereferenceable(8) %1)
  br label %24

24:                                               ; preds = %12, %22
  call swiftcc void @"$es15ContiguousArrayV12_endMutationyyFs4Int8V_Tg5"(ptr nocapture swiftself dereferenceable(8) %1)
  ret void
}

; Function Attrs: noinline nounwind
define hidden swiftcc i64 @"$es11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %0, i64 %1, ptr %2) #11 {
entry:
  %bitcast = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %2, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %3 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %4 = and i64 %3, 1152921504606846976
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %entry
  %7 = and i64 %1, 576460752303423488
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %31

10:                                               ; preds = %6
  %11 = call ptr @swift_bridgeObjectRetain(ptr returned %2) #4
  %12 = lshr i64 %0, 16
  %13 = call swiftcc i64 @"$eSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64 15, i64 %12, i64 %1, ptr %2)
  call void @swift_bridgeObjectRelease(ptr %2) #4
  %14 = lshr i64 %0, 14
  %15 = and i64 %14, 3
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = lshr i64 %13, 16
  %19 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %18, i64 %15)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = extractvalue { i64, i1 } %19, 1
  %22 = shl i64 %20, 16
  br label %27

23:                                               ; preds = %10
  %24 = and i64 %13, -4
  %25 = and i64 %0, 3
  %26 = or i64 %24, %25
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i64 [ %22, %17 ], [ %26, %23 ]
  %29 = or i64 %28, 8
  br label %51

30:                                               ; preds = %entry
  br label %31

31:                                               ; preds = %30, %9
  %32 = call ptr @swift_bridgeObjectRetain(ptr returned %2) #4
  %33 = lshr i64 %0, 16
  %34 = call swiftcc i64 @"$eSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64 15, i64 %33, i64 %1, ptr %2)
  call void @swift_bridgeObjectRelease(ptr %2) #4
  %35 = lshr i64 %0, 14
  %36 = and i64 %35, 3
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = lshr i64 %34, 16
  %40 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %39, i64 %36)
  %41 = extractvalue { i64, i1 } %40, 0
  %42 = extractvalue { i64, i1 } %40, 1
  %43 = shl i64 %41, 16
  br label %48

44:                                               ; preds = %31
  %45 = and i64 %34, -4
  %46 = and i64 %0, 3
  %47 = or i64 %45, %46
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i64 [ %43, %38 ], [ %47, %44 ]
  %50 = or i64 %49, 4
  br label %51

51:                                               ; preds = %27, %48
  %52 = phi i64 [ %50, %48 ], [ %29, %27 ]
  ret i64 %52
}

; Function Attrs: noinline nounwind
define hidden swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 %0, i64 %1, i8 %2, i64 %3, i64 %4, i8 %5, i64 %6, i64 %7, i8 %8, i64 %9) #11 {
entry:
  call swiftcc void @"$es5print_10terminatorys12StaticStringV_ADtF"(i64 %6, i64 %7, i8 %8, i64 ptrtoint (ptr @".str.1.:" to i64), i64 1, i8 2)
  call swiftcc void @"$eSzsE13writeToStdoutyyFSu_Tg5"(i64 %9)
  call swiftcc void @"$es5print_10terminatorys12StaticStringV_ADtF"(i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.2.: " to i64), i64 2, i8 2)
  call swiftcc void @"$es5print_10terminatorys12StaticStringV_ADtF"(i64 %0, i64 %1, i8 %2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2)
  %10 = and i8 %5, 1
  %11 = icmp eq i8 %10, 0
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 true)
  br i1 %12, label %14, label %13

13:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.47.StaticString should have pointer representation" to i64), i64 47, i8 2, i64 ptrtoint (ptr @".str.24.Swift/StaticString.swift" to i64), i64 24, i8 2, i64 157)
  call void @llvm.trap()
  unreachable

14:                                               ; preds = %entry
  %15 = icmp slt i64 0, %4
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %14
  call swiftcc void @"$es5print_10terminatorys12StaticStringV_ADtF"(i64 ptrtoint (ptr @".str.2.: " to i64), i64 2, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2)
  br label %18

18:                                               ; preds = %17, %16
  call swiftcc void @"$es5print_10terminatorys12StaticStringV_ADtF"(i64 %3, i64 %4, i8 %5, i64 ptrtoint (ptr @".str.1.\0A" to i64), i64 1, i8 2)
  ret void
}

; Function Attrs: noinline nounwind
define hidden swiftcc i8 @"$eSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %0, i64 %1, ptr %2) #11 {
entry:
  %3 = lshr i64 %0, 14
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %entry
  br label %18

7:                                                ; preds = %entry
  %8 = and i64 %0, 1
  %9 = icmp eq i64 %8, 0
  %10 = call i1 @llvm.expect.i1(i1 %9, i1 false)
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %18

12:                                               ; preds = %7
  %13 = call swiftcc i64 @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEF"(i64 %0, i64 %1, ptr %2)
  %14 = or i64 %13, 1
  %15 = and i64 %14, -13
  %16 = and i64 %0, 12
  %17 = or i64 %15, %16
  br label %18

18:                                               ; preds = %12, %11, %6
  %19 = phi i64 [ %0, %6 ], [ %0, %11 ], [ %17, %12 ]
  %20 = lshr i64 %19, 16
  %21 = shl i64 %20, 16
  %22 = call swiftcc { i32, i64 } @"$es11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF"(i64 %21, i64 %1, ptr %2)
  %23 = extractvalue { i32, i64 } %22, 0
  %24 = extractvalue { i32, i64 } %22, 1
  %25 = zext i32 %23 to i64
  %26 = icmp slt i64 %25, 128
  %27 = call i1 @llvm.expect.i1(i1 %26, i1 true)
  br i1 %27, label %62, label %28

28:                                               ; preds = %18
  %29 = and i32 %23, 63
  %30 = lshr i32 %23, 6
  %31 = shl i32 %29, 8
  %32 = zext i32 %30 to i64
  %33 = icmp slt i64 %32, 32
  %34 = call i1 @llvm.expect.i1(i1 %33, i1 true)
  br i1 %34, label %57, label %35

35:                                               ; preds = %28
  %36 = and i32 %30, 63
  %37 = or i32 %31, %36
  %38 = lshr i32 %30, 6
  %39 = shl i32 %37, 8
  %40 = zext i32 %38 to i64
  %41 = icmp slt i64 %40, 16
  %42 = call i1 @llvm.expect.i1(i1 %41, i1 true)
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = and i32 %38, 63
  %45 = or i32 %39, %44
  %46 = lshr i32 %38, 6
  %47 = shl i32 %45, 8
  %48 = or i32 %47, %46
  %49 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %48, i32 -2122219023)
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = extractvalue { i32, i1 } %49, 1
  br label %71

52:                                               ; preds = %35
  %53 = or i32 %39, %38
  %54 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %53, i32 8487393)
  %55 = extractvalue { i32, i1 } %54, 0
  %56 = extractvalue { i32, i1 } %54, 1
  br label %71

57:                                               ; preds = %28
  %58 = or i32 %31, %30
  %59 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %58, i32 33217)
  %60 = extractvalue { i32, i1 } %59, 0
  %61 = extractvalue { i32, i1 } %59, 1
  br label %71

62:                                               ; preds = %18
  %63 = icmp ult i32 255, %23
  %64 = call i1 @llvm.expect.i1(i1 %63, i1 false)
  br i1 %64, label %129, label %65

65:                                               ; preds = %62
  %66 = trunc i64 %25 to i8
  %67 = call { i8, i1 } @llvm.uadd.with.overflow.i8(i8 %66, i8 1)
  %68 = extractvalue { i8, i1 } %67, 0
  %69 = extractvalue { i8, i1 } %67, 1
  %70 = zext i8 %68 to i32
  br label %71

71:                                               ; preds = %65, %57, %52, %43
  %72 = phi i32 [ %50, %43 ], [ %55, %52 ], [ %60, %57 ], [ %70, %65 ]
  %73 = lshr i64 %19, 14
  %74 = and i64 %73, 3
  %75 = call swiftcc i1 @"$es16_ValidUTF8BufferV03_isA0ySbAB5IndexVF"(i32 %72, i32 %72)
  %76 = call i1 @llvm.expect.i1(i1 %75, i1 true)
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.27.Swift/ValidUTF8Buffer.swift" to i64), i64 27, i8 2, i64 130)
  call void @llvm.trap()
  unreachable

78:                                               ; preds = %71
  %79 = call swiftcc i1 @"$es16_ValidUTF8BufferV03_isA0ySbAB5IndexVF"(i32 %72, i32 %72)
  %80 = call i1 @llvm.expect.i1(i1 %79, i1 true)
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.27.Swift/ValidUTF8Buffer.swift" to i64), i64 27, i8 2, i64 131)
  call void @llvm.trap()
  unreachable

82:                                               ; preds = %78
  %83 = call i32 @llvm.ctlz.i32(i32 %72, i1 false)
  %84 = zext i32 %83 to i64
  %85 = call i32 @llvm.ctlz.i32(i32 %72, i1 false)
  %86 = zext i32 %85 to i64
  %87 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %84, i64 %86)
  %88 = extractvalue { i64, i1 } %87, 0
  %89 = extractvalue { i64, i1 } %87, 1
  %90 = call i1 @llvm.expect.i1(i1 %89, i1 false)
  br i1 %90, label %130, label %91

91:                                               ; preds = %82
  %92 = ashr i64 %88, 3
  %93 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %92, i64 %74)
  %94 = extractvalue { i64, i1 } %93, 0
  %95 = extractvalue { i64, i1 } %93, 1
  %96 = call i1 @llvm.expect.i1(i1 %95, i1 false)
  br i1 %96, label %131, label %97

97:                                               ; preds = %91
  %98 = icmp slt i64 %94, 0
  %99 = call i1 @llvm.expect.i1(i1 %98, i1 false)
  br i1 %99, label %128, label %100

100:                                              ; preds = %97
  %101 = call i32 @llvm.ctlz.i32(i32 %72, i1 false)
  %102 = zext i32 %101 to i64
  %103 = ashr i64 %102, 3
  %104 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 4, i64 %103)
  %105 = extractvalue { i64, i1 } %104, 0
  %106 = extractvalue { i64, i1 } %104, 1
  %107 = icmp slt i64 %105, %94
  %108 = call i1 @llvm.expect.i1(i1 %107, i1 false)
  br i1 %108, label %127, label %109

109:                                              ; preds = %100
  %110 = shl i64 %94, 3
  %111 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %110, i64 1)
  %112 = extractvalue { i64, i1 } %111, 0
  %113 = extractvalue { i64, i1 } %111, 1
  %114 = ashr i64 %112, 1
  %115 = trunc i64 %114 to i32
  %116 = and i32 %115, 31
  %117 = lshr i32 %72, %116
  %118 = ashr i64 %110, 1
  %119 = trunc i64 %118 to i32
  %120 = and i32 %119, 31
  %121 = lshr i32 %117, %120
  %122 = zext i32 %121 to i64
  %123 = trunc i64 %122 to i8
  %124 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 %123, i8 1)
  %125 = extractvalue { i8, i1 } %124, 0
  %126 = extractvalue { i8, i1 } %124, 1
  ret i8 %125

127:                                              ; preds = %100
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.27.Swift/ValidUTF8Buffer.swift" to i64), i64 27, i8 2, i64 143)
  call void @llvm.trap()
  unreachable

128:                                              ; preds = %97
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.27.Swift/ValidUTF8Buffer.swift" to i64), i64 27, i8 2, i64 142)
  call void @llvm.trap()
  unreachable

129:                                              ; preds = %62
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.45.Not enough bits to represent the passed value" to i64), i64 45, i8 2, i64 ptrtoint (ptr @".str.20.Swift/Integers.swift" to i64), i64 20, i8 2, i64 3053)
  call void @llvm.trap()
  unreachable

130:                                              ; preds = %82
  call void @llvm.trap()
  unreachable

131:                                              ; preds = %91
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSS8UTF8ViewV10_uncheckeds5UInt8VSS5IndexV_tcigAESRyAEGXEfU_"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, i64 %3, ptr swiftself %4, ptr noalias nocapture swifterror dereferenceable(8) %5) #0 {
entry:
  %6 = lshr i64 %3, 16
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %entry
  %9 = inttoptr i64 %1 to ptr
  br label %11

10:                                               ; preds = %entry
  unreachable

11:                                               ; preds = %8
  %12 = phi ptr [ %9, %8 ]
  %13 = inttoptr i64 %1 to ptr
  %14 = getelementptr inbounds %Ts5UInt8V, ptr %13, i64 %6
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %14, i32 0, i32 0
  %15 = load i8, ptr %._value, align 1
  %._value1 = getelementptr inbounds %Ts5UInt8V, ptr %0, i32 0, i32 0
  store i8 %15, ptr %._value1, align 1
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, i64 %3, ptr %4, ptr %5, ptr swiftself %6, ptr noalias nocapture swifterror dereferenceable(8) %7, ptr %8) #0 {
entry:
  %9 = alloca %Ts5UInt8V, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %9)
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %entry
  %12 = inttoptr i64 %1 to ptr
  br label %14

13:                                               ; preds = %entry
  unreachable

14:                                               ; preds = %11
  %15 = phi ptr [ %12, %11 ]
  %16 = inttoptr i64 %1 to ptr
  %17 = ptrtoint ptr %16 to i64
  call swiftcc void %4(ptr noalias nocapture sret(%Ts5UInt8V) %9, i64 %17, i64 %3, ptr swiftself %5, ptr noalias nocapture swifterror dereferenceable(8) %7) #16
  %18 = load ptr, ptr %7, align 8
  %19 = icmp ne ptr %18, null
  %20 = ptrtoint ptr %18 to i64
  br i1 %19, label %21, label %23

21:                                               ; preds = %14
  %22 = phi ptr [ %18, %14 ]
  store ptr null, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr %9)
  store ptr %22, ptr %8, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8
  ret void

23:                                               ; preds = %14
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %9, i32 0, i32 0
  %24 = load i8, ptr %._value, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %9)
  %._value1 = getelementptr inbounds %Ts5UInt8V, ptr %0, i32 0, i32 0
  store i8 %24, ptr %._value1, align 1
  ret void
}

; Function Attrs: noinline nounwind
define hidden swiftcc i64 @"$eSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %0, i64 %1, ptr %2) #11 {
entry:
  %3 = lshr i64 %0, 14
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %entry
  br label %18

7:                                                ; preds = %entry
  %8 = and i64 %0, 1
  %9 = icmp eq i64 %8, 0
  %10 = call i1 @llvm.expect.i1(i1 %9, i1 false)
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %18

12:                                               ; preds = %7
  %13 = call swiftcc i64 @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEF"(i64 %0, i64 %1, ptr %2)
  %14 = or i64 %13, 1
  %15 = and i64 %14, -13
  %16 = and i64 %0, 12
  %17 = or i64 %15, %16
  br label %18

18:                                               ; preds = %12, %11, %6
  %19 = phi i64 [ %0, %6 ], [ %0, %11 ], [ %17, %12 ]
  %20 = lshr i64 %19, 16
  %21 = shl i64 %20, 16
  %22 = call swiftcc { i32, i64 } @"$es11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF"(i64 %21, i64 %1, ptr %2)
  %23 = extractvalue { i32, i64 } %22, 0
  %24 = extractvalue { i32, i64 } %22, 1
  %25 = icmp ult i32 %23, 128
  br i1 %25, label %56, label %26

26:                                               ; preds = %18
  %27 = icmp ult i32 %23, 2048
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = icmp ult i32 %23, 65536
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  br label %33

31:                                               ; preds = %28
  br label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %31, %30
  %34 = phi i64 [ 4, %30 ], [ 3, %31 ], [ 2, %32 ]
  %35 = lshr i64 %19, 14
  %36 = and i64 %35, 3
  %37 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %34, i64 1)
  %38 = extractvalue { i64, i1 } %37, 0
  %39 = extractvalue { i64, i1 } %37, 1
  %40 = call i1 @llvm.expect.i1(i1 %39, i1 false)
  br i1 %40, label %64, label %41

41:                                               ; preds = %33
  %42 = icmp slt i64 %36, %38
  br i1 %42, label %49, label %43

43:                                               ; preds = %41
  %44 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %20, i64 %24)
  %45 = extractvalue { i64, i1 } %44, 0
  %46 = extractvalue { i64, i1 } %44, 1
  %47 = shl i64 %45, 16
  %48 = or i64 %47, 9
  br label %62

49:                                               ; preds = %41
  %50 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %36, i64 1)
  %51 = extractvalue { i64, i1 } %50, 0
  %52 = extractvalue { i64, i1 } %50, 1
  %53 = shl i64 %51, 14
  %54 = or i64 %21, %53
  %55 = or i64 %54, 8
  br label %62

56:                                               ; preds = %18
  %57 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %20, i64 1)
  %58 = extractvalue { i64, i1 } %57, 0
  %59 = extractvalue { i64, i1 } %57, 1
  %60 = shl i64 %58, 16
  %61 = or i64 %60, 9
  br label %62

62:                                               ; preds = %56, %49, %43
  %63 = phi i64 [ %48, %43 ], [ %55, %49 ], [ %61, %56 ]
  ret i64 %63

64:                                               ; preds = %33
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSRys4Int8VG_Tg5"(i64 %0, i64 %1) #0 {
entry:
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %78, label %3

3:                                                ; preds = %entry
  %4 = icmp slt i64 0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = call ptr @swift_retain(ptr returned @"$es23_swiftEmptyArrayStorageSi_S3itvp") #3
  br label %14

7:                                                ; preds = %3
  %8 = mul i64 1, %1
  %9 = add i64 32, %8
  %10 = call noalias ptr @swift_allocObject(ptr @"$es23_ContiguousArrayStorageCys4Int8VGN", i64 %9, i64 7) #4
  %11 = call ptr @swift_retain(ptr returned %10) #3
  %12 = shl i64 %1, 1
  %13 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %10, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %13, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  store i64 %1, ptr %._storage.count._value, align 8
  %._storage._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 1
  %._storage._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage._capacityAndFlags, i32 0, i32 0
  store i64 %12, ptr %._storage._capacityAndFlags._value, align 8
  call void @swift_release(ptr %10) #4
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi ptr [ @"$es23_swiftEmptyArrayStorageSi_S3itvp", %5 ], [ %10, %7 ]
  %16 = call ptr @swift_retain(ptr returned %15) #3
  %17 = getelementptr inbounds i8, ptr %15, i64 32
  call void @swift_release(ptr %15) #4
  %18 = icmp slt i64 %1, 0
  %19 = call i1 @llvm.expect.i1(i1 %18, i1 false)
  br i1 %19, label %77, label %20

20:                                               ; preds = %14
  %21 = icmp eq i64 %1, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %20
  %23 = icmp eq i64 %0, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = inttoptr i64 %0 to ptr
  br label %27

26:                                               ; preds = %22
  unreachable

27:                                               ; preds = %24
  %28 = phi ptr [ %25, %24 ]
  %29 = inttoptr i64 %0 to ptr
  %30 = icmp slt i64 %1, %1
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %33

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %31
  %34 = phi i64 [ %1, %31 ], [ %1, %32 ]
  call swiftcc void @"$eSp10initialize4from5countySPyxG_SitFs4Int8V_Tg5"(ptr %29, i64 %34, ptr %17)
  %35 = getelementptr inbounds %Ts4Int8V, ptr %29, i64 %34
  %36 = getelementptr inbounds %Ts4Int8V, ptr %29, i64 %1
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %55

39:                                               ; preds = %33
  %40 = icmp eq i64 %34, %1
  %41 = call i1 @llvm.expect.i1(i1 %40, i1 true)
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %67

43:                                               ; preds = %39
  br label %76

44:                                               ; preds = %20
  %45 = icmp eq i64 %0, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = inttoptr i64 %0 to ptr
  br label %49

48:                                               ; preds = %44
  br label %76

49:                                               ; preds = %46
  %50 = phi ptr [ %47, %46 ]
  %51 = getelementptr inbounds %Ts4Int8V, ptr %50, i64 %1
  %52 = inttoptr i64 %0 to ptr
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %38
  %56 = phi i64 [ ptrtoint (ptr @".str.60.invalid Collection: more than 'count' elements in collection" to i64), %38 ], [ ptrtoint (ptr @".str.60.invalid Collection: more than 'count' elements in collection" to i64), %54 ]
  %57 = phi i64 [ 60, %38 ], [ 60, %54 ]
  %58 = phi i8 [ 2, %38 ], [ 2, %54 ]
  %59 = phi i64 [ ptrtoint (ptr @".str.33.Swift/ContiguousArrayBuffer.swift" to i64), %38 ], [ ptrtoint (ptr @".str.33.Swift/ContiguousArrayBuffer.swift" to i64), %54 ]
  %60 = phi i64 [ 33, %38 ], [ 33, %54 ]
  %61 = phi i8 [ 2, %38 ], [ 2, %54 ]
  %62 = phi i64 [ 1140, %38 ], [ 1140, %54 ]
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 %56, i64 %57, i8 %58, i64 %59, i64 %60, i8 %61, i64 %62)
  call void @llvm.trap()
  unreachable

63:                                               ; preds = %49
  %64 = icmp eq i64 %1, 0
  %65 = call i1 @llvm.expect.i1(i1 %64, i1 true)
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66, %42
  %68 = phi i64 [ ptrtoint (ptr @".str.33.Swift/ContiguousArrayBuffer.swift" to i64), %42 ], [ ptrtoint (ptr @".str.33.Swift/ContiguousArrayBuffer.swift" to i64), %66 ]
  %69 = phi i64 [ 33, %42 ], [ 33, %66 ]
  %70 = phi i8 [ 2, %42 ], [ 2, %66 ]
  %71 = phi i64 [ ptrtoint (ptr @".str.60.invalid Collection: less than 'count' elements in collection" to i64), %42 ], [ ptrtoint (ptr @".str.60.invalid Collection: less than 'count' elements in collection" to i64), %66 ]
  %72 = phi i64 [ 60, %42 ], [ 60, %66 ]
  %73 = phi i8 [ 2, %42 ], [ 2, %66 ]
  %74 = phi i64 [ 1145, %42 ], [ 1145, %66 ]
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 %71, i64 %72, i8 %73, i64 %68, i64 %69, i8 %70, i64 %74)
  call void @llvm.trap()
  unreachable

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %48, %43
  br label %80

77:                                               ; preds = %14
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.46.UnsafeMutableBufferPointer with negative count" to i64), i64 46, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 74)
  call void @llvm.trap()
  unreachable

78:                                               ; preds = %entry
  %79 = call swiftcc ptr @"$es15ContiguousArrayVAByxGycfCs4Int8V_Ttg5"()
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %15, %76 ], [ %79, %78 ]
  ret ptr %81
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSRys4Int8VGxs5Error_pIgyrzo_ACxsAD_pIegyrzr_lTRs15ContiguousArrayVyABG_TG5"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, ptr %3, ptr %4, ptr swiftself %5, ptr noalias nocapture swifterror dereferenceable(8) %6, ptr %7) #0 {
entry:
  %8 = alloca %Ts15ContiguousArrayV, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8)
  call swiftcc void %3(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %8, i64 %1, i64 %2, ptr swiftself %4, ptr noalias nocapture swifterror dereferenceable(8) %6) #16
  %9 = load ptr, ptr %6, align 8
  %10 = icmp ne ptr %9, null
  %11 = ptrtoint ptr %9 to i64
  br i1 %10, label %12, label %14

12:                                               ; preds = %entry
  %13 = phi ptr [ %9, %entry ]
  store ptr null, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8)
  store ptr %13, ptr %7, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %6, align 8
  ret void

14:                                               ; preds = %entry
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %8, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %15 = load ptr, ptr %._buffer._storage, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8)
  %._buffer1 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  store ptr %15, ptr %._buffer1._storage, align 8
  ret void
}

; Function Attrs: noinline nounwind
define hidden swiftcc ptr @"$es13_StringObjectV18getSharedUTF8StartSPys5UInt8VGyF"(i64 %0, ptr %1) #11 {
entry:
  %bitcast = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %1, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %2 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %3 = and i64 %2, 1152921504606846975
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %entry
  %6 = inttoptr i64 %3 to ptr
  %7 = getelementptr inbounds %Ts21__SharedStringStorageC, ptr %6, i32 0, i32 2
  %._rawValue = getelementptr inbounds %TSP, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %._rawValue, align 8
  ret ptr %8

9:                                                ; preds = %entry
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$es15ContiguousArrayV9_getCountSiyFs4Int8V_Tg5"(ptr %0) #0 {
entry:
  %1 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %0, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %1, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  %2 = load i64, ptr %._storage.count._value, align 8, !range !6
  ret i64 %2
}

; Function Attrs: noinline nounwind
define hidden swiftcc void @"$es15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFs4Int8V_Tg5"(i1 %0, i64 %1, i1 %2, ptr nocapture swiftself dereferenceable(8) %3) #11 {
entry:
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %3, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %4 = load ptr, ptr %._buffer._storage, align 8
  %5 = call ptr @swift_retain(ptr returned %4) #3
  %6 = call swiftcc ptr @"$es22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs4Int8V_Tg5"(i1 %0, i64 %1, i1 %2, ptr %4)
  %._buffer1 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %3, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  %7 = load ptr, ptr %._buffer1._storage, align 8
  %._buffer2 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %3, i32 0, i32 0
  %._buffer2._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer2, i32 0, i32 0
  store ptr %6, ptr %._buffer2._storage, align 8
  call void @swift_release(ptr %7) #4
  ret void
}

; Function Attrs: noinline nounwind
define hidden swiftcc ptr @"$es22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs4Int8V_Tg5"(i1 %0, i64 %1, i1 %2, ptr %3) #11 {
entry:
  %4 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %3, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %4, i32 0, i32 0
  %._storage._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 1
  %._storage._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage._capacityAndFlags, i32 0, i32 0
  %5 = load i64, ptr %._storage._capacityAndFlags._value, align 8
  %6 = lshr i64 %5, 1
  br i1 %2, label %8, label %7

7:                                                ; preds = %entry
  br label %20

8:                                                ; preds = %entry
  %9 = icmp slt i64 %6, %1
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  br label %20

11:                                               ; preds = %8
  %12 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %6, i64 2)
  %13 = extractvalue { i64, i1 } %12, 0
  %14 = extractvalue { i64, i1 } %12, 1
  %15 = call i1 @llvm.expect.i1(i1 %14, i1 false)
  br i1 %15, label %49, label %16

16:                                               ; preds = %11
  %17 = icmp slt i64 %13, %1
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %20

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %18, %10, %7
  %21 = phi i64 [ %1, %7 ], [ %6, %10 ], [ %13, %18 ], [ %1, %19 ]
  %22 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %3, i32 0, i32 1
  %._storage1 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %22, i32 0, i32 0
  %._storage1.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage1, i32 0, i32 0
  %._storage1.count._value = getelementptr inbounds %TSi, ptr %._storage1.count, i32 0, i32 0
  %23 = load i64, ptr %._storage1.count._value, align 8, !range !6
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i64 [ %21, %25 ], [ %23, %26 ]
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = mul i64 1, %28
  %32 = add i64 32, %31
  %33 = call noalias ptr @swift_allocObject(ptr @"$es23_ContiguousArrayStorageCys4Int8VGN", i64 %32, i64 7) #4
  %34 = call ptr @swift_retain(ptr returned %33) #3
  %35 = shl i64 %28, 1
  %36 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %33, i32 0, i32 1
  %._storage2 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %36, i32 0, i32 0
  %._storage2.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage2, i32 0, i32 0
  %._storage2.count._value = getelementptr inbounds %TSi, ptr %._storage2.count, i32 0, i32 0
  store i64 %23, ptr %._storage2.count._value, align 8
  %._storage2._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage2, i32 0, i32 1
  %._storage2._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage2._capacityAndFlags, i32 0, i32 0
  store i64 %35, ptr %._storage2._capacityAndFlags._value, align 8
  call void @swift_release(ptr %33) #4
  br label %39

37:                                               ; preds = %27
  %38 = call ptr @swift_retain(ptr returned @"$es23_swiftEmptyArrayStorageSi_S3itvp") #3
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi ptr [ %33, %30 ], [ @"$es23_swiftEmptyArrayStorageSi_S3itvp", %37 ]
  br i1 %0, label %44, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, ptr %40, i64 32
  %43 = call swiftcc ptr @"$es22_ContiguousArrayBufferV13_copyContents8subRange12initializingSpyxGSnySiG_AFtFs4Int8V_Tg5"(i64 0, i64 %23, ptr %42, ptr %3)
  br label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %40, i64 32
  %46 = getelementptr inbounds i8, ptr %3, i64 32
  call swiftcc void @"$eSp14moveInitialize4from5countySpyxG_SitFs4Int8V_Tg5"(ptr %46, i64 %23, ptr %45)
  %47 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %3, i32 0, i32 1
  %._storage3 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %47, i32 0, i32 0
  %._storage3.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage3, i32 0, i32 0
  %._storage3.count._value = getelementptr inbounds %TSi, ptr %._storage3.count, i32 0, i32 0
  store i64 0, ptr %._storage3.count._value, align 8
  call void @swift_release(ptr %3) #4
  br label %48

48:                                               ; preds = %44, %41
  ret ptr %40

49:                                               ; preds = %11
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es22_ContiguousArrayBufferV13_copyContents8subRange12initializingSpyxGSnySiG_AFtFs4Int8V_Tg5"(i64 %0, i64 %1, ptr %2, ptr %3) #0 {
entry:
  %4 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 %0)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = call i1 @llvm.expect.i1(i1 %6, i1 false)
  br i1 %7, label %37, label %8

8:                                                ; preds = %entry
  %9 = getelementptr inbounds i8, ptr %3, i64 32
  %10 = getelementptr inbounds %Ts4Int8V, ptr %9, i64 %0
  %11 = icmp slt i64 %5, 0
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 false)
  br i1 %12, label %36, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %Ts4Int8V, ptr %2, i64 %5
  %15 = icmp ult ptr %10, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %Ts4Int8V, ptr %10, i64 %5
  %19 = icmp ult ptr %2, %18
  %20 = call i1 @llvm.expect.i1(i1 %19, i1 false)
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %16
  %23 = ptrtoint ptr %10 to i64
  %24 = ptrtoint ptr %2 to i64
  br label %loop_header

loop_header:                                      ; preds = %loop_body, %22
  %25 = phi i64 [ 0, %22 ], [ %32, %loop_body ]
  %26 = icmp slt i64 %25, %5
  br i1 %26, label %loop_body, label %loop_exit

loop_body:                                        ; preds = %loop_header
  %27 = mul i64 %25, 1
  %28 = add i64 %23, %27
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %24, %27
  %31 = inttoptr i64 %30 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %29, i64 1, i1 false)
  %32 = add i64 %25, 1
  br label %loop_header

loop_exit:                                        ; preds = %loop_header
  %33 = call ptr @swift_retain(ptr returned %3) #3
  call void @swift_release(ptr %3) #4
  call void @swift_release(ptr %3) #4
  %34 = getelementptr inbounds %Ts4Int8V, ptr %2, i64 %5
  ret ptr %34

35:                                               ; preds = %17
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.49.UnsafeMutablePointer.initialize overlapping range" to i64), i64 49, i8 2, i64 ptrtoint (ptr @".str.25.Swift/UnsafePointer.swift" to i64), i64 25, i8 2, i64 1097)
  call void @llvm.trap()
  unreachable

36:                                               ; preds = %8
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.51.UnsafeMutablePointer.initialize with negative count" to i64), i64 51, i8 2, i64 ptrtoint (ptr @".str.25.Swift/UnsafePointer.swift" to i64), i64 25, i8 2, i64 1095)
  call void @llvm.trap()
  unreachable

37:                                               ; preds = %entry
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSp14moveInitialize4from5countySpyxG_SitFs4Int8V_Tg5"(ptr %0, i64 %1, ptr %2) #0 {
entry:
  %3 = icmp slt i64 %1, 0
  %4 = call i1 @llvm.expect.i1(i1 %3, i1 false)
  br i1 %4, label %40, label %5

5:                                                ; preds = %entry
  %6 = icmp ult ptr %2, %0
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %Ts4Int8V, ptr %0, i64 %1
  %9 = icmp ult ptr %2, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %28

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, %0
  br i1 %12, label %26, label %13

13:                                               ; preds = %11
  %14 = ptrtoint ptr %0 to i64
  %15 = ptrtoint ptr %2 to i64
  br label %loop_header1

loop_header1:                                     ; preds = %loop_body2, %13
  %16 = phi i64 [ 0, %13 ], [ %25, %loop_body2 ]
  %17 = icmp slt i64 %16, %1
  br i1 %17, label %loop_body2, label %loop_exit3

loop_body2:                                       ; preds = %loop_header1
  %18 = sub i64 %1, %16
  %19 = sub i64 %18, 1
  %20 = mul i64 %19, 1
  %21 = add i64 %14, %20
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %15, %20
  %24 = inttoptr i64 %23 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %22, i64 1, i1 false)
  %25 = add i64 %16, 1
  br label %loop_header1

loop_exit3:                                       ; preds = %loop_header1
  br label %39

26:                                               ; preds = %11
  br label %39

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %10
  %29 = ptrtoint ptr %0 to i64
  %30 = ptrtoint ptr %2 to i64
  br label %loop_header

loop_header:                                      ; preds = %loop_body, %28
  %31 = phi i64 [ 0, %28 ], [ %38, %loop_body ]
  %32 = icmp slt i64 %31, %1
  br i1 %32, label %loop_body, label %loop_exit

loop_body:                                        ; preds = %loop_header
  %33 = mul i64 %31, 1
  %34 = add i64 %29, %33
  %35 = inttoptr i64 %34 to ptr
  %36 = add i64 %30, %33
  %37 = inttoptr i64 %36 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %35, i64 1, i1 false)
  %38 = add i64 %31, 1
  br label %loop_header

loop_exit:                                        ; preds = %loop_header
  br label %39

39:                                               ; preds = %26, %loop_exit3, %loop_exit
  ret void

40:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.55.UnsafeMutablePointer.moveInitialize with negative count" to i64), i64 55, i8 2, i64 ptrtoint (ptr @".str.25.Swift/UnsafePointer.swift" to i64), i64 25, i8 2, i64 1051)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es28__ContiguousArrayStorageBaseCABycfC"(ptr swiftself %0) #0 {
entry:
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define protected swiftcc ptr @"$es23_ContiguousArrayStorageC16_doNotCallMeBaseAByxGyt_tcfCs4Int8V_Tg5"(ptr swiftself %0) #0 {
entry:
  unreachable
}

; Function Attrs: nounwind
define protected swiftcc ptr @"$es23_ContiguousArrayStorageC16_doNotCallMeBaseAByxGyt_tcfCSS5IndexV_Tg5"(ptr swiftself %0) #0 {
entry:
  unreachable
}

; Function Attrs: nounwind
define protected swiftcc i1 @"$es23_ContiguousArrayStorageC16canStoreElements13ofDynamicTypeSbypXp_tFs4Int8V_Tg5"(ptr %0, ptr swiftself %1) #0 {
entry:
  ret i1 false
}

; Function Attrs: nounwind
define protected swiftcc i1 @"$es23_ContiguousArrayStorageC16canStoreElements13ofDynamicTypeSbypXp_tFSS5IndexV_Tg5"(ptr %0, ptr swiftself %1) #0 {
entry:
  ret i1 false
}

; Function Attrs: nounwind
define protected swiftcc void @"$es23_ContiguousArrayStorageCfDs4Int8V_Tg5"(ptr swiftself %0) #0 {
entry:
  call void @swift_deallocClassInstance(ptr %0, i64 32, i64 7) #4
  ret void
}

; Function Attrs: nounwind
define protected swiftcc void @"$es23_ContiguousArrayStorageCfDSS5IndexV_Tg5"(ptr swiftself %0) #0 {
entry:
  call void @swift_deallocClassInstance(ptr %0, i64 32, i64 7) #4
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es28__ContiguousArrayStorageBaseC012_doNotCallMeD0AByt_tcfC"(ptr swiftself %0) #0 {
entry:
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i1 @"$es28__ContiguousArrayStorageBaseC16canStoreElements13ofDynamicTypeSbypXp_tF"(ptr %0, ptr swiftself %1) #0 {
entry:
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es28__ContiguousArrayStorageBaseCfD"(ptr swiftself %0) #0 {
entry:
  call void @swift_deallocClassInstance(ptr %0, i64 32, i64 7) #4
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es41__SwiftNativeNSArrayWithContiguousStorageCABycfC"(ptr swiftself %0) #0 {
entry:
  %1 = call noalias ptr @swift_allocObject(ptr @"$es41__SwiftNativeNSArrayWithContiguousStorageCN", i64 16, i64 7) #4
  ret ptr %1
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es41__SwiftNativeNSArrayWithContiguousStorageCfD"(ptr swiftself %0) #0 {
entry:
  call void @swift_deallocClassInstance(ptr %0, i64 16, i64 7) #4
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es5print_10terminatorys12StaticStringV_ADtF"(i64 %0, i64 %1, i8 %2, i64 %3, i64 %4, i8 %5) #0 {
entry:
  %6 = and i8 %2, 1
  %7 = icmp eq i8 %6, 0
  %8 = call i1 @llvm.expect.i1(i1 %7, i1 true)
  br i1 %8, label %10, label %9

9:                                                ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.47.StaticString should have pointer representation" to i64), i64 47, i8 2, i64 ptrtoint (ptr @".str.24.Swift/StaticString.swift" to i64), i64 24, i8 2, i64 133)
  call void @llvm.trap()
  unreachable

10:                                               ; preds = %entry
  %11 = icmp eq i64 %0, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %10
  %13 = inttoptr i64 %0 to ptr
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %13, i32 0, i32 0
  %14 = load i8, ptr %._value, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %25, %16
  %18 = phi ptr [ %13, %16 ], [ %22, %25 ]
  %._value1 = getelementptr inbounds %Ts5UInt8V, ptr %18, i32 0, i32 0
  %19 = load i8, ptr %._value1, align 1
  %20 = zext i8 %19 to i32
  %21 = call i32 @putchar(i32 %20)
  %22 = getelementptr inbounds %Ts5UInt8V, ptr %18, i64 1
  %._value2 = getelementptr inbounds %Ts5UInt8V, ptr %22, i32 0, i32 0
  %23 = load i8, ptr %._value2, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %17

26:                                               ; preds = %17
  br label %28

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27, %26
  %29 = and i8 %5, 1
  %30 = icmp eq i8 %29, 0
  %31 = call i1 @llvm.expect.i1(i1 %30, i1 true)
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.47.StaticString should have pointer representation" to i64), i64 47, i8 2, i64 ptrtoint (ptr @".str.24.Swift/StaticString.swift" to i64), i64 24, i8 2, i64 133)
  call void @llvm.trap()
  unreachable

33:                                               ; preds = %28
  %34 = icmp eq i64 %3, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %33
  %36 = inttoptr i64 %3 to ptr
  %._value3 = getelementptr inbounds %Ts5UInt8V, ptr %36, i32 0, i32 0
  %37 = load i8, ptr %._value3, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %48, %39
  %41 = phi ptr [ %36, %39 ], [ %45, %48 ]
  %._value4 = getelementptr inbounds %Ts5UInt8V, ptr %41, i32 0, i32 0
  %42 = load i8, ptr %._value4, align 1
  %43 = zext i8 %42 to i32
  %44 = call i32 @putchar(i32 %43)
  %45 = getelementptr inbounds %Ts5UInt8V, ptr %41, i64 1
  %._value5 = getelementptr inbounds %Ts5UInt8V, ptr %45, i32 0, i32 0
  %46 = load i8, ptr %._value5, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %40

49:                                               ; preds = %40
  br label %51

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %49
  ret void

52:                                               ; preds = %33
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.57.Unexpectedly found nil while unwrapping an Optional value" to i64), i64 57, i8 2, i64 ptrtoint (ptr @".str.24.Swift/StaticString.swift" to i64), i64 24, i8 2, i64 136)
  call void @llvm.trap()
  unreachable

53:                                               ; preds = %10
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.57.Unexpectedly found nil while unwrapping an Optional value" to i64), i64 57, i8 2, i64 ptrtoint (ptr @".str.24.Swift/StaticString.swift" to i64), i64 24, i8 2, i64 136)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind sspreq
define hidden swiftcc void @"$eSzsE13writeToStdoutyyFSu_Tg5"(i64 %0) #2 {
entry:
  %temp_alloc = alloca i8, i64 64, align 1
  %1 = call swiftcc i64 @"$eSzsE13_toStringImplySiSpys5UInt8VG_SuSiSbtFSu_Tg5"(ptr %temp_alloc, i64 64, i64 10, i1 false, i64 %0)
  %2 = icmp slt i64 %1, 0
  %3 = call i1 @llvm.expect.i1(i1 %2, i1 false)
  br i1 %3, label %23, label %4

4:                                                ; preds = %entry
  %5 = getelementptr inbounds i8, ptr %temp_alloc, i64 %1
  %6 = icmp eq ptr %temp_alloc, %5
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %19, %7
  %9 = phi ptr [ %temp_alloc, %7 ], [ %15, %19 ]
  %10 = icmp ult ptr %9, %5
  %11 = call i1 @llvm.expect.i1(i1 %10, i1 true)
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.34.Swift/UnsafeRawBufferPointer.swift" to i64), i64 34, i8 2, i64 1242)
  call void @llvm.trap()
  unreachable

13:                                               ; preds = %8
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %9, i32 0, i32 0
  %14 = load i8, ptr %._value, align 1
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  %16 = zext i8 %14 to i32
  %17 = call i32 @putchar(i32 %16)
  %18 = icmp eq ptr %15, %5
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %8

20:                                               ; preds = %13
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %20
  ret void

23:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.39.UnsafeBufferPointer with negative count" to i64), i64 39, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1401)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSzsE13_toStringImplySiSpys5UInt8VG_SuSiSbtFSu_Tg5"(ptr %0, i64 %1, i64 %2, i1 %3, i64 %4) #0 {
entry:
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %99, label %6

6:                                                ; preds = %entry
  %7 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1, i64 1)
  %8 = extractvalue { i64, i1 } %7, 0
  %9 = extractvalue { i64, i1 } %7, 1
  %10 = call i1 @llvm.expect.i1(i1 %9, i1 false)
  br i1 %10, label %102, label %11

11:                                               ; preds = %6
  %12 = icmp ult i64 9223372036854775807, %8
  %13 = call i1 @llvm.expect.i1(i1 %12, i1 false)
  br i1 %13, label %98, label %14

14:                                               ; preds = %11
  %15 = icmp eq i64 %4, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %56, %16
  %18 = phi i64 [ %8, %16 ], [ %51, %56 ]
  %19 = phi i64 [ %4, %16 ], [ %26, %56 ]
  %20 = icmp slt i64 %2, 0
  %21 = call i1 @llvm.expect.i1(i1 %20, i1 false)
  br i1 %21, label %59, label %22

22:                                               ; preds = %17
  %23 = icmp eq i64 %2, 0
  %24 = call i1 @llvm.expect.i1(i1 %23, i1 false)
  br i1 %24, label %58, label %25

25:                                               ; preds = %22
  %26 = udiv i64 %19, %2
  %27 = urem i64 %19, %2
  %28 = trunc i64 %27 to i8
  %29 = icmp ult i8 %28, 10
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 %28, i8 10)
  %32 = extractvalue { i8, i1 } %31, 0
  %33 = extractvalue { i8, i1 } %31, 1
  %34 = call i1 @llvm.expect.i1(i1 %33, i1 false)
  br i1 %34, label %103, label %35

35:                                               ; preds = %30
  %36 = call { i8, i1 } @llvm.uadd.with.overflow.i8(i8 97, i8 %32)
  %37 = extractvalue { i8, i1 } %36, 0
  %38 = extractvalue { i8, i1 } %36, 1
  %39 = call i1 @llvm.expect.i1(i1 %38, i1 false)
  br i1 %39, label %104, label %40

40:                                               ; preds = %35
  br label %47

41:                                               ; preds = %25
  %42 = call { i8, i1 } @llvm.uadd.with.overflow.i8(i8 48, i8 %28)
  %43 = extractvalue { i8, i1 } %42, 0
  %44 = extractvalue { i8, i1 } %42, 1
  %45 = call i1 @llvm.expect.i1(i1 %44, i1 false)
  br i1 %45, label %109, label %46

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi i8 [ %37, %40 ], [ %43, %46 ]
  %49 = getelementptr inbounds %Ts5UInt8V, ptr %0, i64 %18
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %49, i32 0, i32 0
  store i8 %48, ptr %._value, align 1
  %50 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %18, i64 1)
  %51 = extractvalue { i64, i1 } %50, 0
  %52 = extractvalue { i64, i1 } %50, 1
  %53 = call i1 @llvm.expect.i1(i1 %52, i1 false)
  br i1 %53, label %105, label %54

54:                                               ; preds = %47
  %55 = icmp eq i64 %26, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  br label %17

57:                                               ; preds = %54
  %.lcssa2 = phi i64 [ %51, %54 ]
  br label %61

58:                                               ; preds = %22
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.16.Division by zero" to i64), i64 16, i8 2, i64 ptrtoint (ptr @".str.24.Swift/IntegerTypes.swift" to i64), i64 24, i8 2, i64 8046)
  call void @llvm.trap()
  unreachable

59:                                               ; preds = %17
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.35.Negative value is not representable" to i64), i64 35, i8 2, i64 ptrtoint (ptr @".str.20.Swift/Integers.swift" to i64), i64 20, i8 2, i64 3049)
  call void @llvm.trap()
  unreachable

60:                                               ; preds = %14
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i64 [ %.lcssa2, %57 ], [ %8, %60 ]
  %63 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %62, i64 1)
  %64 = extractvalue { i64, i1 } %63, 0
  %65 = extractvalue { i64, i1 } %63, 1
  %66 = call i1 @llvm.expect.i1(i1 %65, i1 false)
  br i1 %66, label %106, label %67

67:                                               ; preds = %61
  %68 = icmp ult i64 9223372036854775807, %8
  %69 = call i1 @llvm.expect.i1(i1 %68, i1 false)
  br i1 %69, label %97, label %70

70:                                               ; preds = %67
  %71 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %8, i64 %64)
  %72 = extractvalue { i64, i1 } %71, 0
  %73 = extractvalue { i64, i1 } %71, 1
  %74 = call i1 @llvm.expect.i1(i1 %73, i1 false)
  br i1 %74, label %107, label %75

75:                                               ; preds = %70
  %76 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 1)
  %77 = extractvalue { i64, i1 } %76, 0
  %78 = extractvalue { i64, i1 } %76, 1
  %79 = call i1 @llvm.expect.i1(i1 %78, i1 false)
  br i1 %79, label %108, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %Ts5UInt8V, ptr %0, i64 %64
  %82 = icmp slt i64 %77, 0
  %83 = call i1 @llvm.expect.i1(i1 %82, i1 false)
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = ptrtoint ptr %0 to i64
  %86 = icmp ult i64 9223372036854775807, %1
  %87 = call i1 @llvm.expect.i1(i1 %86, i1 false)
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = call swiftcc { i64, i64 } @"$eSw5start5countSwSvSg_SitcfC"(i64 %85, i64 %1)
  %90 = extractvalue { i64, i64 } %89, 0
  %91 = extractvalue { i64, i64 } %89, 1
  %92 = ptrtoint ptr %81 to i64
  %93 = getelementptr inbounds i8, ptr %81, i64 %77
  %94 = ptrtoint ptr %93 to i64
  call swiftcc void @"$eSw10copyMemory4fromySW_tF"(i64 %92, i64 %94, i64 %90, i64 %91)
  br label %100

95:                                               ; preds = %84
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.45.Not enough bits to represent the passed value" to i64), i64 45, i8 2, i64 ptrtoint (ptr @".str.20.Swift/Integers.swift" to i64), i64 20, i8 2, i64 3268)
  call void @llvm.trap()
  unreachable

96:                                               ; preds = %80
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.39.UnsafeBufferPointer with negative count" to i64), i64 39, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1401)
  call void @llvm.trap()
  unreachable

97:                                               ; preds = %67
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.45.Not enough bits to represent the passed value" to i64), i64 45, i8 2, i64 ptrtoint (ptr @".str.20.Swift/Integers.swift" to i64), i64 20, i8 2, i64 3268)
  call void @llvm.trap()
  unreachable

98:                                               ; preds = %11
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.45.Not enough bits to represent the passed value" to i64), i64 45, i8 2, i64 ptrtoint (ptr @".str.20.Swift/Integers.swift" to i64), i64 20, i8 2, i64 3268)
  call void @llvm.trap()
  unreachable

99:                                               ; preds = %entry
  %._value1 = getelementptr inbounds %Ts5UInt8V, ptr %0, i32 0, i32 0
  store i8 48, ptr %._value1, align 1
  br label %100

100:                                              ; preds = %99, %88
  %101 = phi i64 [ %77, %88 ], [ 1, %99 ]
  ret i64 %101

102:                                              ; preds = %6
  call void @llvm.trap()
  unreachable

103:                                              ; preds = %30
  call void @llvm.trap()
  unreachable

104:                                              ; preds = %35
  call void @llvm.trap()
  unreachable

105:                                              ; preds = %47
  call void @llvm.trap()
  unreachable

106:                                              ; preds = %61
  call void @llvm.trap()
  unreachable

107:                                              ; preds = %70
  call void @llvm.trap()
  unreachable

108:                                              ; preds = %75
  call void @llvm.trap()
  unreachable

109:                                              ; preds = %41
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc { i64, i64 } @"$eSw5start5countSwSvSg_SitcfC"(i64 %0, i64 %1) #0 {
entry:
  %2 = icmp slt i64 %1, 0
  %3 = call i1 @llvm.expect.i1(i1 %2, i1 false)
  br i1 %3, label %28, label %4

4:                                                ; preds = %entry
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = icmp eq i64 %0, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = inttoptr i64 %0 to ptr
  br label %11

10:                                               ; preds = %6
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.63.UnsafeMutableRawBufferPointer has a nil start and nonzero count" to i64), i64 63, i8 2, i64 ptrtoint (ptr @".str.34.Swift/UnsafeRawBufferPointer.swift" to i64), i64 34, i8 2, i64 106, i32 1)
  unreachable

11:                                               ; preds = %8
  %12 = phi ptr [ %9, %8 ]
  br label %20

13:                                               ; preds = %4
  %14 = icmp eq i64 %0, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = inttoptr i64 %0 to ptr
  br label %18

17:                                               ; preds = %13
  br label %24

18:                                               ; preds = %15
  %19 = phi ptr [ %16, %15 ]
  br label %20

20:                                               ; preds = %18, %11
  %21 = inttoptr i64 %0 to ptr
  %22 = getelementptr inbounds i8, ptr %21, i64 %1
  %23 = ptrtoint ptr %22 to i64
  br label %24

24:                                               ; preds = %17, %20
  %25 = phi i64 [ %23, %20 ], [ %0, %17 ]
  %26 = insertvalue { i64, i64 } undef, i64 %0, 0
  %27 = insertvalue { i64, i64 } %26, i64 %25, 1
  ret { i64, i64 } %27

28:                                               ; preds = %entry
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.49.UnsafeMutableRawBufferPointer with negative count" to i64), i64 49, i8 2, i64 ptrtoint (ptr @".str.34.Swift/UnsafeRawBufferPointer.swift" to i64), i64 34, i8 2, i64 105, i32 1)
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSw10copyMemory4fromySW_tF"(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
entry:
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %entry
  %6 = inttoptr i64 %0 to ptr
  br label %8

7:                                                ; preds = %entry
  br label %21

8:                                                ; preds = %5
  %9 = phi ptr [ %6, %5 ]
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = inttoptr i64 %1 to ptr
  br label %14

13:                                               ; preds = %8
  unreachable

14:                                               ; preds = %11
  %15 = phi ptr [ %12, %11 ]
  %16 = inttoptr i64 %1 to ptr
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %9 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv i64 %19, 1
  br label %21

21:                                               ; preds = %14, %7
  %22 = phi i64 [ 0, %7 ], [ %20, %14 ]
  %23 = icmp eq i64 %2, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = inttoptr i64 %2 to ptr
  br label %31

26:                                               ; preds = %21
  %27 = icmp slt i64 0, %22
  %28 = call i1 @llvm.expect.i1(i1 %27, i1 false)
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %47

30:                                               ; preds = %26
  br label %74

31:                                               ; preds = %24
  %32 = phi ptr [ %25, %24 ]
  %33 = icmp eq i64 %3, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = inttoptr i64 %3 to ptr
  br label %37

36:                                               ; preds = %31
  unreachable

37:                                               ; preds = %34
  %38 = phi ptr [ %35, %34 ]
  %39 = inttoptr i64 %3 to ptr
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %32 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv i64 %42, 1
  %44 = icmp slt i64 %43, %22
  %45 = call i1 @llvm.expect.i1(i1 %44, i1 false)
  br i1 %45, label %73, label %46

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %29
  %48 = icmp eq i64 %2, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = inttoptr i64 %2 to ptr
  br label %52

51:                                               ; preds = %47
  br label %72

52:                                               ; preds = %49
  %53 = phi ptr [ %50, %49 ]
  %54 = icmp eq i64 %0, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = inttoptr i64 %0 to ptr
  br label %58

57:                                               ; preds = %52
  br label %72

58:                                               ; preds = %55
  %59 = phi ptr [ %56, %55 ]
  %60 = inttoptr i64 %0 to ptr
  %61 = icmp eq i64 %1, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = inttoptr i64 %1 to ptr
  br label %65

64:                                               ; preds = %58
  unreachable

65:                                               ; preds = %62
  %66 = phi ptr [ %63, %62 ]
  %67 = inttoptr i64 %1 to ptr
  %68 = ptrtoint ptr %67 to i64
  %69 = ptrtoint ptr %60 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv i64 %70, 1
  call swiftcc void @"$eSv10copyMemory4from9byteCountySV_SitF"(ptr %59, i64 %71, ptr %53)
  br label %72

72:                                               ; preds = %65, %57, %51
  ret void

73:                                               ; preds = %37
  br label %74

74:                                               ; preds = %73, %30
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.69.UnsafeMutableRawBufferPointer.copyMemory source has too many elements" to i64), i64 69, i8 2, i64 ptrtoint (ptr @".str.34.Swift/UnsafeRawBufferPointer.swift" to i64), i64 34, i8 2, i64 495, i32 1)
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 %0, i64 %1, i8 %2, i64 %3, i64 %4, i8 %5, i64 %6, i64 %7, i8 %8, i64 %9, i32 %10) #0 {
entry:
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 %0, i64 %1, i8 %2, i64 %3, i64 %4, i8 %5, i64 %6, i64 %7, i8 %8, i64 %9)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSv10copyMemory4from9byteCountySV_SitF"(ptr %0, i64 %1, ptr %2) #0 {
entry:
  %3 = icmp slt i64 %1, 0
  %4 = call i1 @llvm.expect.i1(i1 %3, i1 false)
  br i1 %4, label %10, label %5

5:                                                ; preds = %entry
  %6 = icmp slt i64 %1, 0
  %7 = call i1 @llvm.expect.i1(i1 %6, i1 false)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  call void @llvm.memmove.p0.p0.i64(ptr %2, ptr %0, i64 %1, i1 false)
  ret void

9:                                                ; preds = %5
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.35.Negative value is not representable" to i64), i64 35, i8 2, i64 ptrtoint (ptr @".str.20.Swift/Integers.swift" to i64), i64 20, i8 2, i64 3049, i32 1)
  unreachable

10:                                               ; preds = %entry
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.54.UnsafeMutableRawPointer.copyMemory with negative count" to i64), i64 54, i8 2, i64 ptrtoint (ptr @".str.28.Swift/UnsafeRawPointer.swift" to i64), i64 28, i8 2, i64 1539, i32 1)
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 %0, i64 %1, i8 %2, i64 %3, i64 %4, i8 %5, i64 %6, i64 %7, i8 %8, i64 %9, i32 %10) #0 {
entry:
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 %0, i64 %1, i8 %2, i64 %3, i64 %4, i8 %5, i64 %6, i64 %7, i8 %8, i64 %9)
  call void @llvm.trap()
  unreachable
}

declare i32 @fsdevUnmountAll() #5

declare void @fsExit() #5

; Function Attrs: nounwind
define hidden swiftcc void @"$eSp10initialize4from5countySPyxG_SitFs4Int8V_Tg5"(ptr %0, i64 %1, ptr %2) #0 {
entry:
  %3 = icmp slt i64 %1, 0
  %4 = call i1 @llvm.expect.i1(i1 %3, i1 false)
  br i1 %4, label %26, label %5

5:                                                ; preds = %entry
  %6 = getelementptr inbounds %Ts4Int8V, ptr %2, i64 %1
  %7 = icmp ult ptr %0, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  br label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %Ts4Int8V, ptr %0, i64 %1
  %11 = icmp ult ptr %2, %10
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 false)
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %8
  %15 = ptrtoint ptr %0 to i64
  %16 = ptrtoint ptr %2 to i64
  br label %loop_header

loop_header:                                      ; preds = %loop_body, %14
  %17 = phi i64 [ 0, %14 ], [ %24, %loop_body ]
  %18 = icmp slt i64 %17, %1
  br i1 %18, label %loop_body, label %loop_exit

loop_body:                                        ; preds = %loop_header
  %19 = mul i64 %17, 1
  %20 = add i64 %15, %19
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %16, %19
  %23 = inttoptr i64 %22 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %21, i64 1, i1 false)
  %24 = add i64 %17, 1
  br label %loop_header

loop_exit:                                        ; preds = %loop_header
  ret void

25:                                               ; preds = %9
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.49.UnsafeMutablePointer.initialize overlapping range" to i64), i64 49, i8 2, i64 ptrtoint (ptr @".str.25.Swift/UnsafePointer.swift" to i64), i64 25, i8 2, i64 1097)
  call void @llvm.trap()
  unreachable

26:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.51.UnsafeMutablePointer.initialize with negative count" to i64), i64 51, i8 2, i64 ptrtoint (ptr @".str.25.Swift/UnsafePointer.swift" to i64), i64 25, i8 2, i64 1095)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nounwind
define hidden swiftcc i64 @"$eSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64 %0, i64 %1, i64 %2, ptr %3) #11 {
entry:
  %4 = call swiftcc i64 @"$eSKsE6_index_8offsetBy5IndexQzAD_SitFSS8UTF8ViewV_Tg5"(i64 %0, i64 %1, i64 %2, ptr %3)
  ret i64 %4
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64 %0, i64 %1, i64 %2, ptr %3) #0 {
entry:
  %bitcast = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %3, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %4 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %5 = and i64 %4, 1152921504606846976
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %entry
  %8 = and i64 %2, 576460752303423488
  %9 = icmp eq i64 %8, 0
  %10 = xor i1 %9, true
  br label %12

11:                                               ; preds = %entry
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i1 [ %10, %7 ], [ true, %11 ]
  %14 = and i64 %0, 12
  %15 = zext i1 %13 to i8
  %16 = sext i8 %15 to i64
  %17 = and i64 %16, 63
  %18 = shl i64 4, %17
  %19 = icmp eq i64 %14, %18
  %20 = call i1 @llvm.expect.i1(i1 %19, i1 false)
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %24

22:                                               ; preds = %12
  %23 = call swiftcc i64 @"$es11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %0, i64 %2, ptr %3)
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i64 [ %0, %21 ], [ %23, %22 ]
  %26 = and i64 %4, 2305843009213693952
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = and i64 %4, 1080863910568919040
  %30 = lshr i64 %29, 56
  br label %33

31:                                               ; preds = %24
  %32 = and i64 %2, 281474976710655
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i64 [ %30, %28 ], [ %32, %31 ]
  %35 = shl i64 %34, 16
  br i1 %6, label %42, label %36

36:                                               ; preds = %33
  %37 = and i64 %2, 576460752303423488
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %43

40:                                               ; preds = %36
  %41 = or i64 %35, 11
  br label %45

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %39
  %44 = or i64 %35, 7
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi i64 [ %44, %43 ], [ %41, %40 ]
  %47 = lshr i64 %46, 14
  %48 = lshr i64 %25, 14
  %49 = icmp ult i64 %47, %48
  %50 = call i1 @llvm.expect.i1(i1 %49, i1 false)
  br i1 %50, label %144, label %51

51:                                               ; preds = %45
  %52 = xor i1 %6, true
  %53 = call i1 @llvm.expect.i1(i1 %52, i1 false)
  %54 = call i1 @llvm.expect.i1(i1 %53, i1 false)
  br i1 %54, label %140, label %55

55:                                               ; preds = %51
  %56 = and i64 %4, 2305843009213693952
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = and i64 %4, 4611686018427387904
  %60 = icmp eq i64 %59, 0
  %61 = xor i1 %60, true
  br label %66

62:                                               ; preds = %55
  %63 = and i64 %2, -9223372036854775808
  %64 = icmp eq i64 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ %61, %58 ], [ %65, %62 ]
  br i1 %67, label %131, label %68

68:                                               ; preds = %66
  %69 = lshr i64 %25, 14
  %70 = and i64 %69, 3
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %84

73:                                               ; preds = %68
  %74 = and i64 %25, 1
  %75 = icmp eq i64 %74, 0
  %76 = call i1 @llvm.expect.i1(i1 %75, i1 false)
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %84

78:                                               ; preds = %73
  %79 = call swiftcc i64 @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEF"(i64 %25, i64 %2, ptr %3)
  %80 = or i64 %79, 1
  %81 = and i64 %80, -13
  %82 = and i64 %25, 12
  %83 = or i64 %81, %82
  br label %84

84:                                               ; preds = %78, %77, %72
  %85 = phi i64 [ %25, %72 ], [ %25, %77 ], [ %83, %78 ]
  %86 = lshr i64 %85, 14
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = icmp slt i64 %1, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %88
  %91 = icmp ult i64 %1, 64
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  br label %119

93:                                               ; preds = %90
  br label %128

94:                                               ; preds = %88
  br label %102

95:                                               ; preds = %84
  %96 = icmp slt i64 %1, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %95
  %98 = icmp ult i64 %1, 32
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  br label %119

100:                                              ; preds = %97
  br label %128

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %94
  %103 = phi i64 [ 64, %94 ], [ 32, %101 ]
  %104 = phi i64 [ %1, %94 ], [ %1, %101 ]
  %105 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %104)
  %106 = extractvalue { i64, i1 } %105, 0
  %107 = extractvalue { i64, i1 } %105, 1
  %108 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %106, i64 1)
  %109 = extractvalue { i64, i1 } %108, 0
  %110 = extractvalue { i64, i1 } %108, 1
  %111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 1)
  %112 = extractvalue { i64, i1 } %111, 0
  %113 = extractvalue { i64, i1 } %111, 1
  %114 = icmp slt i64 0, %103
  br i1 %114, label %116, label %115

115:                                              ; preds = %102
  br label %119

116:                                              ; preds = %102
  %117 = icmp ult i64 %112, %103
  br i1 %117, label %127, label %118

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %99, %118, %115, %92
  %120 = call swiftcc i64 @"$eSS9UTF16ViewV16_nativeGetOffset3forSiSS5IndexV_tF"(i64 %85, i64 %2, ptr %3)
  %121 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %120, i64 %1)
  %122 = extractvalue { i64, i1 } %121, 0
  %123 = extractvalue { i64, i1 } %121, 1
  %124 = call i1 @llvm.expect.i1(i1 %123, i1 false)
  br i1 %124, label %145, label %125

125:                                              ; preds = %119
  %126 = call swiftcc i64 @"$eSS9UTF16ViewV15_nativeGetIndex3forSS0E0VSi_tF"(i64 %122, i64 %2, ptr %3)
  br label %142

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %100, %127, %93
  %129 = call swiftcc i64 @"$eSKsE6_index_8offsetBy5IndexQzAD_SitFSS9UTF16ViewV_Tg5"(i64 %85, i64 %1, i64 %2, ptr %3)
  %130 = or i64 %129, 4
  br label %142

131:                                              ; preds = %66
  %132 = lshr i64 %25, 16
  %133 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %132, i64 %1)
  %134 = extractvalue { i64, i1 } %133, 0
  %135 = extractvalue { i64, i1 } %133, 1
  %136 = call i1 @llvm.expect.i1(i1 %135, i1 false)
  br i1 %136, label %146, label %137

137:                                              ; preds = %131
  %138 = shl i64 %134, 16
  %139 = or i64 %138, 13
  br label %142

140:                                              ; preds = %51
  %141 = call swiftcc i64 @"$eSS9UTF16ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64 %25, i64 %1, i64 %2, ptr %3)
  br label %142

142:                                              ; preds = %140, %137, %128, %125
  %143 = phi i64 [ %126, %125 ], [ %130, %128 ], [ %139, %137 ], [ %141, %140 ]
  ret i64 %143

144:                                              ; preds = %45
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.27.Swift/StringUTF16View.swift" to i64), i64 27, i8 2, i64 203)
  call void @llvm.trap()
  unreachable

145:                                              ; preds = %119
  call void @llvm.trap()
  unreachable

146:                                              ; preds = %131
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nounwind
define hidden swiftcc i64 @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEF"(i64 %0, i64 %1, ptr %2) #11 {
entry:
  %bitcast = alloca ptr, align 8
  %3 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %4 = alloca %TSi, align 8
  %5 = alloca ptr, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %6 = lshr i64 %0, 14
  %7 = and i64 %6, 3
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %entry
  br label %90

10:                                               ; preds = %entry
  %11 = lshr i64 %0, 16
  %12 = icmp eq i64 %11, 0
  %13 = call i1 @llvm.expect.i1(i1 %12, i1 false)
  br i1 %13, label %89, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %2, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %15 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %16 = and i64 %15, 1152921504606846976
  %17 = icmp eq i64 %16, 0
  %18 = xor i1 %17, true
  %19 = call i1 @llvm.expect.i1(i1 %18, i1 false)
  %20 = call i1 @llvm.expect.i1(i1 %19, i1 false)
  br i1 %20, label %75, label %21

21:                                               ; preds = %14
  %spsave = call ptr @llvm.stacksave.p0()
  %22 = alloca i8, i64 24, align 16
  %23 = getelementptr inbounds <{ %swift.refcounted, %TSS5IndexV }>, ptr %22, i32 0, i32 1
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %23, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  store i64 %0, ptr %._rawBits._value, align 8
  %24 = and i64 %15, 2305843009213693952
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %21
  %27 = and i64 %15, 1080863910568919040
  %28 = lshr i64 %27, 56
  call void @llvm.lifetime.start.p0(i64 16, ptr %3)
  %.elt = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %3, i32 0, i32 0
  %.elt1 = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %3, i32 0, i32 1
  %29 = call i64 @llvm.bswap.i64(i64 255)
  %30 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %29)
  %31 = extractvalue { i64, i1 } %30, 0
  %32 = extractvalue { i64, i1 } %30, 1
  %33 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %31, i64 1)
  %34 = extractvalue { i64, i1 } %33, 0
  %35 = extractvalue { i64, i1 } %33, 1
  %36 = and i64 %15, %34
  %.elt._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt, i32 0, i32 0
  store i64 %1, ptr %.elt._value, align 8
  %.elt1._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt1, i32 0, i32 0
  store i64 %36, ptr %.elt1._value, align 8
  %spsave2 = call ptr @llvm.stacksave.p0()
  %37 = alloca i8, i64 40, align 16
  %38 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %37, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %38, i32 0, i32 0
  store i64 %28, ptr %._value, align 8
  %39 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %37, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %39, i32 0, i32 0
  store ptr @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEFSiSRys5UInt8VGXEfU_TA", ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %39, i32 0, i32 1
  store ptr %22, ptr %.data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %4)
  %40 = ptrtoint ptr %3 to i64
  %41 = getelementptr inbounds i8, ptr %3, i64 16
  %42 = ptrtoint ptr %41 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr %5)
  call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TGq5TA"(ptr noalias nocapture sret(%TSi) %4, i64 %40, i64 %42, ptr swiftself %37, ptr noalias nocapture swifterror dereferenceable(8) %swifterror, ptr %5)
  %43 = load ptr, ptr %swifterror, align 8
  %44 = icmp ne ptr %43, null
  %45 = ptrtoint ptr %43 to i64
  br i1 %44, label %46, label %47

46:                                               ; preds = %26
  store ptr null, ptr %swifterror, align 8
  %toDestroy = load ptr, ptr %5, align 8
  call void @swift_release(ptr %toDestroy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %4)
  call void @llvm.stackrestore.p0(ptr %spsave2)
  call void @llvm.lifetime.end.p0(i64 16, ptr %3)
  unreachable

47:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  %._value3 = getelementptr inbounds %TSi, ptr %4, i32 0, i32 0
  %48 = load i64, ptr %._value3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %4)
  call void @llvm.stackrestore.p0(ptr %spsave2)
  call void @llvm.lifetime.end.p0(i64 16, ptr %3)
  call void @llvm.stackrestore.p0(ptr %spsave)
  br label %72

49:                                               ; preds = %21
  %50 = and i64 %1, 1152921504606846976
  %51 = icmp eq i64 %50, 0
  %52 = call i1 @llvm.expect.i1(i1 %51, i1 false)
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = and i64 %15, 1152921504606846975
  %55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 32)
  %56 = extractvalue { i64, i1 } %55, 0
  %57 = extractvalue { i64, i1 } %55, 1
  %58 = icmp eq i64 %56, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = inttoptr i64 %56 to ptr
  %61 = ptrtoint ptr %60 to i64
  %62 = and i64 %1, 281474976710655
  br label %68

63:                                               ; preds = %53
  unreachable

64:                                               ; preds = %49
  %65 = call swiftcc { i64, i64 } @"$es13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %1, ptr %2)
  %66 = extractvalue { i64, i64 } %65, 0
  %67 = extractvalue { i64, i64 } %65, 1
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi i64 [ %61, %59 ], [ %66, %64 ]
  %70 = phi i64 [ %62, %59 ], [ %67, %64 ]
  %71 = call swiftcc i64 @"$es12_scalarAlignySiSRys5UInt8VG_SitF"(i64 %69, i64 %70, i64 %11)
  call void @llvm.stackrestore.p0(ptr %spsave)
  br label %72

72:                                               ; preds = %68, %47
  %73 = phi i64 [ %48, %47 ], [ %71, %68 ]
  %74 = shl i64 %73, 16
  br label %93

75:                                               ; preds = %14
  %76 = and i64 %15, 2305843009213693952
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = and i64 %15, 1080863910568919040
  %80 = lshr i64 %79, 56
  br label %83

81:                                               ; preds = %75
  %82 = and i64 %1, 281474976710655
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i64 [ %80, %78 ], [ %82, %81 ]
  %85 = icmp eq i64 %11, %84
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = call swiftcc i64 @"$es11_StringGutsV18foreignScalarAlignySS5IndexVAEF"(i64 %0, i64 %1, ptr %2)
  br label %93

88:                                               ; preds = %83
  br label %93

89:                                               ; preds = %10
  br label %90

90:                                               ; preds = %89, %9
  %91 = lshr i64 %0, 16
  %92 = shl i64 %91, 16
  br label %93

93:                                               ; preds = %88, %86, %72, %90
  %94 = phi i64 [ %92, %90 ], [ %74, %72 ], [ %87, %86 ], [ %0, %88 ]
  ret i64 %94
}

; Function Attrs: nounwind
define hidden swiftcc { i32, i64 } @"$es11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF"(i64 %0, i64 %1, ptr %2) #0 {
entry:
  %bitcast = alloca ptr, align 8
  %3 = lshr i64 %0, 16
  %4 = call swiftcc i16 @"$es11_StringGutsV19_getForeignCodeUnit33_876ADFC1F0BAC893C8817BD9A4741513LL2ats6UInt16VSi_tF"(i64 %3, i64 %1, ptr %2)
  %5 = and i16 %4, -1024
  %6 = icmp eq i16 %5, -10240
  br i1 %6, label %13, label %7

7:                                                ; preds = %entry
  %8 = icmp eq i16 %5, -9216
  %9 = call i1 @llvm.expect.i1(i1 %8, i1 false)
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = zext i16 %4 to i32
  br label %53

12:                                               ; preds = %7
  br label %14

13:                                               ; preds = %entry
  br label %14

14:                                               ; preds = %13, %12
  %15 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %3, i64 1)
  %16 = extractvalue { i64, i1 } %15, 0
  %17 = extractvalue { i64, i1 } %15, 1
  %18 = icmp eq i16 %5, -9216
  br i1 %18, label %51, label %19

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %2, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %20 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %21 = and i64 %20, 2305843009213693952
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = and i64 %20, 1080863910568919040
  %25 = lshr i64 %24, 56
  br label %28

26:                                               ; preds = %19
  %27 = and i64 %1, 281474976710655
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i64 [ %25, %23 ], [ %27, %26 ]
  %30 = icmp eq i64 %16, %29
  %31 = call i1 @llvm.expect.i1(i1 %30, i1 false)
  br i1 %31, label %50, label %32

32:                                               ; preds = %28
  %33 = call swiftcc i16 @"$es11_StringGutsV19_getForeignCodeUnit33_876ADFC1F0BAC893C8817BD9A4741513LL2ats6UInt16VSi_tF"(i64 %16, i64 %1, ptr %2)
  %34 = and i16 %33, -1024
  %35 = icmp eq i16 %34, -9216
  %36 = call i1 @llvm.expect.i1(i1 %35, i1 true)
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %53

38:                                               ; preds = %32
  %39 = and i16 %4, 1023
  %40 = zext i16 %39 to i32
  %41 = shl i32 %40, 10
  %42 = and i16 %33, 1023
  %43 = zext i16 %42 to i32
  %44 = or i32 %41, %43
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 65536, i32 %44)
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  %48 = call i1 @llvm.expect.i1(i1 %47, i1 false)
  br i1 %48, label %58, label %49

49:                                               ; preds = %38
  br label %53

50:                                               ; preds = %28
  br label %52

51:                                               ; preds = %14
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %49, %37, %10
  %54 = phi i32 [ %11, %10 ], [ 65533, %37 ], [ %46, %49 ], [ 65533, %52 ]
  %55 = phi i64 [ 1, %10 ], [ 1, %37 ], [ 2, %49 ], [ 1, %52 ]
  %56 = insertvalue { i32, i64 } undef, i32 %54, 0
  %57 = insertvalue { i32, i64 } %56, i64 %55, 1
  ret { i32, i64 } %57

58:                                               ; preds = %38
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i1 @"$es16_ValidUTF8BufferV03_isA0ySbAB5IndexVF"(i32 %0, i32 %1) #0 {
entry:
  %2 = alloca %Ts16_ValidUTF8BufferV5IndexV, align 4
  %3 = alloca %Ts16_ValidUTF8BufferV5IndexV, align 4
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %2)
  %._biasedBits = getelementptr inbounds %Ts16_ValidUTF8BufferV5IndexV, ptr %2, i32 0, i32 0
  %._biasedBits._value = getelementptr inbounds %Ts6UInt32V, ptr %._biasedBits, i32 0, i32 0
  store i32 %0, ptr %._biasedBits._value, align 4
  %spsave = call ptr @llvm.stacksave.p0()
  %6 = alloca i8, i64 24, align 16
  %7 = getelementptr inbounds <{ %swift.refcounted, ptr }>, ptr %6, i32 0, i32 1
  store ptr %2, ptr %7, align 8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %26, %9
  %11 = phi i32 [ %1, %9 ], [ %15, %26 ]
  %12 = icmp eq i32 %11, 0
  %13 = call i1 @llvm.expect.i1(i1 %12, i1 false)
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = lshr i32 %11, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %3)
  %._biasedBits1 = getelementptr inbounds %Ts16_ValidUTF8BufferV5IndexV, ptr %3, i32 0, i32 0
  %._biasedBits1._value = getelementptr inbounds %Ts6UInt32V, ptr %._biasedBits1, i32 0, i32 0
  store i32 %11, ptr %._biasedBits1._value, align 4
  %16 = call swiftcc i1 @"$eSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SIys16_ValidUTF8BufferVG_TGq5TA"(ptr noalias nocapture dereferenceable(4) %3, ptr swiftself %6, ptr noalias nocapture swifterror dereferenceable(8) %swifterror)
  %17 = load ptr, ptr %swifterror, align 8
  %18 = icmp ne ptr %17, null
  %19 = ptrtoint ptr %17 to i64
  br i1 %18, label %20, label %22

20:                                               ; preds = %14
  %21 = phi ptr [ %17, %14 ]
  store ptr null, ptr %swifterror, align 8
  call void @swift_release(ptr %21) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %3)
  unreachable

22:                                               ; preds = %14
  %23 = phi i1 [ %16, %14 ]
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr %3)
  %25 = icmp eq i32 %15, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  br label %10

27:                                               ; preds = %24
  call void @llvm.stackrestore.p0(ptr %spsave)
  br label %31

28:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr %3)
  call void @llvm.stackrestore.p0(ptr %spsave)
  br label %32

29:                                               ; preds = %10
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.27.Swift/ValidUTF8Buffer.swift" to i64), i64 27, i8 2, i64 105, i32 1)
  unreachable

30:                                               ; preds = %5
  call void @llvm.stackrestore.p0(ptr %spsave)
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %28, %31
  %33 = phi i1 [ false, %31 ], [ true, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %2)
  br label %35

34:                                               ; preds = %entry
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i1 [ %33, %32 ], [ true, %34 ]
  ret i1 %36
}

; Function Attrs: nounwind
define linkonce_odr hidden swiftcc void @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEFSiSRys5UInt8VGXEfU_"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, i64 %3, ptr swiftself %4, ptr noalias nocapture swifterror dereferenceable(8) %5) #0 {
entry:
  %6 = lshr i64 %3, 16
  %7 = icmp eq i64 %6, %2
  %8 = call i1 @llvm.expect.i1(i1 %7, i1 false)
  br i1 %8, label %29, label %9

9:                                                ; preds = %entry
  br label %10

10:                                               ; preds = %25, %9
  %11 = phi i64 [ %6, %9 ], [ %27, %25 ]
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = inttoptr i64 %1 to ptr
  br label %16

15:                                               ; preds = %10
  unreachable

16:                                               ; preds = %13
  %17 = phi ptr [ %14, %13 ]
  %18 = inttoptr i64 %1 to ptr
  %19 = getelementptr inbounds %Ts5UInt8V, ptr %18, i64 %11
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %19, i32 0, i32 0
  %20 = load i8, ptr %._value, align 1
  %21 = and i8 %20, -64
  %22 = icmp eq i8 %21, -128
  %23 = call i1 @llvm.expect.i1(i1 %22, i1 false)
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %11, %16 ]
  br label %30

25:                                               ; preds = %16
  %26 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %11, i64 1)
  %27 = extractvalue { i64, i1 } %26, 0
  %28 = extractvalue { i64, i1 } %26, 1
  br label %10

29:                                               ; preds = %entry
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i64 [ %.lcssa2, %24 ], [ %6, %29 ]
  %._value1 = getelementptr inbounds %TSi, ptr %0, i32 0, i32 0
  store i64 %31, ptr %._value1, align 8
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TGq5"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, i64 %3, ptr %4, ptr %5, ptr swiftself %6, ptr noalias nocapture swifterror dereferenceable(8) %7, ptr %8) #0 {
entry:
  %9 = alloca %TSi, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %9)
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %entry
  %12 = inttoptr i64 %1 to ptr
  br label %14

13:                                               ; preds = %entry
  unreachable

14:                                               ; preds = %11
  %15 = phi ptr [ %12, %11 ]
  %16 = inttoptr i64 %1 to ptr
  %17 = ptrtoint ptr %16 to i64
  call swiftcc void %4(ptr noalias nocapture sret(%TSi) %9, i64 %17, i64 %3, ptr swiftself %5, ptr noalias nocapture swifterror dereferenceable(8) %7) #16
  %18 = load ptr, ptr %7, align 8
  %19 = icmp ne ptr %18, null
  %20 = ptrtoint ptr %18 to i64
  br i1 %19, label %21, label %23

21:                                               ; preds = %14
  %22 = phi ptr [ %18, %14 ]
  store ptr null, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  store ptr %22, ptr %8, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8
  ret void

23:                                               ; preds = %14
  %._value = getelementptr inbounds %TSi, ptr %9, i32 0, i32 0
  %24 = load i64, ptr %._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  %._value1 = getelementptr inbounds %TSi, ptr %0, i32 0, i32 0
  store i64 %24, ptr %._value1, align 8
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$es12_scalarAlignySiSRys5UInt8VG_SitF"(i64 %0, i64 %1, i64 %2) #0 {
entry:
  %3 = icmp eq i64 %2, %1
  %4 = call i1 @llvm.expect.i1(i1 %3, i1 false)
  br i1 %4, label %25, label %5

5:                                                ; preds = %entry
  br label %6

6:                                                ; preds = %21, %5
  %7 = phi i64 [ %2, %5 ], [ %23, %21 ]
  %8 = icmp eq i64 %0, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = inttoptr i64 %0 to ptr
  br label %12

11:                                               ; preds = %6
  unreachable

12:                                               ; preds = %9
  %13 = phi ptr [ %10, %9 ]
  %14 = inttoptr i64 %0 to ptr
  %15 = getelementptr inbounds %Ts5UInt8V, ptr %14, i64 %7
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %15, i32 0, i32 0
  %16 = load i8, ptr %._value, align 1
  %17 = and i8 %16, -64
  %18 = icmp eq i8 %17, -128
  %19 = call i1 @llvm.expect.i1(i1 %18, i1 false)
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  %.lcssa1 = phi i64 [ %7, %12 ]
  br label %26

21:                                               ; preds = %12
  %22 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %7, i64 1)
  %23 = extractvalue { i64, i1 } %22, 0
  %24 = extractvalue { i64, i1 } %22, 1
  br label %6

25:                                               ; preds = %entry
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i64 [ %.lcssa1, %20 ], [ %2, %25 ]
  ret i64 %27
}

; Function Attrs: noinline nounwind
define hidden swiftcc i64 @"$es11_StringGutsV18foreignScalarAlignySS5IndexVAEF"(i64 %0, i64 %1, ptr %2) #11 {
entry:
  %bitcast = alloca ptr, align 8
  %3 = lshr i64 %0, 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %2, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %4 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %5 = and i64 %4, 2305843009213693952
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %entry
  %8 = and i64 %4, 1080863910568919040
  %9 = lshr i64 %8, 56
  br label %12

10:                                               ; preds = %entry
  %11 = and i64 %1, 281474976710655
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i64 [ %9, %7 ], [ %11, %10 ]
  %14 = icmp eq i64 %3, %13
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = call swiftcc i16 @"$es11_StringGutsV34foreignErrorCorrectedUTF16CodeUnit2ats6UInt16VSS5IndexV_tF"(i64 %0, i64 %1, ptr %2)
  %17 = and i16 %16, -1024
  %18 = icmp eq i16 %17, -9216
  %19 = call i1 @llvm.expect.i1(i1 %18, i1 false)
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = or i64 %0, 1
  br label %30

22:                                               ; preds = %15
  %23 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %3, i64 1)
  %24 = extractvalue { i64, i1 } %23, 0
  %25 = extractvalue { i64, i1 } %23, 1
  %26 = shl i64 %24, 16
  %27 = or i64 %26, 1
  br label %30

28:                                               ; preds = %12
  %29 = or i64 %0, 1
  br label %30

30:                                               ; preds = %28, %22, %20
  %31 = phi i64 [ %21, %20 ], [ %27, %22 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: nounwind
define hidden swiftcc i16 @"$es11_StringGutsV19_getForeignCodeUnit33_876ADFC1F0BAC893C8817BD9A4741513LL2ats6UInt16VSi_tF"(i64 %0, i64 %1, ptr %2) #0 {
entry:
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.52.No foreign strings on Linux in this version of Swift" to i64), i64 52, i8 2, i64 ptrtoint (ptr @".str.26.Swift/UnicodeHelpers.swift" to i64), i64 26, i8 2, i64 253)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i16 @"$es11_StringGutsV34foreignErrorCorrectedUTF16CodeUnit2ats6UInt16VSS5IndexV_tF"(i64 %0, i64 %1, ptr %2) #0 {
entry:
  %bitcast = alloca ptr, align 8
  %3 = lshr i64 %0, 16
  %4 = call swiftcc i16 @"$es11_StringGutsV19_getForeignCodeUnit33_876ADFC1F0BAC893C8817BD9A4741513LL2ats6UInt16VSi_tF"(i64 %3, i64 %1, ptr %2)
  %5 = and i16 %4, -1024
  %6 = icmp eq i16 %5, -10240
  br i1 %6, label %12, label %7

7:                                                ; preds = %entry
  %8 = icmp eq i16 %5, -9216
  %9 = call i1 @llvm.expect.i1(i1 %8, i1 false)
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %50

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %entry
  br label %13

13:                                               ; preds = %12, %11
  br i1 %6, label %27, label %14

14:                                               ; preds = %13
  %15 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %3, i64 1)
  %16 = extractvalue { i64, i1 } %15, 0
  %17 = extractvalue { i64, i1 } %15, 1
  %18 = icmp slt i64 %16, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = call swiftcc i16 @"$es11_StringGutsV19_getForeignCodeUnit33_876ADFC1F0BAC893C8817BD9A4741513LL2ats6UInt16VSi_tF"(i64 %16, i64 %1, ptr %2)
  %21 = and i16 %20, -1024
  %22 = icmp eq i16 %21, -10240
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %26

24:                                               ; preds = %19
  br label %50

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %23
  br label %50

27:                                               ; preds = %13
  %28 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %3, i64 1)
  %29 = extractvalue { i64, i1 } %28, 0
  %30 = extractvalue { i64, i1 } %28, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %2, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %31 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %32 = and i64 %31, 2305843009213693952
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = and i64 %31, 1080863910568919040
  %36 = lshr i64 %35, 56
  br label %39

37:                                               ; preds = %27
  %38 = and i64 %1, 281474976710655
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i64 [ %36, %34 ], [ %38, %37 ]
  %41 = icmp slt i64 %29, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %48

43:                                               ; preds = %39
  %44 = call swiftcc i16 @"$es11_StringGutsV19_getForeignCodeUnit33_876ADFC1F0BAC893C8817BD9A4741513LL2ats6UInt16VSi_tF"(i64 %29, i64 %1, ptr %2)
  %45 = and i16 %44, -1024
  %46 = icmp eq i16 %45, -9216
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %42
  br label %50

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %48, %24, %26, %10
  %51 = phi i16 [ %4, %10 ], [ -3, %26 ], [ %4, %24 ], [ -3, %48 ], [ %4, %49 ]
  ret i16 %51
}

; Function Attrs: nounwind
define linkonce_odr hidden swiftcc i1 @"$eSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SIys16_ValidUTF8BufferVG_TGq5"(ptr noalias nocapture dereferenceable(4) %0, ptr noalias nocapture dereferenceable(4) %1, ptr swiftself %2, ptr noalias nocapture swifterror dereferenceable(8) %3) #0 {
entry:
  %._biasedBits = getelementptr inbounds %Ts16_ValidUTF8BufferV5IndexV, ptr %0, i32 0, i32 0
  %._biasedBits._value = getelementptr inbounds %Ts6UInt32V, ptr %._biasedBits, i32 0, i32 0
  %4 = load i32, ptr %._biasedBits._value, align 4
  %._biasedBits1 = getelementptr inbounds %Ts16_ValidUTF8BufferV5IndexV, ptr %1, i32 0, i32 0
  %._biasedBits1._value = getelementptr inbounds %Ts6UInt32V, ptr %._biasedBits1, i32 0, i32 0
  %5 = load i32, ptr %._biasedBits1._value, align 4
  %6 = icmp eq i32 %4, %5
  ret i1 %6
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSKsE6_index_8offsetBy5IndexQzAD_SitFSS8UTF8ViewV_Tg5"(i64 %0, i64 %1, i64 %2, ptr %3) #0 {
entry:
  %bitcast = alloca ptr, align 8
  %bitcast1 = alloca ptr, align 8
  %bitcast2 = alloca ptr, align 8
  %bitcast3 = alloca ptr, align 8
  %4 = icmp slt i64 %1, 0
  br i1 %4, label %97, label %5

5:                                                ; preds = %entry
  %6 = icmp slt i64 0, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  br label %189

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %96, %8
  %10 = phi i64 [ 0, %8 ], [ %46, %96 ]
  %11 = phi i64 [ %0, %8 ], [ %93, %96 ]
  %12 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %10, i64 1)
  %13 = extractvalue { i64, i1 } %12, 0
  %14 = extractvalue { i64, i1 } %12, 1
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %3, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %16 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %17 = and i64 %16, 1152921504606846976
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %26

20:                                               ; preds = %15
  br label %37

21:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast1)
  store ptr %3, ptr %bitcast1, align 8
  %bitcast1._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast1, i32 0, i32 0
  %22 = load i64, ptr %bitcast1._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast1)
  %23 = and i64 %22, 1152921504606846976
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i64 [ %13, %19 ], [ 9223372036854775807, %25 ]
  %28 = phi i64 [ %2, %19 ], [ %2, %25 ]
  %29 = phi ptr [ %3, %19 ], [ %3, %25 ]
  %30 = phi i64 [ %2, %19 ], [ %2, %25 ]
  %31 = phi ptr [ %3, %19 ], [ %3, %25 ]
  %32 = phi i64 [ %16, %19 ], [ %22, %25 ]
  %33 = and i64 %30, 576460752303423488
  %34 = icmp eq i64 %33, 0
  %35 = xor i1 %34, true
  br label %44

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %20
  %38 = phi i64 [ %13, %20 ], [ 9223372036854775807, %36 ]
  %39 = phi i64 [ %2, %20 ], [ %2, %36 ]
  %40 = phi ptr [ %3, %20 ], [ %3, %36 ]
  %41 = phi i64 [ %2, %20 ], [ %2, %36 ]
  %42 = phi ptr [ %3, %20 ], [ %3, %36 ]
  %43 = phi i64 [ %16, %20 ], [ %22, %36 ]
  br label %44

44:                                               ; preds = %37, %26
  %45 = phi i1 [ %35, %26 ], [ true, %37 ]
  %46 = phi i64 [ %27, %26 ], [ %38, %37 ]
  %47 = phi i64 [ %28, %26 ], [ %39, %37 ]
  %48 = phi ptr [ %29, %26 ], [ %40, %37 ]
  %49 = phi i64 [ %30, %26 ], [ %41, %37 ]
  %50 = phi ptr [ %31, %26 ], [ %42, %37 ]
  %51 = phi i64 [ %32, %26 ], [ %43, %37 ]
  %52 = phi i1 [ false, %26 ], [ true, %37 ]
  %53 = and i64 %11, 12
  %54 = zext i1 %45 to i8
  %55 = sext i8 %54 to i64
  %56 = and i64 %55, 63
  %57 = shl i64 4, %56
  %58 = icmp eq i64 %53, %57
  %59 = call i1 @llvm.expect.i1(i1 %58, i1 false)
  br i1 %59, label %61, label %60

60:                                               ; preds = %44
  br label %63

61:                                               ; preds = %44
  %62 = call swiftcc i64 @"$es11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %11, i64 %47, ptr %48)
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i64 [ %11, %60 ], [ %62, %61 ]
  %65 = call i1 @llvm.expect.i1(i1 %52, i1 true)
  %66 = call i1 @llvm.expect.i1(i1 %65, i1 true)
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = lshr i64 %64, 16
  %69 = and i64 %51, 2305843009213693952
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = and i64 %51, 1080863910568919040
  %73 = lshr i64 %72, 56
  br label %76

74:                                               ; preds = %67
  %75 = and i64 %49, 281474976710655
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i64 [ %73, %71 ], [ %75, %74 ]
  %78 = icmp slt i64 %68, %77
  %79 = call i1 @llvm.expect.i1(i1 %78, i1 true)
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.26.Swift/StringUTF8View.swift" to i64), i64 26, i8 2, i64 144)
  call void @llvm.trap()
  unreachable

81:                                               ; preds = %76
  %82 = call swiftcc i64 @"$eSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %64, i64 %2, ptr %3)
  br label %92

83:                                               ; preds = %63
  %84 = lshr i64 %64, 16
  %85 = shl i64 %84, 16
  %86 = lshr i64 %85, 16
  %87 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %86, i64 1)
  %88 = extractvalue { i64, i1 } %87, 0
  %89 = extractvalue { i64, i1 } %87, 1
  %90 = shl i64 %88, 16
  %91 = or i64 %90, 4
  br label %92

92:                                               ; preds = %83, %81
  %93 = phi i64 [ %82, %81 ], [ %91, %83 ]
  %94 = icmp slt i64 %46, %1
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  %.lcssa4 = phi i64 [ %93, %92 ]
  br label %189

96:                                               ; preds = %92
  br label %9

97:                                               ; preds = %entry
  br label %98

98:                                               ; preds = %191, %97
  %99 = phi i64 [ 0, %97 ], [ %135, %191 ]
  %100 = phi i64 [ %0, %97 ], [ %186, %191 ]
  %101 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %99, i64 -1)
  %102 = extractvalue { i64, i1 } %101, 0
  %103 = extractvalue { i64, i1 } %101, 1
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast2)
  store ptr %3, ptr %bitcast2, align 8
  %bitcast2._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast2, i32 0, i32 0
  %105 = load i64, ptr %bitcast2._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast2)
  %106 = and i64 %105, 1152921504606846976
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %115

109:                                              ; preds = %104
  br label %126

110:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast3)
  store ptr %3, ptr %bitcast3, align 8
  %bitcast3._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast3, i32 0, i32 0
  %111 = load i64, ptr %bitcast3._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast3)
  %112 = and i64 %111, 1152921504606846976
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %108
  %116 = phi i64 [ %102, %108 ], [ -9223372036854775808, %114 ]
  %117 = phi i64 [ %2, %108 ], [ %2, %114 ]
  %118 = phi ptr [ %3, %108 ], [ %3, %114 ]
  %119 = phi i64 [ %2, %108 ], [ %2, %114 ]
  %120 = phi ptr [ %3, %108 ], [ %3, %114 ]
  %121 = phi i64 [ %105, %108 ], [ %111, %114 ]
  %122 = and i64 %119, 576460752303423488
  %123 = icmp eq i64 %122, 0
  %124 = xor i1 %123, true
  br label %133

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %109
  %127 = phi i64 [ %102, %109 ], [ -9223372036854775808, %125 ]
  %128 = phi i64 [ %2, %109 ], [ %2, %125 ]
  %129 = phi ptr [ %3, %109 ], [ %3, %125 ]
  %130 = phi i64 [ %2, %109 ], [ %2, %125 ]
  %131 = phi ptr [ %3, %109 ], [ %3, %125 ]
  %132 = phi i64 [ %105, %109 ], [ %111, %125 ]
  br label %133

133:                                              ; preds = %126, %115
  %134 = phi i1 [ %124, %115 ], [ true, %126 ]
  %135 = phi i64 [ %116, %115 ], [ %127, %126 ]
  %136 = phi i64 [ %117, %115 ], [ %128, %126 ]
  %137 = phi ptr [ %118, %115 ], [ %129, %126 ]
  %138 = phi i64 [ %119, %115 ], [ %130, %126 ]
  %139 = phi ptr [ %120, %115 ], [ %131, %126 ]
  %140 = phi i64 [ %121, %115 ], [ %132, %126 ]
  %141 = phi i1 [ false, %115 ], [ true, %126 ]
  %142 = and i64 %100, 12
  %143 = zext i1 %134 to i8
  %144 = sext i8 %143 to i64
  %145 = and i64 %144, 63
  %146 = shl i64 4, %145
  %147 = icmp eq i64 %142, %146
  %148 = call i1 @llvm.expect.i1(i1 %147, i1 false)
  br i1 %148, label %150, label %149

149:                                              ; preds = %133
  br label %152

150:                                              ; preds = %133
  %151 = call swiftcc i64 @"$es11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %100, i64 %136, ptr %137)
  br label %152

152:                                              ; preds = %150, %149
  %153 = phi i64 [ %100, %149 ], [ %151, %150 ]
  %154 = lshr i64 %153, 14
  %155 = icmp eq i64 %154, 0
  %156 = call i1 @llvm.expect.i1(i1 %155, i1 false)
  br i1 %156, label %192, label %157

157:                                              ; preds = %152
  %158 = call i1 @llvm.expect.i1(i1 %141, i1 true)
  %159 = call i1 @llvm.expect.i1(i1 %158, i1 true)
  br i1 %159, label %176, label %160

160:                                              ; preds = %157
  %161 = lshr i64 %153, 16
  %162 = and i64 %140, 2305843009213693952
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = and i64 %140, 1080863910568919040
  %166 = lshr i64 %165, 56
  br label %169

167:                                              ; preds = %160
  %168 = and i64 %138, 281474976710655
  br label %169

169:                                              ; preds = %167, %164
  %170 = phi i64 [ %166, %164 ], [ %168, %167 ]
  %171 = icmp slt i64 %170, %161
  %172 = call i1 @llvm.expect.i1(i1 %171, i1 false)
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = call swiftcc i64 @"$eSS8UTF8ViewV13_foreignIndex6beforeSS0D0VAF_tF"(i64 %153, i64 %2, ptr %3)
  br label %185

175:                                              ; preds = %169
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.26.Swift/StringUTF8View.swift" to i64), i64 26, i8 2, i64 157)
  call void @llvm.trap()
  unreachable

176:                                              ; preds = %157
  %177 = lshr i64 %153, 16
  %178 = shl i64 %177, 16
  %179 = lshr i64 %178, 16
  %180 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %179, i64 1)
  %181 = extractvalue { i64, i1 } %180, 0
  %182 = extractvalue { i64, i1 } %180, 1
  %183 = shl i64 %181, 16
  %184 = or i64 %183, 4
  br label %185

185:                                              ; preds = %176, %173
  %186 = phi i64 [ %174, %173 ], [ %184, %176 ]
  %187 = icmp slt i64 %1, %135
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %.lcssa = phi i64 [ %186, %185 ]
  br label %189

189:                                              ; preds = %188, %95, %7
  %190 = phi i64 [ %0, %7 ], [ %.lcssa4, %95 ], [ %.lcssa, %188 ]
  ret i64 %190

191:                                              ; preds = %185
  br label %98

192:                                              ; preds = %152
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.26.Swift/StringUTF8View.swift" to i64), i64 26, i8 2, i64 152)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSS9UTF16ViewV16_nativeGetOffset3forSiSS5IndexV_tF"(i64 %0, i64 %1, ptr %2) #0 {
entry:
  %bitcast = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %2, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %3 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %4 = and i64 %3, 2305843009213693952
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %entry
  %7 = and i64 %3, 4611686018427387904
  %8 = icmp eq i64 %7, 0
  %9 = xor i1 %8, true
  br label %14

10:                                               ; preds = %entry
  %11 = and i64 %1, -9223372036854775808
  %12 = icmp eq i64 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i1 [ %9, %6 ], [ %13, %10 ]
  br i1 %15, label %120, label %16

16:                                               ; preds = %14
  %17 = lshr i64 %0, 14
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %119, label %19

19:                                               ; preds = %16
  %20 = and i64 %17, 3
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %34

23:                                               ; preds = %19
  %24 = and i64 %0, 1
  %25 = icmp eq i64 %24, 0
  %26 = call i1 @llvm.expect.i1(i1 %25, i1 false)
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %34

28:                                               ; preds = %23
  %29 = call swiftcc i64 @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEF"(i64 %0, i64 %1, ptr %2)
  %30 = or i64 %29, 1
  %31 = and i64 %30, -13
  %32 = and i64 %0, 12
  %33 = or i64 %31, %32
  br label %34

34:                                               ; preds = %28, %27, %22
  %35 = phi i64 [ %0, %22 ], [ %0, %27 ], [ %33, %28 ]
  %36 = lshr i64 %35, 16
  %37 = and i64 %3, -1152921504606846976
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %51

40:                                               ; preds = %34
  %41 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %3)
  %42 = extractvalue { i64, i1 } %41, 0
  %43 = extractvalue { i64, i1 } %41, 1
  %44 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 1)
  %45 = extractvalue { i64, i1 } %44, 0
  %46 = extractvalue { i64, i1 } %44, 1
  %47 = and i64 %45, %1
  %48 = and i64 %47, 2305843009213693952
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %39
  %52 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %3)
  %53 = extractvalue { i64, i1 } %52, 0
  %54 = extractvalue { i64, i1 } %52, 1
  %55 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %53, i64 1)
  %56 = extractvalue { i64, i1 } %55, 0
  %57 = extractvalue { i64, i1 } %55, 1
  %58 = and i64 %56, %1
  %59 = and i64 %58, 2305843009213693952
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %51
  %62 = and i64 %3, 1152921504606846975
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = inttoptr i64 %62 to ptr
  %66 = getelementptr inbounds %Ts15__StringStorageC, ptr %65, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts17_CapacityAndFlags33_A317BBF16F3432B4D1DDED3E0452DA4DLLV, ptr %66, i32 0, i32 0
  %._storage._value = getelementptr inbounds %Ts6UInt64V, ptr %._storage, i32 0, i32 0
  %67 = load i64, ptr %._storage._value, align 8
  %68 = and i64 %67, -9223372036854775808
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %75

71:                                               ; preds = %64
  br label %117

72:                                               ; preds = %61
  unreachable

73:                                               ; preds = %51
  br label %117

74:                                               ; preds = %40
  br label %75

75:                                               ; preds = %74, %70
  %76 = icmp slt i64 %36, 64
  br i1 %76, label %116, label %77

77:                                               ; preds = %75
  %78 = call swiftcc ptr @"$es11_StringGutsV24loadUnmanagedBreadcrumbss0D0Vys01_aE0CGyF"(i64 %1, ptr %2)
  br i1 %5, label %82, label %79

79:                                               ; preds = %77
  %80 = and i64 %3, 1080863910568919040
  %81 = lshr i64 %80, 56
  br label %84

82:                                               ; preds = %77
  %83 = and i64 %1, 281474976710655
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  %86 = shl i64 %85, 16
  %87 = and i64 %3, 1152921504606846976
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = and i64 %1, 576460752303423488
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %96

93:                                               ; preds = %89
  %94 = or i64 %86, 11
  br label %98

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %92
  %97 = or i64 %86, 7
  br label %98

98:                                               ; preds = %93, %96
  %99 = phi i64 [ %97, %96 ], [ %94, %93 ]
  %100 = lshr i64 %35, 14
  %101 = lshr i64 %99, 14
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = call swiftcc { i64, i64 } @"$es18_StringBreadcrumbsC13getBreadcrumb8forIndexSS0F0V10lowerBound_Si6offsettAF_tF"(i64 %35, ptr swiftself %78)
  %105 = extractvalue { i64, i64 } %104, 0
  %106 = extractvalue { i64, i64 } %104, 1
  %107 = call swiftcc i64 @"$eSS9UTF16ViewV14_utf16Distance4from2toSiSS5IndexV_AGtF"(i64 %105, i64 %35, i64 %1, ptr %2)
  %108 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %106, i64 %107)
  %109 = extractvalue { i64, i1 } %108, 0
  %110 = extractvalue { i64, i1 } %108, 1
  %111 = call i1 @llvm.expect.i1(i1 %110, i1 false)
  br i1 %111, label %124, label %112

112:                                              ; preds = %103
  br label %122

113:                                              ; preds = %98
  %114 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %78, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %114, i32 0, i32 0
  %115 = load i64, ptr %._value, align 8
  br label %122

116:                                              ; preds = %75
  br label %117

117:                                              ; preds = %73, %71, %116
  %118 = call swiftcc i64 @"$eSS9UTF16ViewV14_utf16Distance4from2toSiSS5IndexV_AGtF"(i64 15, i64 %35, i64 %1, ptr %2)
  br label %122

119:                                              ; preds = %16
  br label %122

120:                                              ; preds = %14
  %121 = lshr i64 %0, 16
  br label %122

122:                                              ; preds = %120, %119, %117, %113, %112
  %123 = phi i64 [ %109, %112 ], [ %115, %113 ], [ %118, %117 ], [ 0, %119 ], [ %121, %120 ]
  ret i64 %123

124:                                              ; preds = %103
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSS9UTF16ViewV15_nativeGetIndex3forSS0E0VSi_tF"(i64 %0, i64 %1, ptr %2) #0 {
entry:
  %bitcast = alloca ptr, align 8
  %3 = alloca %TSS5IndexV, align 8
  %4 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %5 = alloca %TSS5IndexV, align 8
  %6 = alloca ptr, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %7 = icmp slt i64 %0, 0
  %8 = call i1 @llvm.expect.i1(i1 %7, i1 false)
  br i1 %8, label %168, label %9

9:                                                ; preds = %entry
  %10 = icmp eq i64 %0, 0
  br i1 %10, label %165, label %11

11:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %2, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %12 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %13 = and i64 %12, 2305843009213693952
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = and i64 %12, 4611686018427387904
  %17 = icmp eq i64 %16, 0
  %18 = xor i1 %17, true
  br label %23

19:                                               ; preds = %11
  %20 = and i64 %1, -9223372036854775808
  %21 = icmp eq i64 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ %18, %15 ], [ %22, %19 ]
  br i1 %24, label %162, label %25

25:                                               ; preds = %23
  %26 = and i64 %12, -1152921504606846976
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %40

29:                                               ; preds = %25
  %30 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %12)
  %31 = extractvalue { i64, i1 } %30, 0
  %32 = extractvalue { i64, i1 } %30, 1
  %33 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %31, i64 1)
  %34 = extractvalue { i64, i1 } %33, 0
  %35 = extractvalue { i64, i1 } %33, 1
  %36 = and i64 %34, %1
  %37 = and i64 %36, 2305843009213693952
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %28
  %41 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %12)
  %42 = extractvalue { i64, i1 } %41, 0
  %43 = extractvalue { i64, i1 } %41, 1
  %44 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 1)
  %45 = extractvalue { i64, i1 } %44, 0
  %46 = extractvalue { i64, i1 } %44, 1
  %47 = and i64 %45, %1
  %48 = and i64 %47, 2305843009213693952
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %40
  %51 = and i64 %12, 1152921504606846975
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = inttoptr i64 %51 to ptr
  %55 = getelementptr inbounds %Ts15__StringStorageC, ptr %54, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts17_CapacityAndFlags33_A317BBF16F3432B4D1DDED3E0452DA4DLLV, ptr %55, i32 0, i32 0
  %._storage._value = getelementptr inbounds %Ts6UInt64V, ptr %._storage, i32 0, i32 0
  %56 = load i64, ptr %._storage._value, align 8
  %57 = and i64 %56, -9223372036854775808
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %64

60:                                               ; preds = %53
  br label %159

61:                                               ; preds = %50
  unreachable

62:                                               ; preds = %40
  br label %159

63:                                               ; preds = %29
  br label %64

64:                                               ; preds = %63, %59
  %65 = icmp slt i64 %0, 64
  br i1 %65, label %158, label %66

66:                                               ; preds = %64
  %67 = call swiftcc ptr @"$es11_StringGutsV24loadUnmanagedBreadcrumbss0D0Vys01_aE0CGyF"(i64 %1, ptr %2)
  %68 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %67, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %68, i32 0, i32 0
  %69 = load i64, ptr %._value, align 8
  %70 = icmp eq i64 %0, %69
  br i1 %70, label %138, label %71

71:                                               ; preds = %66
  %72 = sdiv i64 %0, 64
  %73 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %67, i32 0, i32 2
  %._buffer = getelementptr inbounds %TSa, ptr %73, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %74 = load ptr, ptr %._buffer._storage, align 8
  %75 = call swiftcc i1 @"$eSa29_hoistableIsNativeTypeCheckedSbyFSS5IndexV_Tg5"(ptr %74)
  call swiftcc void @"$eSa15_checkSubscript_20wasNativeTypeCheckeds16_DependenceTokenVSi_SbtFSS5IndexV_Tg5"(i64 %72, i1 %75, ptr %74)
  %76 = call swiftcc i64 @"$eSa11_getElement_20wasNativeTypeChecked22matchingSubscriptCheckxSi_Sbs16_DependenceTokenVtFSS5IndexV_Tg5"(i64 %72, i1 %75, ptr %74)
  %77 = srem i64 %0, 64
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %137, label %79

79:                                               ; preds = %71
  %spsave = call ptr @llvm.stacksave.p0()
  %80 = alloca i8, i64 32, align 16
  %81 = getelementptr inbounds <{ %swift.refcounted, %TSS5IndexV, %TSi }>, ptr %80, i32 0, i32 1
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %81, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  store i64 %76, ptr %._rawBits._value, align 8
  %82 = getelementptr inbounds <{ %swift.refcounted, %TSS5IndexV, %TSi }>, ptr %80, i32 0, i32 2
  %._value1 = getelementptr inbounds %TSi, ptr %82, i32 0, i32 0
  store i64 %77, ptr %._value1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %3)
  br i1 %14, label %106, label %83

83:                                               ; preds = %79
  %84 = and i64 %12, 1080863910568919040
  %85 = lshr i64 %84, 56
  call void @llvm.lifetime.start.p0(i64 16, ptr %4)
  %.elt = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %4, i32 0, i32 0
  %.elt2 = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %4, i32 0, i32 1
  %86 = call i64 @llvm.bswap.i64(i64 255)
  %87 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %86)
  %88 = extractvalue { i64, i1 } %87, 0
  %89 = extractvalue { i64, i1 } %87, 1
  %90 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 1)
  %91 = extractvalue { i64, i1 } %90, 0
  %92 = extractvalue { i64, i1 } %90, 1
  %93 = and i64 %12, %91
  %.elt._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt, i32 0, i32 0
  store i64 %1, ptr %.elt._value, align 8
  %.elt2._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt2, i32 0, i32 0
  store i64 %93, ptr %.elt2._value, align 8
  %spsave3 = call ptr @llvm.stacksave.p0()
  %94 = alloca i8, i64 40, align 16
  %95 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %94, i32 0, i32 1
  %._value4 = getelementptr inbounds %TSi, ptr %95, i32 0, i32 0
  store i64 %85, ptr %._value4, align 8
  %96 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %94, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %96, i32 0, i32 0
  store ptr @"$eSS9UTF16ViewV15_nativeGetIndex3forSS0E0VSi_tFAFSRys5UInt8VGXEfU1_TA", ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %96, i32 0, i32 1
  store ptr %80, ptr %.data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %5)
  %97 = ptrtoint ptr %4 to i64
  %98 = getelementptr inbounds i8, ptr %4, i64 16
  %99 = ptrtoint ptr %98 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr %6)
  call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_SS5IndexV_TG5TA"(ptr noalias nocapture sret(%TSS5IndexV) %5, i64 %97, i64 %99, ptr swiftself %94, ptr noalias nocapture swifterror dereferenceable(8) %swifterror, ptr %6)
  %100 = load ptr, ptr %swifterror, align 8
  %101 = icmp ne ptr %100, null
  %102 = ptrtoint ptr %100 to i64
  br i1 %101, label %103, label %104

103:                                              ; preds = %83
  store ptr null, ptr %swifterror, align 8
  %toDestroy = load ptr, ptr %6, align 8
  call void @swift_release(ptr %toDestroy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  call void @llvm.stackrestore.p0(ptr %spsave3)
  call void @llvm.lifetime.end.p0(i64 16, ptr %4)
  br label %133

104:                                              ; preds = %83
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  %._rawBits5 = getelementptr inbounds %TSS5IndexV, ptr %5, i32 0, i32 0
  %._rawBits5._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits5, i32 0, i32 0
  %105 = load i64, ptr %._rawBits5._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  call void @llvm.stackrestore.p0(ptr %spsave3)
  call void @llvm.lifetime.end.p0(i64 16, ptr %4)
  %._rawBits6 = getelementptr inbounds %TSS5IndexV, ptr %3, i32 0, i32 0
  %._rawBits6._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits6, i32 0, i32 0
  store i64 %105, ptr %._rawBits6._value, align 8
  br label %135

106:                                              ; preds = %79
  %107 = and i64 %1, 1152921504606846976
  %108 = icmp eq i64 %107, 0
  %109 = call i1 @llvm.expect.i1(i1 %108, i1 false)
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = and i64 %12, 1152921504606846975
  %112 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 32)
  %113 = extractvalue { i64, i1 } %112, 0
  %114 = extractvalue { i64, i1 } %112, 1
  %115 = icmp eq i64 %113, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = inttoptr i64 %113 to ptr
  %118 = ptrtoint ptr %117 to i64
  %119 = and i64 %1, 281474976710655
  br label %125

120:                                              ; preds = %110
  unreachable

121:                                              ; preds = %106
  %122 = call swiftcc { i64, i64 } @"$es13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %1, ptr %2)
  %123 = extractvalue { i64, i64 } %122, 0
  %124 = extractvalue { i64, i64 } %122, 1
  br label %125

125:                                              ; preds = %121, %116
  %126 = phi i64 [ %118, %116 ], [ %123, %121 ]
  %127 = phi i64 [ %119, %116 ], [ %124, %121 ]
  call swiftcc void @"$eSS9UTF16ViewV15_nativeGetIndex3forSS0E0VSi_tFAFSRys5UInt8VGXEfU1_"(ptr noalias nocapture sret(%TSS5IndexV) %3, i64 %126, i64 %127, i64 %76, i64 %77, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %swifterror)
  %128 = load ptr, ptr %swifterror, align 8
  %129 = icmp ne ptr %128, null
  %130 = ptrtoint ptr %128 to i64
  br i1 %129, label %131, label %134

131:                                              ; preds = %125
  %132 = phi ptr [ %128, %125 ]
  store ptr null, ptr %swifterror, align 8
  call void @swift_release(ptr %132) #4
  br label %133

133:                                              ; preds = %131, %103
  unreachable

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %104
  %._rawBits7 = getelementptr inbounds %TSS5IndexV, ptr %3, i32 0, i32 0
  %._rawBits7._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits7, i32 0, i32 0
  %136 = load i64, ptr %._rawBits7._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %3)
  call void @llvm.stackrestore.p0(ptr %spsave)
  br label %166

137:                                              ; preds = %71
  br label %166

138:                                              ; preds = %66
  br i1 %14, label %142, label %139

139:                                              ; preds = %138
  %140 = and i64 %12, 1080863910568919040
  %141 = lshr i64 %140, 56
  br label %144

142:                                              ; preds = %138
  %143 = and i64 %1, 281474976710655
  br label %144

144:                                              ; preds = %142, %139
  %145 = phi i64 [ %141, %139 ], [ %143, %142 ]
  %146 = shl i64 %145, 16
  %147 = and i64 %12, 1152921504606846976
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = and i64 %1, 576460752303423488
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  br label %156

153:                                              ; preds = %149
  %154 = or i64 %146, 11
  br label %166

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %152
  %157 = or i64 %146, 7
  br label %166

158:                                              ; preds = %64
  br label %159

159:                                              ; preds = %62, %60, %158
  %160 = call swiftcc i64 @"$eSKsE6_index_8offsetBy5IndexQzAD_SitFSS9UTF16ViewV_Tg5"(i64 15, i64 %0, i64 %1, ptr %2)
  %161 = or i64 %160, 4
  br label %166

162:                                              ; preds = %23
  %163 = shl i64 %0, 16
  %164 = or i64 %163, 13
  br label %166

165:                                              ; preds = %9
  br label %166

166:                                              ; preds = %165, %162, %159, %153, %156, %137, %135
  %167 = phi i64 [ %136, %135 ], [ %76, %137 ], [ %157, %156 ], [ %154, %153 ], [ %161, %159 ], [ %164, %162 ], [ 15, %165 ]
  ret i64 %167

168:                                              ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.27.Swift/StringUTF16View.swift" to i64), i64 27, i8 2, i64 883)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSKsE6_index_8offsetBy5IndexQzAD_SitFSS9UTF16ViewV_Tg5"(i64 %0, i64 %1, i64 %2, ptr %3) #0 {
entry:
  %bitcast = alloca ptr, align 8
  %bitcast1 = alloca ptr, align 8
  %4 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %5 = alloca %Ts5UInt8V, align 1
  %6 = alloca ptr, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %bitcast7 = alloca ptr, align 8
  %bitcast8 = alloca ptr, align 8
  %bitcast9 = alloca ptr, align 8
  %7 = icmp slt i64 %1, 0
  br i1 %7, label %226, label %8

8:                                                ; preds = %entry
  %9 = icmp slt i64 0, %1
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  br label %395

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %225, %11
  %13 = phi i64 [ 0, %11 ], [ %49, %225 ]
  %14 = phi i64 [ %0, %11 ], [ %222, %225 ]
  %15 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %13, i64 1)
  %16 = extractvalue { i64, i1 } %15, 0
  %17 = extractvalue { i64, i1 } %15, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %3, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %19 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %20 = and i64 %19, 1152921504606846976
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %29

23:                                               ; preds = %18
  br label %40

24:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast7)
  store ptr %3, ptr %bitcast7, align 8
  %bitcast7._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast7, i32 0, i32 0
  %25 = load i64, ptr %bitcast7._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast7)
  %26 = and i64 %25, 1152921504606846976
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i64 [ %16, %22 ], [ 9223372036854775807, %28 ]
  %31 = phi i64 [ %2, %22 ], [ %2, %28 ]
  %32 = phi ptr [ %3, %22 ], [ %3, %28 ]
  %33 = phi i64 [ %2, %22 ], [ %2, %28 ]
  %34 = phi ptr [ %3, %22 ], [ %3, %28 ]
  %35 = phi i64 [ %19, %22 ], [ %25, %28 ]
  %36 = and i64 %33, 576460752303423488
  %37 = icmp eq i64 %36, 0
  %38 = xor i1 %37, true
  br label %47

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %23
  %41 = phi i64 [ %16, %23 ], [ 9223372036854775807, %39 ]
  %42 = phi i64 [ %2, %23 ], [ %2, %39 ]
  %43 = phi ptr [ %3, %23 ], [ %3, %39 ]
  %44 = phi i64 [ %2, %23 ], [ %2, %39 ]
  %45 = phi ptr [ %3, %23 ], [ %3, %39 ]
  %46 = phi i64 [ %19, %23 ], [ %25, %39 ]
  br label %47

47:                                               ; preds = %40, %29
  %48 = phi i1 [ %38, %29 ], [ true, %40 ]
  %49 = phi i64 [ %30, %29 ], [ %41, %40 ]
  %50 = phi i64 [ %31, %29 ], [ %42, %40 ]
  %51 = phi ptr [ %32, %29 ], [ %43, %40 ]
  %52 = phi i64 [ %33, %29 ], [ %44, %40 ]
  %53 = phi ptr [ %34, %29 ], [ %45, %40 ]
  %54 = phi i64 [ %35, %29 ], [ %46, %40 ]
  %55 = phi i1 [ false, %29 ], [ true, %40 ]
  %56 = and i64 %14, 12
  %57 = zext i1 %48 to i8
  %58 = sext i8 %57 to i64
  %59 = and i64 %58, 63
  %60 = shl i64 4, %59
  %61 = icmp eq i64 %56, %60
  %62 = call i1 @llvm.expect.i1(i1 %61, i1 false)
  br i1 %62, label %64, label %63

63:                                               ; preds = %47
  br label %66

64:                                               ; preds = %47
  %65 = call swiftcc i64 @"$es11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %14, i64 %50, ptr %51)
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i64 [ %14, %63 ], [ %65, %64 ]
  %68 = lshr i64 %67, 16
  %69 = and i64 %54, 2305843009213693952
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = and i64 %54, 1080863910568919040
  %73 = lshr i64 %72, 56
  br label %76

74:                                               ; preds = %66
  %75 = and i64 %52, 281474976710655
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i64 [ %73, %71 ], [ %75, %74 ]
  %78 = icmp slt i64 %68, %77
  %79 = call i1 @llvm.expect.i1(i1 %78, i1 true)
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.27.Swift/StringUTF16View.swift" to i64), i64 27, i8 2, i64 147)
  call void @llvm.trap()
  unreachable

81:                                               ; preds = %76
  %82 = xor i1 %55, true
  %83 = call i1 @llvm.expect.i1(i1 %82, i1 false)
  %84 = call i1 @llvm.expect.i1(i1 %83, i1 false)
  br i1 %84, label %219, label %85

85:                                               ; preds = %81
  %86 = and i64 %54, 2305843009213693952
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = and i64 %54, 4611686018427387904
  %90 = icmp eq i64 %89, 0
  %91 = xor i1 %90, true
  br label %96

92:                                               ; preds = %85
  %93 = and i64 %52, -9223372036854775808
  %94 = icmp eq i64 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i1 [ %91, %88 ], [ %95, %92 ]
  br i1 %97, label %212, label %98

98:                                               ; preds = %96
  %99 = lshr i64 %67, 14
  %100 = and i64 %99, 3
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  br label %114

103:                                              ; preds = %98
  %104 = and i64 %67, 1
  %105 = icmp eq i64 %104, 0
  %106 = call i1 @llvm.expect.i1(i1 %105, i1 false)
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %114

108:                                              ; preds = %103
  %109 = call swiftcc i64 @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEF"(i64 %67, i64 %50, ptr %51)
  %110 = or i64 %109, 1
  %111 = and i64 %110, -13
  %112 = and i64 %67, 12
  %113 = or i64 %111, %112
  br label %114

114:                                              ; preds = %108, %107, %102
  %115 = phi i64 [ %67, %102 ], [ %67, %107 ], [ %113, %108 ]
  %116 = lshr i64 %115, 16
  %spsave = call ptr @llvm.stacksave.p0()
  %117 = alloca i8, i64 24, align 16
  %118 = getelementptr inbounds <{ %swift.refcounted, %TSi }>, ptr %117, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %118, i32 0, i32 0
  store i64 %116, ptr %._value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast1)
  store ptr %51, ptr %bitcast1, align 8
  %bitcast1._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast1, i32 0, i32 0
  %119 = load i64, ptr %bitcast1._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast1)
  %120 = and i64 %119, 2305843009213693952
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %145, label %122

122:                                              ; preds = %114
  %123 = and i64 %119, 1080863910568919040
  %124 = lshr i64 %123, 56
  call void @llvm.lifetime.start.p0(i64 16, ptr %4)
  %.elt = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %4, i32 0, i32 0
  %.elt2 = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %4, i32 0, i32 1
  %125 = call i64 @llvm.bswap.i64(i64 255)
  %126 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %125)
  %127 = extractvalue { i64, i1 } %126, 0
  %128 = extractvalue { i64, i1 } %126, 1
  %129 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %127, i64 1)
  %130 = extractvalue { i64, i1 } %129, 0
  %131 = extractvalue { i64, i1 } %129, 1
  %132 = and i64 %119, %130
  %.elt._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt, i32 0, i32 0
  store i64 %50, ptr %.elt._value, align 8
  %.elt2._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt2, i32 0, i32 0
  store i64 %132, ptr %.elt2._value, align 8
  %spsave3 = call ptr @llvm.stacksave.p0()
  %133 = alloca i8, i64 40, align 16
  %134 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %133, i32 0, i32 1
  %._value4 = getelementptr inbounds %TSi, ptr %134, i32 0, i32 0
  store i64 %124, ptr %._value4, align 8
  %135 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %133, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %135, i32 0, i32 0
  store ptr @"$es11_StringGutsV20fastUTF8ScalarLength10startingAtS2i_tFs5UInt8VSRyAFGXEfU_TA", ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %135, i32 0, i32 1
  store ptr %117, ptr %.data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %5)
  %136 = ptrtoint ptr %4 to i64
  %137 = getelementptr inbounds i8, ptr %4, i64 16
  %138 = ptrtoint ptr %137 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr %6)
  call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5TA.1"(ptr noalias nocapture sret(%Ts5UInt8V) %5, i64 %136, i64 %138, ptr swiftself %133, ptr noalias nocapture swifterror dereferenceable(8) %swifterror, ptr %6)
  %139 = load ptr, ptr %swifterror, align 8
  %140 = icmp ne ptr %139, null
  %141 = ptrtoint ptr %139 to i64
  br i1 %140, label %142, label %143

142:                                              ; preds = %122
  %spsave3.lcssa = phi ptr [ %spsave3, %122 ]
  store ptr null, ptr %swifterror, align 8
  %toDestroy = load ptr, ptr %6, align 8
  call void @swift_release(ptr %toDestroy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr %5)
  call void @llvm.stackrestore.p0(ptr %spsave3.lcssa)
  call void @llvm.lifetime.end.p0(i64 16, ptr %4)
  unreachable

143:                                              ; preds = %122
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  %._value5 = getelementptr inbounds %Ts5UInt8V, ptr %5, i32 0, i32 0
  %144 = load i8, ptr %._value5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %5)
  call void @llvm.stackrestore.p0(ptr %spsave3)
  call void @llvm.lifetime.end.p0(i64 16, ptr %4)
  call void @llvm.stackrestore.p0(ptr %spsave)
  br label %174

145:                                              ; preds = %114
  %146 = and i64 %50, 1152921504606846976
  %147 = icmp eq i64 %146, 0
  %148 = call i1 @llvm.expect.i1(i1 %147, i1 false)
  br i1 %148, label %159, label %149

149:                                              ; preds = %145
  %150 = and i64 %119, 1152921504606846975
  %151 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %150, i64 32)
  %152 = extractvalue { i64, i1 } %151, 0
  %153 = extractvalue { i64, i1 } %151, 1
  %154 = icmp eq i64 %152, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = inttoptr i64 %152 to ptr
  %157 = ptrtoint ptr %156 to i64
  br label %169

158:                                              ; preds = %149
  unreachable

159:                                              ; preds = %145
  %160 = call swiftcc { i64, i64 } @"$es13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %50, ptr %51)
  %161 = extractvalue { i64, i64 } %160, 0
  %162 = extractvalue { i64, i64 } %160, 1
  %163 = icmp eq i64 %161, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %159
  %165 = inttoptr i64 %161 to ptr
  br label %167

166:                                              ; preds = %159
  unreachable

167:                                              ; preds = %164
  %168 = phi ptr [ %165, %164 ]
  br label %169

169:                                              ; preds = %167, %155
  %170 = phi i64 [ %157, %155 ], [ %161, %167 ]
  %171 = inttoptr i64 %170 to ptr
  %172 = getelementptr inbounds %Ts5UInt8V, ptr %171, i64 %116
  %._value6 = getelementptr inbounds %Ts5UInt8V, ptr %172, i32 0, i32 0
  %173 = load i8, ptr %._value6, align 1
  call void @llvm.stackrestore.p0(ptr %spsave)
  br label %174

174:                                              ; preds = %169, %143
  %175 = phi i8 [ %144, %143 ], [ %173, %169 ]
  %176 = and i8 %175, -128
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %202, label %178

178:                                              ; preds = %174
  %179 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 0, i8 %175)
  %180 = extractvalue { i8, i1 } %179, 0
  %181 = extractvalue { i8, i1 } %179, 1
  %182 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 %180, i8 1)
  %183 = extractvalue { i8, i1 } %182, 0
  %184 = extractvalue { i8, i1 } %182, 1
  %185 = call i8 @llvm.ctlz.i8(i8 %183, i1 false)
  %186 = zext i8 %185 to i64
  %187 = icmp eq i64 %186, 4
  br i1 %187, label %189, label %188

188:                                              ; preds = %178
  br label %203

189:                                              ; preds = %178
  %190 = lshr i64 %115, 14
  %191 = and i64 %190, 3
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  br label %203

194:                                              ; preds = %189
  %195 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %191, i64 1)
  %196 = extractvalue { i64, i1 } %195, 0
  %197 = extractvalue { i64, i1 } %195, 1
  %198 = shl i64 %116, 16
  %199 = shl i64 %196, 14
  %200 = or i64 %198, %199
  %201 = or i64 %200, 4
  br label %221

202:                                              ; preds = %174
  br label %203

203:                                              ; preds = %202, %193, %188
  %204 = phi i64 [ %186, %188 ], [ %186, %193 ], [ 1, %202 ]
  %205 = shl i64 %116, 16
  %206 = lshr i64 %205, 16
  %207 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %206, i64 %204)
  %208 = extractvalue { i64, i1 } %207, 0
  %209 = extractvalue { i64, i1 } %207, 1
  %210 = shl i64 %208, 16
  %211 = or i64 %210, 5
  br label %221

212:                                              ; preds = %96
  %213 = lshr i64 %67, 16
  %214 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %213, i64 1)
  %215 = extractvalue { i64, i1 } %214, 0
  %216 = extractvalue { i64, i1 } %214, 1
  %217 = shl i64 %215, 16
  %218 = or i64 %217, 13
  br label %221

219:                                              ; preds = %81
  %220 = call swiftcc i64 @"$eSS9UTF16ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %67, i64 %2, ptr %3)
  br label %221

221:                                              ; preds = %219, %212, %194, %203
  %222 = phi i64 [ %211, %203 ], [ %201, %194 ], [ %218, %212 ], [ %220, %219 ]
  %223 = icmp slt i64 %49, %1
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  %.lcssa10 = phi i64 [ %222, %221 ]
  br label %395

225:                                              ; preds = %221
  br label %12

226:                                              ; preds = %entry
  br label %227

227:                                              ; preds = %397, %226
  %228 = phi i64 [ 0, %226 ], [ %264, %397 ]
  %229 = phi i64 [ %0, %226 ], [ %392, %397 ]
  %230 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %228, i64 -1)
  %231 = extractvalue { i64, i1 } %230, 0
  %232 = extractvalue { i64, i1 } %230, 1
  br i1 %232, label %239, label %233

233:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast8)
  store ptr %3, ptr %bitcast8, align 8
  %bitcast8._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast8, i32 0, i32 0
  %234 = load i64, ptr %bitcast8._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast8)
  %235 = and i64 %234, 1152921504606846976
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  br label %244

238:                                              ; preds = %233
  br label %255

239:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast9)
  store ptr %3, ptr %bitcast9, align 8
  %bitcast9._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast9, i32 0, i32 0
  %240 = load i64, ptr %bitcast9._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast9)
  %241 = and i64 %240, 1152921504606846976
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %254, label %243

243:                                              ; preds = %239
  br label %244

244:                                              ; preds = %243, %237
  %245 = phi i64 [ %231, %237 ], [ -9223372036854775808, %243 ]
  %246 = phi i64 [ %2, %237 ], [ %2, %243 ]
  %247 = phi ptr [ %3, %237 ], [ %3, %243 ]
  %248 = phi i64 [ %2, %237 ], [ %2, %243 ]
  %249 = phi ptr [ %3, %237 ], [ %3, %243 ]
  %250 = phi i64 [ %234, %237 ], [ %240, %243 ]
  %251 = and i64 %248, 576460752303423488
  %252 = icmp eq i64 %251, 0
  %253 = xor i1 %252, true
  br label %262

254:                                              ; preds = %239
  br label %255

255:                                              ; preds = %254, %238
  %256 = phi i64 [ %231, %238 ], [ -9223372036854775808, %254 ]
  %257 = phi i64 [ %2, %238 ], [ %2, %254 ]
  %258 = phi ptr [ %3, %238 ], [ %3, %254 ]
  %259 = phi i64 [ %2, %238 ], [ %2, %254 ]
  %260 = phi ptr [ %3, %238 ], [ %3, %254 ]
  %261 = phi i64 [ %234, %238 ], [ %240, %254 ]
  br label %262

262:                                              ; preds = %255, %244
  %263 = phi i1 [ %253, %244 ], [ true, %255 ]
  %264 = phi i64 [ %245, %244 ], [ %256, %255 ]
  %265 = phi i64 [ %246, %244 ], [ %257, %255 ]
  %266 = phi ptr [ %247, %244 ], [ %258, %255 ]
  %267 = phi i64 [ %248, %244 ], [ %259, %255 ]
  %268 = phi ptr [ %249, %244 ], [ %260, %255 ]
  %269 = phi i64 [ %250, %244 ], [ %261, %255 ]
  %270 = phi i1 [ false, %244 ], [ true, %255 ]
  %271 = and i64 %229, 12
  %272 = zext i1 %263 to i8
  %273 = sext i8 %272 to i64
  %274 = and i64 %273, 63
  %275 = shl i64 4, %274
  %276 = icmp eq i64 %271, %275
  %277 = call i1 @llvm.expect.i1(i1 %276, i1 false)
  br i1 %277, label %279, label %278

278:                                              ; preds = %262
  br label %281

279:                                              ; preds = %262
  %280 = call swiftcc i64 @"$es11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %229, i64 %265, ptr %266)
  br label %281

281:                                              ; preds = %279, %278
  %282 = phi i64 [ %229, %278 ], [ %280, %279 ]
  %283 = lshr i64 %282, 14
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %399, label %285

285:                                              ; preds = %281
  %286 = and i64 %269, 2305843009213693952
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = and i64 %269, 1080863910568919040
  %290 = lshr i64 %289, 56
  br label %293

291:                                              ; preds = %285
  %292 = and i64 %267, 281474976710655
  br label %293

293:                                              ; preds = %291, %288
  %294 = phi i64 [ %290, %288 ], [ %292, %291 ]
  %295 = shl i64 %294, 16
  br i1 %270, label %302, label %296

296:                                              ; preds = %293
  %297 = and i64 %267, 576460752303423488
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %296
  br label %303

300:                                              ; preds = %296
  %301 = or i64 %295, 11
  br label %305

302:                                              ; preds = %293
  br label %303

303:                                              ; preds = %302, %299
  %304 = or i64 %295, 7
  br label %305

305:                                              ; preds = %300, %303
  %306 = phi i64 [ %304, %303 ], [ %301, %300 ]
  %307 = lshr i64 %306, 14
  %308 = icmp ult i64 %307, %283
  %309 = call i1 @llvm.expect.i1(i1 %308, i1 false)
  br i1 %309, label %398, label %310

310:                                              ; preds = %305
  %311 = xor i1 %270, true
  %312 = call i1 @llvm.expect.i1(i1 %311, i1 false)
  %313 = call i1 @llvm.expect.i1(i1 %312, i1 false)
  br i1 %313, label %389, label %314

314:                                              ; preds = %310
  %315 = and i64 %269, 2305843009213693952
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %314
  %318 = and i64 %269, 4611686018427387904
  %319 = icmp eq i64 %318, 0
  %320 = xor i1 %319, true
  br label %325

321:                                              ; preds = %314
  %322 = and i64 %267, -9223372036854775808
  %323 = icmp eq i64 %322, 0
  %324 = xor i1 %323, true
  br label %325

325:                                              ; preds = %321, %317
  %326 = phi i1 [ %320, %317 ], [ %324, %321 ]
  br i1 %326, label %382, label %327

327:                                              ; preds = %325
  %328 = lshr i64 %282, 14
  %329 = and i64 %328, 3
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = lshr i64 %282, 16
  %333 = shl i64 %332, 16
  %334 = or i64 %333, 5
  br label %391

335:                                              ; preds = %327
  %336 = and i64 %282, 1
  %337 = icmp eq i64 %336, 0
  %338 = call i1 @llvm.expect.i1(i1 %337, i1 false)
  br i1 %338, label %340, label %339

339:                                              ; preds = %335
  br label %346

340:                                              ; preds = %335
  %341 = call swiftcc i64 @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEF"(i64 %282, i64 %265, ptr %266)
  %342 = or i64 %341, 1
  %343 = and i64 %342, -13
  %344 = and i64 %282, 12
  %345 = or i64 %343, %344
  br label %346

346:                                              ; preds = %340, %339
  %347 = phi i64 [ %282, %339 ], [ %345, %340 ]
  %348 = lshr i64 %347, 16
  %349 = call swiftcc i64 @"$es11_StringGutsV20fastUTF8ScalarLength8endingAtS2i_tF"(i64 %348, i64 %265, ptr %266)
  %350 = icmp eq i64 %349, 4
  br i1 %350, label %362, label %351

351:                                              ; preds = %346
  %352 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %349)
  %353 = extractvalue { i64, i1 } %352, 0
  %354 = extractvalue { i64, i1 } %352, 1
  %355 = call i1 @llvm.expect.i1(i1 %354, i1 false)
  br i1 %355, label %401, label %356

356:                                              ; preds = %351
  %357 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %348, i64 %353)
  %358 = extractvalue { i64, i1 } %357, 0
  %359 = extractvalue { i64, i1 } %357, 1
  %360 = shl i64 %358, 16
  %361 = or i64 %360, 5
  br label %391

362:                                              ; preds = %346
  %363 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %349)
  %364 = extractvalue { i64, i1 } %363, 0
  %365 = extractvalue { i64, i1 } %363, 1
  %366 = call i1 @llvm.expect.i1(i1 %365, i1 false)
  br i1 %366, label %402, label %367

367:                                              ; preds = %362
  %368 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %348, i64 %364)
  %369 = extractvalue { i64, i1 } %368, 0
  %370 = extractvalue { i64, i1 } %368, 1
  %371 = shl i64 %369, 16
  %372 = lshr i64 %371, 16
  %373 = lshr i64 %371, 14
  %374 = and i64 %373, 3
  %375 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %374, i64 1)
  %376 = extractvalue { i64, i1 } %375, 0
  %377 = extractvalue { i64, i1 } %375, 1
  %378 = shl i64 %372, 16
  %379 = shl i64 %376, 14
  %380 = or i64 %378, %379
  %381 = or i64 %380, 4
  br label %391

382:                                              ; preds = %325
  %383 = lshr i64 %282, 16
  %384 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %383, i64 1)
  %385 = extractvalue { i64, i1 } %384, 0
  %386 = extractvalue { i64, i1 } %384, 1
  %387 = shl i64 %385, 16
  %388 = or i64 %387, 13
  br label %391

389:                                              ; preds = %310
  %390 = call swiftcc i64 @"$eSS9UTF16ViewV13_foreignIndex6beforeSS0D0VAF_tF"(i64 %282, i64 %2, ptr %3)
  br label %391

391:                                              ; preds = %389, %382, %367, %356, %331
  %392 = phi i64 [ %334, %331 ], [ %361, %356 ], [ %381, %367 ], [ %388, %382 ], [ %390, %389 ]
  %393 = icmp slt i64 %1, %264
  br i1 %393, label %397, label %394

394:                                              ; preds = %391
  %.lcssa = phi i64 [ %392, %391 ]
  br label %395

395:                                              ; preds = %394, %224, %10
  %396 = phi i64 [ %0, %10 ], [ %.lcssa10, %224 ], [ %.lcssa, %394 ]
  ret i64 %396

397:                                              ; preds = %391
  br label %227

398:                                              ; preds = %305
  br label %400

399:                                              ; preds = %281
  br label %400

400:                                              ; preds = %399, %398
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.27.Swift/StringUTF16View.swift" to i64), i64 27, i8 2, i64 175)
  call void @llvm.trap()
  unreachable

401:                                              ; preds = %351
  call void @llvm.trap()
  unreachable

402:                                              ; preds = %362
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nounwind
define hidden swiftcc i64 @"$eSS9UTF16ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64 %0, i64 %1, i64 %2, ptr %3) #11 {
entry:
  %bitcast = alloca ptr, align 8
  %4 = lshr i64 %0, 16
  %5 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %4, i64 %1)
  %6 = extractvalue { i64, i1 } %5, 0
  %7 = extractvalue { i64, i1 } %5, 1
  %8 = icmp slt i64 %6, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %3, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %10 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %11 = and i64 %10, 2305843009213693952
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = and i64 %10, 1080863910568919040
  %15 = lshr i64 %14, 56
  br label %18

16:                                               ; preds = %9
  %17 = and i64 %2, 281474976710655
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i64 [ %15, %13 ], [ %17, %16 ]
  %20 = icmp slt i64 %19, %6
  %21 = call i1 @llvm.expect.i1(i1 %20, i1 false)
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = shl i64 %6, 16
  %24 = or i64 %23, 8
  ret i64 %24

25:                                               ; preds = %18
  br label %27

26:                                               ; preds = %entry
  br label %27

27:                                               ; preds = %26, %25
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.27.Swift/StringUTF16View.swift" to i64), i64 27, i8 2, i64 678)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es11_StringGutsV24loadUnmanagedBreadcrumbss0D0Vys01_aE0CGyF"(i64 %0, ptr %1) #0 {
entry:
  %bitcast = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %1, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %2 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %3 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %2)
  %4 = extractvalue { i64, i1 } %3, 0
  %5 = extractvalue { i64, i1 } %3, 1
  %6 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 1)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  %9 = and i64 %7, %0
  %10 = and i64 %9, 2305843009213693952
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %entry
  %13 = and i64 %2, 1152921504606846975
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = inttoptr i64 %13 to ptr
  %17 = call swiftcc ptr @"$es15__StringStorageC19_breadcrumbsAddress33_A317BBF16F3432B4D1DDED3E0452DA4DLLSpys01_A11BreadcrumbsCSgGvg"(ptr swiftself %16)
  br label %25

18:                                               ; preds = %12
  unreachable

19:                                               ; preds = %entry
  %20 = and i64 %2, 1152921504606846975
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %19
  %23 = inttoptr i64 %20 to ptr
  %24 = getelementptr inbounds %Ts21__SharedStringStorageC, ptr %23, i32 0, i32 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi ptr [ %17, %15 ], [ %24, %22 ]
  %27 = load atomic i64, ptr %26 acquire, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = inttoptr i64 %27 to ptr
  br label %45

31:                                               ; preds = %25
  %32 = call noalias ptr @swift_allocObject(ptr @"$es18_StringBreadcrumbsCN", i64 32, i64 7) #4
  %33 = call ptr @swift_bridgeObjectRetain(ptr returned %1) #4
  %34 = call swiftcc ptr @"$es18_StringBreadcrumbsCyABSScfc"(i64 %0, ptr %1, ptr swiftself %32)
  %35 = call ptr @swift_retain(ptr returned %34) #3
  %36 = call ptr @swift_retain(ptr returned %34) #3
  call void @swift_release(ptr %34) #4
  %37 = ptrtoint ptr %34 to i64
  %38 = cmpxchg ptr %26, i64 0, i64 %37 acq_rel acquire, align 8
  %39 = extractvalue { i64, i1 } %38, 0
  %40 = extractvalue { i64, i1 } %38, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = call ptr @swift_retain(ptr returned %34) #3
  call void @swift_release(ptr %34) #4
  call void @swift_release(ptr %34) #4
  call void @swift_release(ptr %34) #4
  %43 = inttoptr i64 %39 to ptr
  br label %45

44:                                               ; preds = %31
  call void @swift_release(ptr %34) #4
  br label %45

45:                                               ; preds = %44, %41, %29
  %46 = phi ptr [ %30, %29 ], [ %43, %41 ], [ %34, %44 ]
  ret ptr %46

47:                                               ; preds = %19
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc { i64, i64 } @"$es18_StringBreadcrumbsC13getBreadcrumb8forIndexSS0F0V10lowerBound_Si6offsettAF_tF"(i64 %0, ptr swiftself %1) #0 {
entry:
  %2 = lshr i64 %0, 16
  %3 = sdiv i64 %2, 3
  %4 = sdiv i64 %3, 64
  %5 = sdiv i64 %2, 64
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 1, i64 %5)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  %9 = call i1 @llvm.expect.i1(i1 %8, i1 false)
  br i1 %9, label %64, label %10

10:                                               ; preds = %entry
  %11 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %1, i32 0, i32 2
  %._buffer = getelementptr inbounds %TSa, ptr %11, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %12 = load ptr, ptr %._buffer._storage, align 8
  %13 = call swiftcc i64 @"$eSa5countSivgSS5IndexV_Tg5"(ptr %12)
  %14 = icmp slt i64 %13, %7
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %17

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi i64 [ %7, %15 ], [ %13, %16 ]
  %19 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %18, i64 %4)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = extractvalue { i64, i1 } %19, 1
  %22 = icmp slt i64 1, %20
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %52

24:                                               ; preds = %17
  %25 = lshr i64 %0, 14
  br label %26

26:                                               ; preds = %63, %24
  %27 = phi i64 [ %4, %24 ], [ %45, %63 ]
  %28 = phi i64 [ %18, %24 ], [ %46, %63 ]
  %29 = phi i64 [ %4, %24 ], [ %45, %63 ]
  %30 = phi i64 [ %20, %24 ], [ %48, %63 ]
  %31 = sdiv i64 %30, 2
  %32 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %29, i64 %31)
  %33 = extractvalue { i64, i1 } %32, 0
  %34 = extractvalue { i64, i1 } %32, 1
  %35 = call i1 @llvm.expect.i1(i1 %34, i1 false)
  br i1 %35, label %65, label %36

36:                                               ; preds = %26
  %._buffer2 = getelementptr inbounds %TSa, ptr %11, i32 0, i32 0
  %._buffer2._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer2, i32 0, i32 0
  %37 = load ptr, ptr %._buffer2._storage, align 8
  %38 = call swiftcc i1 @"$eSa29_hoistableIsNativeTypeCheckedSbyFSS5IndexV_Tg5"(ptr %37)
  call swiftcc void @"$eSa15_checkSubscript_20wasNativeTypeCheckeds16_DependenceTokenVSi_SbtFSS5IndexV_Tg5"(i64 %33, i1 %38, ptr %37)
  %39 = call swiftcc i64 @"$eSa11_getElement_20wasNativeTypeChecked22matchingSubscriptCheckxSi_Sbs16_DependenceTokenVtFSS5IndexV_Tg5"(i64 %33, i1 %38, ptr %37)
  %40 = lshr i64 %39, 14
  %41 = icmp ult i64 %25, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %44

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi i64 [ %33, %42 ], [ %27, %43 ]
  %46 = phi i64 [ %28, %42 ], [ %33, %43 ]
  %47 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %45)
  %48 = extractvalue { i64, i1 } %47, 0
  %49 = extractvalue { i64, i1 } %47, 1
  %50 = icmp slt i64 1, %48
  br i1 %50, label %63, label %51

51:                                               ; preds = %44
  %.lcssa = phi i64 [ %45, %44 ]
  br label %52

52:                                               ; preds = %51, %23
  %53 = phi i64 [ %4, %23 ], [ %.lcssa, %51 ]
  %54 = phi i64 [ %4, %23 ], [ %.lcssa, %51 ]
  %._buffer1 = getelementptr inbounds %TSa, ptr %11, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  %55 = load ptr, ptr %._buffer1._storage, align 8
  %56 = call swiftcc i1 @"$eSa29_hoistableIsNativeTypeCheckedSbyFSS5IndexV_Tg5"(ptr %55)
  call swiftcc void @"$eSa15_checkSubscript_20wasNativeTypeCheckeds16_DependenceTokenVSi_SbtFSS5IndexV_Tg5"(i64 %53, i1 %56, ptr %55)
  %57 = call swiftcc i64 @"$eSa11_getElement_20wasNativeTypeChecked22matchingSubscriptCheckxSi_Sbs16_DependenceTokenVtFSS5IndexV_Tg5"(i64 %53, i1 %56, ptr %55)
  %58 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 64, i64 %54)
  %59 = extractvalue { i64, i1 } %58, 0
  %60 = extractvalue { i64, i1 } %58, 1
  %61 = insertvalue { i64, i64 } undef, i64 %57, 0
  %62 = insertvalue { i64, i64 } %61, i64 %59, 1
  ret { i64, i64 } %62

63:                                               ; preds = %44
  br label %26

64:                                               ; preds = %entry
  call void @llvm.trap()
  unreachable

65:                                               ; preds = %26
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSS9UTF16ViewV14_utf16Distance4from2toSiSS5IndexV_AGtF"(i64 %0, i64 %1, i64 %2, ptr %3) #0 {
entry:
  %4 = alloca %TSi, align 8
  %bitcast = alloca ptr, align 8
  %5 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %6 = alloca %TSi, align 8
  %7 = alloca ptr, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %8 = lshr i64 %1, 14
  %9 = and i64 %8, 3
  %10 = lshr i64 %0, 14
  %11 = and i64 %10, 3
  %12 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 %11)
  %13 = extractvalue { i64, i1 } %12, 0
  %14 = extractvalue { i64, i1 } %12, 1
  %15 = call i1 @llvm.expect.i1(i1 %14, i1 false)
  br i1 %15, label %88, label %16

16:                                               ; preds = %entry
  %17 = lshr i64 %0, 16
  %18 = lshr i64 %1, 16
  %19 = icmp slt i64 %18, %17
  %20 = call i1 @llvm.expect.i1(i1 %19, i1 false)
  br i1 %20, label %87, label %21

21:                                               ; preds = %16
  %spsave = call ptr @llvm.stacksave.p0()
  %22 = alloca i8, i64 48, align 16
  %23 = getelementptr inbounds <{ %swift.refcounted, %swift.noescape.function, %TSnySiG }>, ptr %22, i32 0, i32 1
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %23, i32 0, i32 0
  store ptr @"$eSS9UTF16ViewV14_utf16Distance4from2toSiSS5IndexV_AGtFSiSRys5UInt8VGXEfU_", ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %23, i32 0, i32 1
  store ptr null, ptr %.data, align 8
  %24 = getelementptr inbounds <{ %swift.refcounted, %swift.noescape.function, %TSnySiG }>, ptr %22, i32 0, i32 2
  %.lowerBound = getelementptr inbounds %TSnySiG, ptr %24, i32 0, i32 0
  %.lowerBound._value = getelementptr inbounds %TSi, ptr %.lowerBound, i32 0, i32 0
  store i64 %17, ptr %.lowerBound._value, align 8
  %.upperBound = getelementptr inbounds %TSnySiG, ptr %24, i32 0, i32 1
  %.upperBound._value = getelementptr inbounds %TSi, ptr %.upperBound, i32 0, i32 0
  store i64 %18, ptr %.upperBound._value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %4)
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %3, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %25 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %26 = and i64 %25, 2305843009213693952
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %21
  %29 = and i64 %25, 1080863910568919040
  %30 = lshr i64 %29, 56
  call void @llvm.lifetime.start.p0(i64 16, ptr %5)
  %.elt = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %5, i32 0, i32 0
  %.elt1 = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %5, i32 0, i32 1
  %31 = call i64 @llvm.bswap.i64(i64 255)
  %32 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %31)
  %33 = extractvalue { i64, i1 } %32, 0
  %34 = extractvalue { i64, i1 } %32, 1
  %35 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 1)
  %36 = extractvalue { i64, i1 } %35, 0
  %37 = extractvalue { i64, i1 } %35, 1
  %38 = and i64 %25, %36
  %.elt._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt, i32 0, i32 0
  store i64 %2, ptr %.elt._value, align 8
  %.elt1._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt1, i32 0, i32 0
  store i64 %38, ptr %.elt1._value, align 8
  %spsave2 = call ptr @llvm.stacksave.p0()
  %39 = alloca i8, i64 40, align 16
  %40 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %39, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %40, i32 0, i32 0
  store i64 %30, ptr %._value, align 8
  %41 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %39, i32 0, i32 2
  %.fn3 = getelementptr inbounds %swift.noescape.function, ptr %41, i32 0, i32 0
  store ptr @"$es11_StringGutsV12withFastUTF85range_xSnySiG_xSRys5UInt8VGKXEtKlFxAHKXEfU_Si_TG5TA", ptr %.fn3, align 8
  %.data4 = getelementptr inbounds %swift.noescape.function, ptr %41, i32 0, i32 1
  store ptr %22, ptr %.data4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %6)
  %42 = ptrtoint ptr %5 to i64
  %43 = getelementptr inbounds i8, ptr %5, i64 16
  %44 = ptrtoint ptr %43 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr %7)
  call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TG5TA"(ptr noalias nocapture sret(%TSi) %6, i64 %42, i64 %44, ptr swiftself %39, ptr noalias nocapture swifterror dereferenceable(8) %swifterror, ptr %7)
  %45 = load ptr, ptr %swifterror, align 8
  %46 = icmp ne ptr %45, null
  %47 = ptrtoint ptr %45 to i64
  br i1 %46, label %48, label %49

48:                                               ; preds = %28
  store ptr null, ptr %swifterror, align 8
  %toDestroy = load ptr, ptr %7, align 8
  call void @swift_release(ptr %toDestroy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  call void @llvm.stackrestore.p0(ptr %spsave2)
  call void @llvm.lifetime.end.p0(i64 16, ptr %5)
  br label %78

49:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 8, ptr %7)
  %._value5 = getelementptr inbounds %TSi, ptr %6, i32 0, i32 0
  %50 = load i64, ptr %._value5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  call void @llvm.stackrestore.p0(ptr %spsave2)
  call void @llvm.lifetime.end.p0(i64 16, ptr %5)
  %._value6 = getelementptr inbounds %TSi, ptr %4, i32 0, i32 0
  store i64 %50, ptr %._value6, align 8
  br label %80

51:                                               ; preds = %21
  %52 = and i64 %2, 1152921504606846976
  %53 = icmp eq i64 %52, 0
  %54 = call i1 @llvm.expect.i1(i1 %53, i1 false)
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = and i64 %25, 1152921504606846975
  %57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %56, i64 32)
  %58 = extractvalue { i64, i1 } %57, 0
  %59 = extractvalue { i64, i1 } %57, 1
  %60 = icmp eq i64 %58, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = inttoptr i64 %58 to ptr
  %63 = ptrtoint ptr %62 to i64
  %64 = and i64 %2, 281474976710655
  br label %70

65:                                               ; preds = %55
  unreachable

66:                                               ; preds = %51
  %67 = call swiftcc { i64, i64 } @"$es13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %2, ptr %3)
  %68 = extractvalue { i64, i64 } %67, 0
  %69 = extractvalue { i64, i64 } %67, 1
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi i64 [ %63, %61 ], [ %68, %66 ]
  %72 = phi i64 [ %64, %61 ], [ %69, %66 ]
  call swiftcc void @"$es11_StringGutsV12withFastUTF85range_xSnySiG_xSRys5UInt8VGKXEtKlFxAHKXEfU_Si_TG5TA"(ptr noalias nocapture sret(%TSi) %4, i64 %71, i64 %72, ptr swiftself %22, ptr noalias nocapture swifterror dereferenceable(8) %swifterror)
  %73 = load ptr, ptr %swifterror, align 8
  %74 = icmp ne ptr %73, null
  %75 = ptrtoint ptr %73 to i64
  br i1 %74, label %76, label %79

76:                                               ; preds = %70
  %77 = phi ptr [ %73, %70 ]
  store ptr null, ptr %swifterror, align 8
  call void @swift_release(ptr %77) #4
  br label %78

78:                                               ; preds = %76, %48
  unreachable

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %49
  %._value7 = getelementptr inbounds %TSi, ptr %4, i32 0, i32 0
  %81 = load i64, ptr %._value7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %4)
  call void @llvm.stackrestore.p0(ptr %spsave)
  %82 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %13, i64 %81)
  %83 = extractvalue { i64, i1 } %82, 0
  %84 = extractvalue { i64, i1 } %82, 1
  %85 = call i1 @llvm.expect.i1(i1 %84, i1 false)
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  ret i64 %83

87:                                               ; preds = %16
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.39.Range requires lowerBound <= upperBound" to i64), i64 39, i8 2, i64 ptrtoint (ptr @".str.17.Swift/Range.swift" to i64), i64 17, i8 2, i64 760)
  call void @llvm.trap()
  unreachable

88:                                               ; preds = %entry
  call void @llvm.trap()
  unreachable

89:                                               ; preds = %80
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i1 @"$eSa29_hoistableIsNativeTypeCheckedSbyFSS5IndexV_Tg5"(ptr %0) #0 {
entry:
  ret i1 true
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSa15_checkSubscript_20wasNativeTypeCheckeds16_DependenceTokenVSi_SbtFSS5IndexV_Tg5"(i64 %0, i1 %1, ptr %2) #0 {
entry:
  %3 = icmp slt i64 %0, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %entry
  %5 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %2, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %5, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  %6 = load i64, ptr %._storage.count._value, align 8, !range !6
  %7 = icmp slt i64 %0, %6
  %8 = call i1 @llvm.expect.i1(i1 %7, i1 true)
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  ret void

11:                                               ; preds = %entry
  br label %12

12:                                               ; preds = %11, %9
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.18.Index out of range" to i64), i64 18, i8 2, i64 ptrtoint (ptr @".str.33.Swift/ContiguousArrayBuffer.swift" to i64), i64 33, i8 2, i64 691)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSa11_getElement_20wasNativeTypeChecked22matchingSubscriptCheckxSi_Sbs16_DependenceTokenVtFSS5IndexV_Tg5"(i64 %0, i1 %1, ptr %2) #0 {
entry:
  %3 = getelementptr inbounds i8, ptr %2, i64 32
  %4 = getelementptr inbounds %TSS5IndexV, ptr %3, i64 %0
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %4, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  %5 = load i64, ptr %._rawBits._value, align 8
  ret i64 %5
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSS9UTF16ViewV15_nativeGetIndex3forSS0E0VSi_tFAFSRys5UInt8VGXEfU1_"(ptr noalias nocapture sret(%TSS5IndexV) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr swiftself %5, ptr noalias nocapture swifterror dereferenceable(8) %6) #0 {
entry:
  %7 = lshr i64 %3, 16
  %8 = lshr i64 %3, 14
  %9 = and i64 %8, 3
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %entry
  br label %.preheader

12:                                               ; preds = %entry
  br label %.preheader

.preheader:                                       ; preds = %11, %12
  %.ph = phi i64 [ 0, %12 ], [ -1, %11 ]
  br label %13

13:                                               ; preds = %.preheader, %87
  %14 = phi i64 [ %89, %87 ], [ %.ph, %.preheader ]
  %15 = phi i64 [ %91, %87 ], [ %7, %.preheader ]
  %16 = icmp slt i64 %15, %2
  %17 = call i1 @llvm.expect.i1(i1 %16, i1 true)
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.27.Swift/StringUTF16View.swift" to i64), i64 27, i8 2, i64 928)
  call void @llvm.trap()
  unreachable

19:                                               ; preds = %13
  %20 = icmp eq i64 %1, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = inttoptr i64 %1 to ptr
  br label %24

23:                                               ; preds = %19
  unreachable

24:                                               ; preds = %21
  %25 = phi ptr [ %22, %21 ]
  %26 = inttoptr i64 %1 to ptr
  %27 = getelementptr inbounds %Ts5UInt8V, ptr %26, i64 %15
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %27, i32 0, i32 0
  %28 = load i8, ptr %._value, align 1
  %29 = and i8 %28, -128
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %24
  %32 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 0, i8 %28)
  %33 = extractvalue { i8, i1 } %32, 0
  %34 = extractvalue { i8, i1 } %32, 1
  %35 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 %33, i8 1)
  %36 = extractvalue { i8, i1 } %35, 0
  %37 = extractvalue { i8, i1 } %35, 1
  %38 = call i8 @llvm.ctlz.i8(i8 %36, i1 false)
  %39 = zext i8 %38 to i64
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %48, label %41

41:                                               ; preds = %31
  %42 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %14, i64 1)
  %43 = extractvalue { i64, i1 } %42, 0
  %44 = extractvalue { i64, i1 } %42, 1
  %45 = icmp slt i64 %43, %4
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  %.lcssa7 = phi i64 [ %15, %41 ]
  %.lcssa2 = phi i64 [ %39, %41 ]
  %.lcssa = phi i64 [ %43, %41 ]
  br label %54

47:                                               ; preds = %41
  br label %87

48:                                               ; preds = %31
  %49 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %14, i64 2)
  %50 = extractvalue { i64, i1 } %49, 0
  %51 = extractvalue { i64, i1 } %49, 1
  %52 = icmp slt i64 %50, %4
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %.lcssa8 = phi i64 [ %15, %48 ]
  %.lcssa4 = phi i64 [ %50, %48 ]
  %.lcssa3 = phi i64 [ %39, %48 ]
  br label %54

54:                                               ; preds = %53, %46
  %55 = phi i64 [ %.lcssa7, %46 ], [ %.lcssa8, %53 ]
  %56 = phi i64 [ %.lcssa2, %46 ], [ %.lcssa3, %53 ]
  %57 = phi i64 [ %.lcssa, %46 ], [ %.lcssa4, %53 ]
  %58 = icmp slt i64 %4, %57
  %59 = call i1 @llvm.expect.i1(i1 %58, i1 false)
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %72

61:                                               ; preds = %54
  br label %81

62:                                               ; preds = %48
  br label %87

63:                                               ; preds = %24
  %64 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %14, i64 1)
  %65 = extractvalue { i64, i1 } %64, 0
  %66 = extractvalue { i64, i1 } %64, 1
  %67 = icmp slt i64 %65, %4
  br i1 %67, label %86, label %68

68:                                               ; preds = %63
  %.lcssa10 = phi i64 [ %65, %63 ]
  %.lcssa9 = phi i64 [ %15, %63 ]
  %69 = icmp slt i64 %4, %.lcssa10
  %70 = call i1 @llvm.expect.i1(i1 %69, i1 false)
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71, %60
  %73 = phi i64 [ %55, %60 ], [ %.lcssa9, %71 ]
  %74 = phi i64 [ %56, %60 ], [ 1, %71 ]
  %75 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %73, i64 %74)
  %76 = extractvalue { i64, i1 } %75, 0
  %77 = extractvalue { i64, i1 } %75, 1
  %78 = shl i64 %76, 16
  %79 = or i64 %78, 5
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %0, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  store i64 %79, ptr %._rawBits._value, align 8
  br label %85

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %61
  %82 = phi i64 [ %.lcssa9, %80 ], [ %55, %61 ]
  %83 = shl i64 %82, 16
  %84 = or i64 %83, 16388
  %._rawBits1 = getelementptr inbounds %TSS5IndexV, ptr %0, i32 0, i32 0
  %._rawBits1._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits1, i32 0, i32 0
  store i64 %84, ptr %._rawBits1._value, align 8
  br label %85

85:                                               ; preds = %81, %72
  ret void

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %62, %47
  %88 = phi i64 [ %39, %47 ], [ %39, %62 ], [ 1, %86 ]
  %89 = phi i64 [ %43, %47 ], [ %50, %62 ], [ %65, %86 ]
  %90 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %15, i64 %88)
  %91 = extractvalue { i64, i1 } %90, 0
  %92 = extractvalue { i64, i1 } %90, 1
  br label %13
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_SS5IndexV_TG5"(ptr noalias nocapture sret(%TSS5IndexV) %0, i64 %1, i64 %2, i64 %3, ptr %4, ptr %5, ptr swiftself %6, ptr noalias nocapture swifterror dereferenceable(8) %7, ptr %8) #0 {
entry:
  %9 = alloca %TSS5IndexV, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %9)
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %entry
  %12 = inttoptr i64 %1 to ptr
  br label %14

13:                                               ; preds = %entry
  unreachable

14:                                               ; preds = %11
  %15 = phi ptr [ %12, %11 ]
  %16 = inttoptr i64 %1 to ptr
  %17 = ptrtoint ptr %16 to i64
  call swiftcc void %4(ptr noalias nocapture sret(%TSS5IndexV) %9, i64 %17, i64 %3, ptr swiftself %5, ptr noalias nocapture swifterror dereferenceable(8) %7) #16
  %18 = load ptr, ptr %7, align 8
  %19 = icmp ne ptr %18, null
  %20 = ptrtoint ptr %18 to i64
  br i1 %19, label %21, label %23

21:                                               ; preds = %14
  %22 = phi ptr [ %18, %14 ]
  store ptr null, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  store ptr %22, ptr %8, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8
  ret void

23:                                               ; preds = %14
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %9, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  %24 = load i64, ptr %._rawBits._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  %._rawBits1 = getelementptr inbounds %TSS5IndexV, ptr %0, i32 0, i32 0
  %._rawBits1._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits1, i32 0, i32 0
  store i64 %24, ptr %._rawBits1._value, align 8
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es11_StringGutsV20fastUTF8ScalarLength10startingAtS2i_tFs5UInt8VSRyAFGXEfU_"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, i64 %3, ptr swiftself %4, ptr noalias nocapture swifterror dereferenceable(8) %5) #0 {
entry:
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %entry
  %8 = inttoptr i64 %1 to ptr
  br label %10

9:                                                ; preds = %entry
  unreachable

10:                                               ; preds = %7
  %11 = phi ptr [ %8, %7 ]
  %12 = inttoptr i64 %1 to ptr
  %13 = getelementptr inbounds %Ts5UInt8V, ptr %12, i64 %3
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %13, i32 0, i32 0
  %14 = load i8, ptr %._value, align 1
  %._value1 = getelementptr inbounds %Ts5UInt8V, ptr %0, i32 0, i32 0
  store i8 %14, ptr %._value1, align 1
  ret void
}

; Function Attrs: noinline nounwind
define hidden swiftcc i64 @"$eSS9UTF16ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %0, i64 %1, ptr %2) #11 {
entry:
  %3 = lshr i64 %0, 16
  %4 = shl i64 %3, 16
  %5 = lshr i64 %4, 16
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %5, i64 1)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  %9 = shl i64 %7, 16
  %10 = or i64 %9, 8
  ret i64 %10
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$es11_StringGutsV20fastUTF8ScalarLength8endingAtS2i_tF"(i64 %0, i64 %1, ptr %2) #0 {
entry:
  %3 = alloca %TSi, align 8
  %bitcast = alloca ptr, align 8
  %4 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %5 = alloca %TSi, align 8
  %6 = alloca ptr, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %7 = alloca i8, i64 24, align 16
  %8 = getelementptr inbounds <{ %swift.refcounted, %TSi }>, ptr %7, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %8, i32 0, i32 0
  store i64 %0, ptr %._value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %2, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %9 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %10 = and i64 %9, 2305843009213693952
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %entry
  %13 = and i64 %9, 1080863910568919040
  %14 = lshr i64 %13, 56
  call void @llvm.lifetime.start.p0(i64 16, ptr %4)
  %.elt = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %4, i32 0, i32 0
  %.elt1 = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %4, i32 0, i32 1
  %15 = call i64 @llvm.bswap.i64(i64 255)
  %16 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %15)
  %17 = extractvalue { i64, i1 } %16, 0
  %18 = extractvalue { i64, i1 } %16, 1
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 1)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = extractvalue { i64, i1 } %19, 1
  %22 = and i64 %9, %20
  %.elt._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt, i32 0, i32 0
  store i64 %1, ptr %.elt._value, align 8
  %.elt1._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt1, i32 0, i32 0
  store i64 %22, ptr %.elt1._value, align 8
  %spsave = call ptr @llvm.stacksave.p0()
  %23 = alloca i8, i64 40, align 16
  %24 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %23, i32 0, i32 1
  %._value2 = getelementptr inbounds %TSi, ptr %24, i32 0, i32 0
  store i64 %14, ptr %._value2, align 8
  %25 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %23, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %25, i32 0, i32 0
  store ptr @"$es11_StringGutsV20fastUTF8ScalarLength8endingAtS2i_tFSiSRys5UInt8VGXEfU_TA", ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %25, i32 0, i32 1
  store ptr %7, ptr %.data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %5)
  %26 = ptrtoint ptr %4 to i64
  %27 = getelementptr inbounds i8, ptr %4, i64 16
  %28 = ptrtoint ptr %27 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr %6)
  call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TGq5TA.2"(ptr noalias nocapture sret(%TSi) %5, i64 %26, i64 %28, ptr swiftself %23, ptr noalias nocapture swifterror dereferenceable(8) %swifterror, ptr %6)
  %29 = load ptr, ptr %swifterror, align 8
  %30 = icmp ne ptr %29, null
  %31 = ptrtoint ptr %29 to i64
  br i1 %30, label %32, label %33

32:                                               ; preds = %12
  store ptr null, ptr %swifterror, align 8
  %toDestroy = load ptr, ptr %6, align 8
  call void @swift_release(ptr %toDestroy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  call void @llvm.stackrestore.p0(ptr %spsave)
  call void @llvm.lifetime.end.p0(i64 16, ptr %4)
  br label %62

33:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 8, ptr %6)
  %._value3 = getelementptr inbounds %TSi, ptr %5, i32 0, i32 0
  %34 = load i64, ptr %._value3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  call void @llvm.stackrestore.p0(ptr %spsave)
  call void @llvm.lifetime.end.p0(i64 16, ptr %4)
  %._value4 = getelementptr inbounds %TSi, ptr %3, i32 0, i32 0
  store i64 %34, ptr %._value4, align 8
  br label %64

35:                                               ; preds = %entry
  %36 = and i64 %1, 1152921504606846976
  %37 = icmp eq i64 %36, 0
  %38 = call i1 @llvm.expect.i1(i1 %37, i1 false)
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = and i64 %9, 1152921504606846975
  %41 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %40, i64 32)
  %42 = extractvalue { i64, i1 } %41, 0
  %43 = extractvalue { i64, i1 } %41, 1
  %44 = icmp eq i64 %42, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = inttoptr i64 %42 to ptr
  %47 = ptrtoint ptr %46 to i64
  %48 = and i64 %1, 281474976710655
  br label %54

49:                                               ; preds = %39
  unreachable

50:                                               ; preds = %35
  %51 = call swiftcc { i64, i64 } @"$es13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %1, ptr %2)
  %52 = extractvalue { i64, i64 } %51, 0
  %53 = extractvalue { i64, i64 } %51, 1
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i64 [ %47, %45 ], [ %52, %50 ]
  %56 = phi i64 [ %48, %45 ], [ %53, %50 ]
  call swiftcc void @"$es11_StringGutsV20fastUTF8ScalarLength8endingAtS2i_tFSiSRys5UInt8VGXEfU_"(ptr noalias nocapture sret(%TSi) %3, i64 %55, i64 %56, i64 %0, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %swifterror)
  %57 = load ptr, ptr %swifterror, align 8
  %58 = icmp ne ptr %57, null
  %59 = ptrtoint ptr %57 to i64
  br i1 %58, label %60, label %63

60:                                               ; preds = %54
  %61 = phi ptr [ %57, %54 ]
  store ptr null, ptr %swifterror, align 8
  call void @swift_release(ptr %61) #4
  br label %62

62:                                               ; preds = %60, %32
  unreachable

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %33
  %._value5 = getelementptr inbounds %TSi, ptr %3, i32 0, i32 0
  %65 = load i64, ptr %._value5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %3)
  ret i64 %65
}

; Function Attrs: noinline nounwind
define hidden swiftcc i64 @"$eSS9UTF16ViewV13_foreignIndex6beforeSS0D0VAF_tF"(i64 %0, i64 %1, ptr %2) #11 {
entry:
  %3 = lshr i64 %0, 16
  %4 = shl i64 %3, 16
  %5 = lshr i64 %4, 16
  %6 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %5, i64 1)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  %9 = shl i64 %7, 16
  %10 = or i64 %9, 8
  ret i64 %10
}

; Function Attrs: nounwind
define linkonce_odr hidden swiftcc void @"$es11_StringGutsV20fastUTF8ScalarLength8endingAtS2i_tFSiSRys5UInt8VGXEfU_"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, i64 %3, ptr swiftself %4, ptr noalias nocapture swifterror dereferenceable(8) %5) #0 {
entry:
  br label %6

6:                                                ; preds = %35, %entry
  %7 = phi i64 [ 1, %entry ], [ %32, %35 ]
  %8 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %3, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  %11 = icmp slt i64 %9, 0
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 false)
  br i1 %12, label %36, label %13

13:                                               ; preds = %6
  %14 = icmp slt i64 %9, %2
  %15 = call i1 @llvm.expect.i1(i1 %14, i1 true)
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1877, i32 1)
  unreachable

17:                                               ; preds = %13
  %18 = icmp eq i64 %1, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = inttoptr i64 %1 to ptr
  br label %22

21:                                               ; preds = %17
  unreachable

22:                                               ; preds = %19
  %23 = phi ptr [ %20, %19 ]
  %24 = inttoptr i64 %1 to ptr
  %25 = getelementptr inbounds %Ts5UInt8V, ptr %24, i64 %9
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %25, i32 0, i32 0
  %26 = load i8, ptr %._value, align 1
  %27 = and i8 %26, -64
  %28 = icmp eq i8 %27, -128
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  %.lcssa4 = phi i64 [ %7, %22 ]
  %._value1 = getelementptr inbounds %TSi, ptr %0, i32 0, i32 0
  store i64 %.lcssa4, ptr %._value1, align 8
  ret void

30:                                               ; preds = %22
  %31 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %7, i64 1)
  %32 = extractvalue { i64, i1 } %31, 0
  %33 = extractvalue { i64, i1 } %31, 1
  %34 = call i1 @llvm.expect.i1(i1 %33, i1 false)
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  br label %6

36:                                               ; preds = %6
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1876, i32 1)
  unreachable

37:                                               ; preds = %30
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es15__StringStorageC19_breadcrumbsAddress33_A317BBF16F3432B4D1DDED3E0452DA4DLLSpys01_A11BreadcrumbsCSgGvg"(ptr swiftself %0) #0 {
entry:
  %1 = getelementptr inbounds %Ts15__StringStorageC, ptr %0, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts17_CapacityAndFlags33_A317BBF16F3432B4D1DDED3E0452DA4DLLV, ptr %1, i32 0, i32 0
  %._storage._value = getelementptr inbounds %Ts6UInt64V, ptr %._storage, i32 0, i32 0
  %2 = load i64, ptr %._storage._value, align 8
  %3 = and i64 %2, -9223372036854775808
  %4 = icmp eq i64 %3, 0
  %5 = call i1 @llvm.expect.i1(i1 %4, i1 false)
  br i1 %5, label %16, label %6

6:                                                ; preds = %entry
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  %8 = getelementptr inbounds %Ts15__StringStorageC, ptr %0, i32 0, i32 1
  %._storage1 = getelementptr inbounds %Ts17_CapacityAndFlags33_A317BBF16F3432B4D1DDED3E0452DA4DLLV, ptr %8, i32 0, i32 0
  %._storage1._value = getelementptr inbounds %Ts6UInt64V, ptr %._storage1, i32 0, i32 0
  %9 = load i64, ptr %._storage1._value, align 8
  %10 = and i64 %9, 281474976710655
  %11 = getelementptr inbounds %Ts5UInt8V, ptr %7, i64 %10
  %12 = ptrtoint ptr %11 to i64
  %13 = add nuw i64 %12, 7
  %14 = and i64 %13, -8
  %15 = inttoptr i64 %14 to ptr
  ret ptr %15

16:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.46.Internal error: string breadcrumbs not present" to i64), i64 46, i8 2, i64 ptrtoint (ptr @".str.25.Swift/StringStorage.swift" to i64), i64 25, i8 2, i64 462)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es18_StringBreadcrumbsCyABSScfc"(i64 %0, ptr %1, ptr swiftself %2) #0 {
entry:
  %bitcast = alloca ptr, align 8
  %bitcast1 = alloca ptr, align 8
  %bitcast2 = alloca ptr, align 8
  %bitcast3 = alloca ptr, align 8
  %bitcast4 = alloca ptr, align 8
  %bitcast5 = alloca ptr, align 8
  %bitcast6 = alloca ptr, align 8
  %bitcast8 = alloca ptr, align 8
  %3 = call swiftcc { ptr, ptr } @"$eSa22_allocateUninitializedySayxG_SpyxGtSiFZSS5IndexV_Tt0g5"(i64 0)
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = extractvalue { ptr, ptr } %3, 1
  %6 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %2, i32 0, i32 2
  %._buffer = getelementptr inbounds %TSa, ptr %6, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  store ptr %4, ptr %._buffer._storage, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %1, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %7 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %8 = and i64 %7, 2305843009213693952
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %entry
  %11 = and i64 %7, 1080863910568919040
  %12 = lshr i64 %11, 56
  br label %15

13:                                               ; preds = %entry
  %14 = and i64 %0, 281474976710655
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i64 [ %12, %10 ], [ %14, %13 ]
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %223, label %18

18:                                               ; preds = %15
  %19 = call ptr @swift_bridgeObjectRetain(ptr returned %1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast1)
  store ptr %1, ptr %bitcast1, align 8
  %bitcast1._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast1, i32 0, i32 0
  %20 = load i64, ptr %bitcast1._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast1)
  %21 = and i64 %20, 2305843009213693952
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  call void @swift_bridgeObjectRelease(ptr %1) #4
  %24 = and i64 %20, 1080863910568919040
  %25 = lshr i64 %24, 56
  br label %28

26:                                               ; preds = %18
  call void @swift_bridgeObjectRelease(ptr %1) #4
  %27 = and i64 %0, 281474976710655
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i64 [ %25, %23 ], [ %27, %26 ]
  %30 = sdiv i64 %29, 3
  %31 = sdiv i64 %30, 64
  %32 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %2, i32 0, i32 2
  call swiftcc void @"$eSa15reserveCapacityyySiFSS5IndexV_Tg5"(i64 %31, ptr nocapture swiftself dereferenceable(8) %32)
  %33 = call ptr @swift_bridgeObjectRetain(ptr returned %1) #4
  br label %34

34:                                               ; preds = %186, %28
  %35 = phi i64 [ 0, %28 ], [ %75, %186 ]
  %36 = phi i64 [ 15, %28 ], [ %187, %186 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast2)
  store ptr %1, ptr %bitcast2, align 8
  %bitcast2._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast2, i32 0, i32 0
  %37 = load i64, ptr %bitcast2._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast2)
  %38 = and i64 %37, 2305843009213693952
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = and i64 %37, 1080863910568919040
  %42 = lshr i64 %41, 56
  br label %45

43:                                               ; preds = %34
  %44 = and i64 %0, 281474976710655
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i64 [ %42, %40 ], [ %44, %43 ]
  %47 = shl i64 %46, 16
  %48 = and i64 %37, 1152921504606846976
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = and i64 %0, 576460752303423488
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %57

54:                                               ; preds = %50
  %55 = or i64 %47, 11
  br label %59

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %53
  %58 = or i64 %47, 7
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi i64 [ %58, %57 ], [ %55, %54 ]
  %61 = lshr i64 %36, 14
  %62 = lshr i64 %60, 14
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %188, label %64

64:                                               ; preds = %59
  %65 = srem i64 %35, 64
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %73

68:                                               ; preds = %64
  %69 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %2, i32 0, i32 2
  call swiftcc void @"$eSa034_makeUniqueAndReserveCapacityIfNotB0yyFSS5IndexV_Tg5"(ptr nocapture swiftself dereferenceable(8) %69)
  %._buffer7 = getelementptr inbounds %TSa, ptr %69, i32 0, i32 0
  %._buffer7._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer7, i32 0, i32 0
  %70 = load ptr, ptr %._buffer7._storage, align 8
  %71 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %70, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %71, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  %72 = load i64, ptr %._storage.count._value, align 8, !range !6
  call swiftcc void @"$eSa36_reserveCapacityAssumingUniqueBuffer8oldCountySi_tFSS5IndexV_Tg5"(i64 %72, ptr nocapture swiftself dereferenceable(8) %69)
  call swiftcc void @"$eSa37_appendElementAssumeUniqueAndCapacity_03newB0ySi_xntFSS5IndexV_Tg5"(i64 %72, i64 %36, ptr nocapture swiftself dereferenceable(8) %69)
  call swiftcc void @"$eSa12_endMutationyyFSS5IndexV_Tg5"(ptr nocapture swiftself dereferenceable(8) %69)
  br label %73

73:                                               ; preds = %68, %67
  %74 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %35, i64 1)
  %75 = extractvalue { i64, i1 } %74, 0
  %76 = extractvalue { i64, i1 } %74, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast3)
  store ptr %1, ptr %bitcast3, align 8
  %bitcast3._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast3, i32 0, i32 0
  %77 = load i64, ptr %bitcast3._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast3)
  %78 = and i64 %77, 1152921504606846976
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = and i64 %0, 576460752303423488
  %82 = icmp eq i64 %81, 0
  %83 = xor i1 %82, true
  br label %85

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i1 [ %83, %80 ], [ true, %84 ]
  %87 = and i64 %36, 12
  %88 = zext i1 %86 to i8
  %89 = sext i8 %88 to i64
  %90 = and i64 %89, 63
  %91 = shl i64 4, %90
  %92 = icmp eq i64 %87, %91
  %93 = call i1 @llvm.expect.i1(i1 %92, i1 false)
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  br label %97

95:                                               ; preds = %85
  %96 = call swiftcc i64 @"$es11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %36, i64 %0, ptr %1)
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i64 [ %36, %94 ], [ %96, %95 ]
  %99 = lshr i64 %98, 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast4)
  store ptr %1, ptr %bitcast4, align 8
  %bitcast4._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast4, i32 0, i32 0
  %100 = load i64, ptr %bitcast4._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast4)
  %101 = and i64 %100, 2305843009213693952
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = and i64 %100, 1080863910568919040
  %105 = lshr i64 %104, 56
  br label %108

106:                                              ; preds = %97
  %107 = and i64 %0, 281474976710655
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi i64 [ %105, %103 ], [ %107, %106 ]
  %110 = icmp slt i64 %99, %109
  %111 = call i1 @llvm.expect.i1(i1 %110, i1 true)
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.29.String index is out of bounds" to i64), i64 29, i8 2, i64 ptrtoint (ptr @".str.27.Swift/StringUTF16View.swift" to i64), i64 27, i8 2, i64 147)
  call void @llvm.trap()
  unreachable

113:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast5)
  store ptr %1, ptr %bitcast5, align 8
  %bitcast5._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast5, i32 0, i32 0
  %114 = load i64, ptr %bitcast5._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast5)
  %115 = and i64 %114, 1152921504606846976
  %116 = icmp eq i64 %115, 0
  %117 = xor i1 %116, true
  %118 = call i1 @llvm.expect.i1(i1 %117, i1 false)
  %119 = call i1 @llvm.expect.i1(i1 %118, i1 false)
  br i1 %119, label %184, label %120

120:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast6)
  store ptr %1, ptr %bitcast6, align 8
  %bitcast6._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast6, i32 0, i32 0
  %121 = load i64, ptr %bitcast6._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast6)
  %122 = and i64 %121, 2305843009213693952
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = and i64 %121, 4611686018427387904
  %126 = icmp eq i64 %125, 0
  %127 = xor i1 %126, true
  br label %132

128:                                              ; preds = %120
  %129 = and i64 %0, -9223372036854775808
  %130 = icmp eq i64 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi i1 [ %127, %124 ], [ %131, %128 ]
  br i1 %133, label %177, label %134

134:                                              ; preds = %132
  %135 = lshr i64 %98, 14
  %136 = and i64 %135, 3
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  br label %150

139:                                              ; preds = %134
  %140 = and i64 %98, 1
  %141 = icmp eq i64 %140, 0
  %142 = call i1 @llvm.expect.i1(i1 %141, i1 false)
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  br label %150

144:                                              ; preds = %139
  %145 = call swiftcc i64 @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEF"(i64 %98, i64 %0, ptr %1)
  %146 = or i64 %145, 1
  %147 = and i64 %146, -13
  %148 = and i64 %98, 12
  %149 = or i64 %147, %148
  br label %150

150:                                              ; preds = %144, %143, %138
  %151 = phi i64 [ %98, %138 ], [ %98, %143 ], [ %149, %144 ]
  %152 = lshr i64 %151, 16
  %153 = call swiftcc i64 @"$es11_StringGutsV20fastUTF8ScalarLength10startingAtS2i_tF"(i64 %152, i64 %0, ptr %1)
  %154 = icmp eq i64 %153, 4
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  br label %161

156:                                              ; preds = %150
  %157 = lshr i64 %151, 14
  %158 = and i64 %157, 3
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160, %155
  %162 = shl i64 %152, 16
  %163 = lshr i64 %162, 16
  %164 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %163, i64 %153)
  %165 = extractvalue { i64, i1 } %164, 0
  %166 = extractvalue { i64, i1 } %164, 1
  %167 = shl i64 %165, 16
  %168 = or i64 %167, 5
  br label %186

169:                                              ; preds = %156
  %170 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %158, i64 1)
  %171 = extractvalue { i64, i1 } %170, 0
  %172 = extractvalue { i64, i1 } %170, 1
  %173 = shl i64 %152, 16
  %174 = shl i64 %171, 14
  %175 = or i64 %173, %174
  %176 = or i64 %175, 4
  br label %186

177:                                              ; preds = %132
  %178 = lshr i64 %98, 16
  %179 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %178, i64 1)
  %180 = extractvalue { i64, i1 } %179, 0
  %181 = extractvalue { i64, i1 } %179, 1
  %182 = shl i64 %180, 16
  %183 = or i64 %182, 13
  br label %186

184:                                              ; preds = %113
  %185 = call swiftcc i64 @"$eSS9UTF16ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %98, i64 %0, ptr %1)
  br label %186

186:                                              ; preds = %184, %177, %169, %161
  %187 = phi i64 [ %168, %161 ], [ %176, %169 ], [ %183, %177 ], [ %185, %184 ]
  br label %34

188:                                              ; preds = %59
  %.lcssa = phi i64 [ %35, %59 ]
  call void @swift_bridgeObjectRelease(ptr %1) #4
  %189 = srem i64 %.lcssa, 64
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  call void @swift_bridgeObjectRelease(ptr %1) #4
  br label %221

192:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast8)
  store ptr %1, ptr %bitcast8, align 8
  %bitcast8._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast8, i32 0, i32 0
  %193 = load i64, ptr %bitcast8._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast8)
  %194 = and i64 %193, 2305843009213693952
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %192
  %197 = and i64 %193, 1080863910568919040
  %198 = lshr i64 %197, 56
  br label %201

199:                                              ; preds = %192
  %200 = and i64 %0, 281474976710655
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i64 [ %198, %196 ], [ %200, %199 ]
  %203 = shl i64 %202, 16
  %204 = and i64 %193, 1152921504606846976
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %201
  %207 = and i64 %0, 576460752303423488
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  br label %213

210:                                              ; preds = %206
  %211 = or i64 %203, 11
  br label %215

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %212, %209
  %214 = or i64 %203, 7
  br label %215

215:                                              ; preds = %210, %213
  %216 = phi i64 [ %214, %213 ], [ %211, %210 ]
  %217 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %2, i32 0, i32 2
  call swiftcc void @"$eSa034_makeUniqueAndReserveCapacityIfNotB0yyFSS5IndexV_Tg5"(ptr nocapture swiftself dereferenceable(8) %217)
  %._buffer9 = getelementptr inbounds %TSa, ptr %217, i32 0, i32 0
  %._buffer9._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer9, i32 0, i32 0
  %218 = load ptr, ptr %._buffer9._storage, align 8
  %219 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %218, i32 0, i32 1
  %._storage10 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %219, i32 0, i32 0
  %._storage10.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage10, i32 0, i32 0
  %._storage10.count._value = getelementptr inbounds %TSi, ptr %._storage10.count, i32 0, i32 0
  %220 = load i64, ptr %._storage10.count._value, align 8, !range !6
  call swiftcc void @"$eSa36_reserveCapacityAssumingUniqueBuffer8oldCountySi_tFSS5IndexV_Tg5"(i64 %220, ptr nocapture swiftself dereferenceable(8) %217)
  call void @swift_bridgeObjectRelease(ptr %1) #4
  call swiftcc void @"$eSa37_appendElementAssumeUniqueAndCapacity_03newB0ySi_xntFSS5IndexV_Tg5"(i64 %220, i64 %216, ptr nocapture swiftself dereferenceable(8) %217)
  call swiftcc void @"$eSa12_endMutationyyFSS5IndexV_Tg5"(ptr nocapture swiftself dereferenceable(8) %217)
  br label %221

221:                                              ; preds = %215, %191
  %222 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %2, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %222, i32 0, i32 0
  store i64 %.lcssa, ptr %._value, align 8
  br label %225

223:                                              ; preds = %15
  call void @swift_bridgeObjectRelease(ptr %1) #4
  %224 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %2, i32 0, i32 1
  %._value11 = getelementptr inbounds %TSi, ptr %224, i32 0, i32 0
  store i64 0, ptr %._value11, align 8
  br label %225

225:                                              ; preds = %223, %221
  ret ptr %2
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es18_StringBreadcrumbsCfD"(ptr swiftself %0) #0 {
entry:
  %1 = getelementptr inbounds %Ts18_StringBreadcrumbsC, ptr %0, i32 0, i32 2
  %2 = call ptr @"$eSaySS5IndexVGWOh"(ptr %1)
  call void @swift_deallocClassInstance(ptr %0, i64 32, i64 7) #4
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc { ptr, ptr } @"$eSa22_allocateUninitializedySayxG_SpyxGtSiFZSS5IndexV_Tt0g5"(i64 %0) #0 {
entry:
  %1 = icmp slt i64 %0, 0
  %2 = call i1 @llvm.expect.i1(i1 %1, i1 false)
  br i1 %2, label %16, label %3

3:                                                ; preds = %entry
  %4 = call ptr @swift_retain(ptr returned @"$es23_swiftEmptyArrayStorageSi_S3itvp") #3
  %5 = icmp slt i64 0, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  br label %10

7:                                                ; preds = %3
  call void @swift_release(ptr @"$es23_swiftEmptyArrayStorageSi_S3itvp") #4
  %8 = call swiftcc ptr @"$eSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZSS5IndexV_Tt0g5"(i64 %0)
  %9 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %8, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %9, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  store i64 %0, ptr %._storage.count._value, align 8
  br label %10

10:                                               ; preds = %7, %6
  %11 = phi ptr [ @"$es23_swiftEmptyArrayStorageSi_S3itvp", %6 ], [ %8, %7 ]
  %12 = call ptr @swift_retain(ptr returned %11) #3
  %13 = getelementptr inbounds i8, ptr %11, i64 32
  call void @swift_release(ptr %11) #4
  %14 = insertvalue { ptr, ptr } undef, ptr %11, 0
  %15 = insertvalue { ptr, ptr } %14, ptr %13, 1
  ret { ptr, ptr } %15

16:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.36.Can't construct Array with count < 0" to i64), i64 36, i8 2, i64 ptrtoint (ptr @".str.17.Swift/Array.swift" to i64), i64 17, i8 2, i64 947)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSa15reserveCapacityyySiFSS5IndexV_Tg5"(i64 %0, ptr nocapture swiftself dereferenceable(8) %1) #0 {
entry:
  %._buffer = getelementptr inbounds %TSa, ptr %1, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %2 = load ptr, ptr %._buffer._storage, align 8
  %3 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %2) #3
  %._buffer1 = getelementptr inbounds %TSa, ptr %1, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  store ptr %2, ptr %._buffer1._storage, align 8
  br i1 %3, label %5, label %4

4:                                                ; preds = %entry
  br label %14

5:                                                ; preds = %entry
  %._buffer._storage6 = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %6 = load ptr, ptr %._buffer._storage6, align 8
  %7 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %6, i32 0, i32 1
  %._storage7 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %7, i32 0, i32 0
  %._storage7._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage7, i32 0, i32 1
  %._storage7._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage7._capacityAndFlags, i32 0, i32 0
  %8 = load i64, ptr %._storage7._capacityAndFlags._value, align 8
  %9 = lshr i64 %8, 1
  %10 = icmp slt i64 %9, %0
  %11 = call i1 @llvm.expect.i1(i1 %10, i1 false)
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  br label %28

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i1 [ false, %4 ], [ true, %13 ]
  %._buffer._storage2 = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %16 = load ptr, ptr %._buffer._storage2, align 8
  %17 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %16, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %17, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  %18 = load i64, ptr %._storage.count._value, align 8, !range !6
  %19 = icmp slt i64 %18, %0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i64 [ %18, %20 ], [ %0, %21 ]
  %._buffer._storage3 = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %24 = load ptr, ptr %._buffer._storage3, align 8
  %25 = call ptr @swift_retain(ptr returned %24) #3
  %26 = call swiftcc ptr @"$es22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS5IndexV_Tg5"(i1 %15, i64 %23, i1 false, ptr %24)
  %._buffer4 = getelementptr inbounds %TSa, ptr %1, i32 0, i32 0
  %._buffer4._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer4, i32 0, i32 0
  %27 = load ptr, ptr %._buffer4._storage, align 8
  %._buffer5 = getelementptr inbounds %TSa, ptr %1, i32 0, i32 0
  %._buffer5._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer5, i32 0, i32 0
  store ptr %26, ptr %._buffer5._storage, align 8
  call void @swift_release(ptr %27) #4
  br label %28

28:                                               ; preds = %12, %22
  call swiftcc void @"$eSa12_endMutationyyFSS5IndexV_Tg5"(ptr nocapture swiftself dereferenceable(8) %1)
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSa034_makeUniqueAndReserveCapacityIfNotB0yyFSS5IndexV_Tg5"(ptr nocapture swiftself dereferenceable(8) %0) #0 {
entry:
  %._buffer = getelementptr inbounds %TSa, ptr %0, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %1 = load ptr, ptr %._buffer._storage, align 8
  %2 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %1) #3
  %._buffer1 = getelementptr inbounds %TSa, ptr %0, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  store ptr %1, ptr %._buffer1._storage, align 8
  br i1 %2, label %13, label %3

3:                                                ; preds = %entry
  %._buffer2 = getelementptr inbounds %TSa, ptr %0, i32 0, i32 0
  %._buffer2._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer2, i32 0, i32 0
  %4 = load ptr, ptr %._buffer2._storage, align 8
  %5 = call swiftcc i64 @"$eSa5countSivgSS5IndexV_Tg5"(ptr %4)
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %5, i64 1)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  %._buffer._storage3 = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %9 = load ptr, ptr %._buffer._storage3, align 8
  %10 = call ptr @swift_retain(ptr returned %9) #3
  %11 = call swiftcc ptr @"$es22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS5IndexV_Tg5"(i1 false, i64 %7, i1 true, ptr %9)
  %._buffer4 = getelementptr inbounds %TSa, ptr %0, i32 0, i32 0
  %._buffer4._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer4, i32 0, i32 0
  %12 = load ptr, ptr %._buffer4._storage, align 8
  %._buffer5 = getelementptr inbounds %TSa, ptr %0, i32 0, i32 0
  %._buffer5._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer5, i32 0, i32 0
  store ptr %11, ptr %._buffer5._storage, align 8
  call void @swift_release(ptr %12) #4
  br label %14

13:                                               ; preds = %entry
  br label %14

14:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSa36_reserveCapacityAssumingUniqueBuffer8oldCountySi_tFSS5IndexV_Tg5"(i64 %0, ptr nocapture swiftself dereferenceable(8) %1) #0 {
entry:
  %._buffer = getelementptr inbounds %TSa, ptr %1, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %2 = load ptr, ptr %._buffer._storage, align 8
  %3 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %2, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %3, i32 0, i32 0
  %._storage._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 1
  %._storage._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage._capacityAndFlags, i32 0, i32 0
  %4 = load i64, ptr %._storage._capacityAndFlags._value, align 8
  %5 = lshr i64 %4, 1
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 1)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  %9 = icmp slt i64 %5, %7
  %10 = call i1 @llvm.expect.i1(i1 %9, i1 false)
  br i1 %10, label %12, label %11

11:                                               ; preds = %entry
  br label %18

12:                                               ; preds = %entry
  %13 = icmp slt i64 0, %5
  %._buffer._storage1 = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %14 = load ptr, ptr %._buffer._storage1, align 8
  %15 = call ptr @swift_retain(ptr returned %14) #3
  %16 = call swiftcc ptr @"$es22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS5IndexV_Tg5"(i1 %13, i64 %7, i1 true, ptr %14)
  %._buffer2 = getelementptr inbounds %TSa, ptr %1, i32 0, i32 0
  %._buffer2._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer2, i32 0, i32 0
  %17 = load ptr, ptr %._buffer2._storage, align 8
  %._buffer3 = getelementptr inbounds %TSa, ptr %1, i32 0, i32 0
  %._buffer3._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer3, i32 0, i32 0
  store ptr %16, ptr %._buffer3._storage, align 8
  call void @swift_release(ptr %17) #4
  br label %18

18:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSa37_appendElementAssumeUniqueAndCapacity_03newB0ySi_xntFSS5IndexV_Tg5"(i64 %0, i64 %1, ptr nocapture swiftself dereferenceable(8) %2) #0 {
entry:
  %._buffer = getelementptr inbounds %TSa, ptr %2, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %3 = load ptr, ptr %._buffer._storage, align 8
  %4 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 1)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %3, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %7, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  store i64 %5, ptr %._storage.count._value, align 8
  %._buffer._storage1 = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %8 = load ptr, ptr %._buffer._storage1, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 32
  %10 = getelementptr inbounds %TSS5IndexV, ptr %9, i64 %0
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %10, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  store i64 %1, ptr %._rawBits._value, align 8
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSa12_endMutationyyFSS5IndexV_Tg5"(ptr nocapture swiftself dereferenceable(8) %0) #0 {
entry:
  %._buffer = getelementptr inbounds %TSa, ptr %0, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %1 = load ptr, ptr %._buffer._storage, align 8
  %._buffer1 = getelementptr inbounds %TSa, ptr %0, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  store ptr %1, ptr %._buffer1._storage, align 8
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$es11_StringGutsV20fastUTF8ScalarLength10startingAtS2i_tF"(i64 %0, i64 %1, ptr %2) #0 {
entry:
  %bitcast = alloca ptr, align 8
  %3 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %4 = alloca %Ts5UInt8V, align 1
  %5 = alloca ptr, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %6 = alloca i8, i64 24, align 16
  %7 = getelementptr inbounds <{ %swift.refcounted, %TSi }>, ptr %6, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %7, i32 0, i32 0
  store i64 %0, ptr %._value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitcast)
  store ptr %2, ptr %bitcast, align 8
  %bitcast._value = getelementptr inbounds %Ts6UInt64V, ptr %bitcast, i32 0, i32 0
  %8 = load i64, ptr %bitcast._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitcast)
  %9 = and i64 %8, 2305843009213693952
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %entry
  %12 = and i64 %8, 1080863910568919040
  %13 = lshr i64 %12, 56
  call void @llvm.lifetime.start.p0(i64 16, ptr %3)
  %.elt = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %3, i32 0, i32 0
  %.elt1 = getelementptr inbounds <{ %Ts6UInt64V, %Ts6UInt64V }>, ptr %3, i32 0, i32 1
  %14 = call i64 @llvm.bswap.i64(i64 255)
  %15 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %14)
  %16 = extractvalue { i64, i1 } %15, 0
  %17 = extractvalue { i64, i1 } %15, 1
  %18 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %16, i64 1)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  %21 = and i64 %8, %19
  %.elt._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt, i32 0, i32 0
  store i64 %1, ptr %.elt._value, align 8
  %.elt1._value = getelementptr inbounds %Ts6UInt64V, ptr %.elt1, i32 0, i32 0
  store i64 %21, ptr %.elt1._value, align 8
  %spsave = call ptr @llvm.stacksave.p0()
  %22 = alloca i8, i64 40, align 16
  %23 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %22, i32 0, i32 1
  %._value2 = getelementptr inbounds %TSi, ptr %23, i32 0, i32 0
  store i64 %13, ptr %._value2, align 8
  %24 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %22, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %24, i32 0, i32 0
  store ptr @"$es11_StringGutsV20fastUTF8ScalarLength10startingAtS2i_tFs5UInt8VSRyAFGXEfU_TA.3", ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %24, i32 0, i32 1
  store ptr %6, ptr %.data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %4)
  %25 = ptrtoint ptr %3 to i64
  %26 = getelementptr inbounds i8, ptr %3, i64 16
  %27 = ptrtoint ptr %26 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr %5)
  call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5TA.4"(ptr noalias nocapture sret(%Ts5UInt8V) %4, i64 %25, i64 %27, ptr swiftself %22, ptr noalias nocapture swifterror dereferenceable(8) %swifterror, ptr %5)
  %28 = load ptr, ptr %swifterror, align 8
  %29 = icmp ne ptr %28, null
  %30 = ptrtoint ptr %28 to i64
  br i1 %29, label %31, label %32

31:                                               ; preds = %11
  store ptr null, ptr %swifterror, align 8
  %toDestroy = load ptr, ptr %5, align 8
  call void @swift_release(ptr %toDestroy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr %4)
  call void @llvm.stackrestore.p0(ptr %spsave)
  call void @llvm.lifetime.end.p0(i64 16, ptr %3)
  unreachable

32:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 8, ptr %5)
  %._value3 = getelementptr inbounds %Ts5UInt8V, ptr %4, i32 0, i32 0
  %33 = load i8, ptr %._value3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %4)
  call void @llvm.stackrestore.p0(ptr %spsave)
  call void @llvm.lifetime.end.p0(i64 16, ptr %3)
  br label %63

34:                                               ; preds = %entry
  %35 = and i64 %1, 1152921504606846976
  %36 = icmp eq i64 %35, 0
  %37 = call i1 @llvm.expect.i1(i1 %36, i1 false)
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = and i64 %8, 1152921504606846975
  %40 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 32)
  %41 = extractvalue { i64, i1 } %40, 0
  %42 = extractvalue { i64, i1 } %40, 1
  %43 = icmp eq i64 %41, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = inttoptr i64 %41 to ptr
  %46 = ptrtoint ptr %45 to i64
  br label %58

47:                                               ; preds = %38
  unreachable

48:                                               ; preds = %34
  %49 = call swiftcc { i64, i64 } @"$es13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %1, ptr %2)
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = extractvalue { i64, i64 } %49, 1
  %52 = icmp eq i64 %50, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = inttoptr i64 %50 to ptr
  br label %56

55:                                               ; preds = %48
  unreachable

56:                                               ; preds = %53
  %57 = phi ptr [ %54, %53 ]
  br label %58

58:                                               ; preds = %56, %44
  %59 = phi i64 [ %46, %44 ], [ %50, %56 ]
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds %Ts5UInt8V, ptr %60, i64 %0
  %._value4 = getelementptr inbounds %Ts5UInt8V, ptr %61, i32 0, i32 0
  %62 = load i8, ptr %._value4, align 1
  br label %63

63:                                               ; preds = %58, %32
  %64 = phi i8 [ %33, %32 ], [ %62, %58 ]
  %65 = and i8 %64, -128
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 0, i8 %64)
  %69 = extractvalue { i8, i1 } %68, 0
  %70 = extractvalue { i8, i1 } %68, 1
  %71 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 %69, i8 1)
  %72 = extractvalue { i8, i1 } %71, 0
  %73 = extractvalue { i8, i1 } %71, 1
  %74 = call i8 @llvm.ctlz.i8(i8 %72, i1 false)
  %75 = zext i8 %74 to i64
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %67
  %78 = phi i64 [ %75, %67 ], [ 1, %76 ]
  ret i64 %78
}

; Function Attrs: noinline nounwind
define hidden swiftcc ptr @"$eSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZSS5IndexV_Tt0g5"(i64 %0) #11 {
entry:
  %1 = icmp slt i64 %0, 0
  br i1 %1, label %12, label %2

2:                                                ; preds = %entry
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = mul i64 8, %0
  %6 = add i64 32, %5
  %7 = call noalias ptr @swift_allocObject(ptr @"$es23_ContiguousArrayStorageCySS5IndexVGN", i64 %6, i64 7) #4
  %8 = call ptr @swift_retain(ptr returned %7) #3
  %9 = shl i64 %0, 1
  %10 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %7, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %10, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  store i64 0, ptr %._storage.count._value, align 8
  %._storage._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 1
  %._storage._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage._capacityAndFlags, i32 0, i32 0
  store i64 %9, ptr %._storage._capacityAndFlags._value, align 8
  call void @swift_release(ptr %7) #4
  br label %15

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %entry
  br label %13

13:                                               ; preds = %12, %11
  %14 = call ptr @swift_retain(ptr returned @"$es23_swiftEmptyArrayStorageSi_S3itvp") #3
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi ptr [ %7, %4 ], [ @"$es23_swiftEmptyArrayStorageSi_S3itvp", %13 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind
define hidden swiftcc ptr @"$es22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS5IndexV_Tg5"(i1 %0, i64 %1, i1 %2, ptr %3) #11 {
entry:
  %4 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %3, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %4, i32 0, i32 0
  %._storage._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 1
  %._storage._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage._capacityAndFlags, i32 0, i32 0
  %5 = load i64, ptr %._storage._capacityAndFlags._value, align 8
  %6 = lshr i64 %5, 1
  br i1 %2, label %8, label %7

7:                                                ; preds = %entry
  br label %20

8:                                                ; preds = %entry
  %9 = icmp slt i64 %6, %1
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  br label %20

11:                                               ; preds = %8
  %12 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %6, i64 2)
  %13 = extractvalue { i64, i1 } %12, 0
  %14 = extractvalue { i64, i1 } %12, 1
  %15 = call i1 @llvm.expect.i1(i1 %14, i1 false)
  br i1 %15, label %49, label %16

16:                                               ; preds = %11
  %17 = icmp slt i64 %13, %1
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %20

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %18, %10, %7
  %21 = phi i64 [ %1, %7 ], [ %6, %10 ], [ %13, %18 ], [ %1, %19 ]
  %22 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %3, i32 0, i32 1
  %._storage1 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %22, i32 0, i32 0
  %._storage1.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage1, i32 0, i32 0
  %._storage1.count._value = getelementptr inbounds %TSi, ptr %._storage1.count, i32 0, i32 0
  %23 = load i64, ptr %._storage1.count._value, align 8, !range !6
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i64 [ %21, %25 ], [ %23, %26 ]
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = mul i64 8, %28
  %32 = add i64 32, %31
  %33 = call noalias ptr @swift_allocObject(ptr @"$es23_ContiguousArrayStorageCySS5IndexVGN", i64 %32, i64 7) #4
  %34 = call ptr @swift_retain(ptr returned %33) #3
  %35 = shl i64 %28, 1
  %36 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %33, i32 0, i32 1
  %._storage2 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %36, i32 0, i32 0
  %._storage2.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage2, i32 0, i32 0
  %._storage2.count._value = getelementptr inbounds %TSi, ptr %._storage2.count, i32 0, i32 0
  store i64 %23, ptr %._storage2.count._value, align 8
  %._storage2._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage2, i32 0, i32 1
  %._storage2._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage2._capacityAndFlags, i32 0, i32 0
  store i64 %35, ptr %._storage2._capacityAndFlags._value, align 8
  call void @swift_release(ptr %33) #4
  br label %39

37:                                               ; preds = %27
  %38 = call ptr @swift_retain(ptr returned @"$es23_swiftEmptyArrayStorageSi_S3itvp") #3
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi ptr [ %33, %30 ], [ @"$es23_swiftEmptyArrayStorageSi_S3itvp", %37 ]
  br i1 %0, label %44, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, ptr %40, i64 32
  %43 = call swiftcc ptr @"$es22_ContiguousArrayBufferV13_copyContents8subRange12initializingSpyxGSnySiG_AFtFSS5IndexV_Tg5"(i64 0, i64 %23, ptr %42, ptr %3)
  br label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %40, i64 32
  %46 = getelementptr inbounds i8, ptr %3, i64 32
  call swiftcc void @"$eSp14moveInitialize4from5countySpyxG_SitFSS5IndexV_Tg5"(ptr %46, i64 %23, ptr %45)
  %47 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %3, i32 0, i32 1
  %._storage3 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %47, i32 0, i32 0
  %._storage3.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage3, i32 0, i32 0
  %._storage3.count._value = getelementptr inbounds %TSi, ptr %._storage3.count, i32 0, i32 0
  store i64 0, ptr %._storage3.count._value, align 8
  call void @swift_release(ptr %3) #4
  br label %48

48:                                               ; preds = %44, %41
  ret ptr %40

49:                                               ; preds = %11
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSa5countSivgSS5IndexV_Tg5"(ptr %0) #0 {
entry:
  %1 = call swiftcc i64 @"$eSa9_getCountSiyFSS5IndexV_Tg5"(ptr %0)
  ret i64 %1
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es22_ContiguousArrayBufferV13_copyContents8subRange12initializingSpyxGSnySiG_AFtFSS5IndexV_Tg5"(i64 %0, i64 %1, ptr %2, ptr %3) #0 {
entry:
  %4 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 %0)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = call i1 @llvm.expect.i1(i1 %6, i1 false)
  br i1 %7, label %37, label %8

8:                                                ; preds = %entry
  %9 = getelementptr inbounds i8, ptr %3, i64 32
  %10 = getelementptr inbounds %TSS5IndexV, ptr %9, i64 %0
  %11 = icmp slt i64 %5, 0
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 false)
  br i1 %12, label %36, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %TSS5IndexV, ptr %2, i64 %5
  %15 = icmp ult ptr %10, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %TSS5IndexV, ptr %10, i64 %5
  %19 = icmp ult ptr %2, %18
  %20 = call i1 @llvm.expect.i1(i1 %19, i1 false)
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %16
  %23 = ptrtoint ptr %10 to i64
  %24 = ptrtoint ptr %2 to i64
  br label %loop_header

loop_header:                                      ; preds = %loop_body, %22
  %25 = phi i64 [ 0, %22 ], [ %32, %loop_body ]
  %26 = icmp slt i64 %25, %5
  br i1 %26, label %loop_body, label %loop_exit

loop_body:                                        ; preds = %loop_header
  %27 = mul i64 %25, 8
  %28 = add i64 %23, %27
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %24, %27
  %31 = inttoptr i64 %30 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %29, i64 8, i1 false)
  %32 = add i64 %25, 1
  br label %loop_header

loop_exit:                                        ; preds = %loop_header
  %33 = call ptr @swift_retain(ptr returned %3) #3
  call void @swift_release(ptr %3) #4
  call void @swift_release(ptr %3) #4
  %34 = getelementptr inbounds %TSS5IndexV, ptr %2, i64 %5
  ret ptr %34

35:                                               ; preds = %17
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.49.UnsafeMutablePointer.initialize overlapping range" to i64), i64 49, i8 2, i64 ptrtoint (ptr @".str.25.Swift/UnsafePointer.swift" to i64), i64 25, i8 2, i64 1097)
  call void @llvm.trap()
  unreachable

36:                                               ; preds = %8
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.51.UnsafeMutablePointer.initialize with negative count" to i64), i64 51, i8 2, i64 ptrtoint (ptr @".str.25.Swift/UnsafePointer.swift" to i64), i64 25, i8 2, i64 1095)
  call void @llvm.trap()
  unreachable

37:                                               ; preds = %entry
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSp14moveInitialize4from5countySpyxG_SitFSS5IndexV_Tg5"(ptr %0, i64 %1, ptr %2) #0 {
entry:
  %3 = icmp slt i64 %1, 0
  %4 = call i1 @llvm.expect.i1(i1 %3, i1 false)
  br i1 %4, label %40, label %5

5:                                                ; preds = %entry
  %6 = icmp ult ptr %2, %0
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %TSS5IndexV, ptr %0, i64 %1
  %9 = icmp ult ptr %2, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %28

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, %0
  br i1 %12, label %26, label %13

13:                                               ; preds = %11
  %14 = ptrtoint ptr %0 to i64
  %15 = ptrtoint ptr %2 to i64
  br label %loop_header1

loop_header1:                                     ; preds = %loop_body2, %13
  %16 = phi i64 [ 0, %13 ], [ %25, %loop_body2 ]
  %17 = icmp slt i64 %16, %1
  br i1 %17, label %loop_body2, label %loop_exit3

loop_body2:                                       ; preds = %loop_header1
  %18 = sub i64 %1, %16
  %19 = sub i64 %18, 1
  %20 = mul i64 %19, 8
  %21 = add i64 %14, %20
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %15, %20
  %24 = inttoptr i64 %23 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %22, i64 8, i1 false)
  %25 = add i64 %16, 1
  br label %loop_header1

loop_exit3:                                       ; preds = %loop_header1
  br label %39

26:                                               ; preds = %11
  br label %39

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %10
  %29 = ptrtoint ptr %0 to i64
  %30 = ptrtoint ptr %2 to i64
  br label %loop_header

loop_header:                                      ; preds = %loop_body, %28
  %31 = phi i64 [ 0, %28 ], [ %38, %loop_body ]
  %32 = icmp slt i64 %31, %1
  br i1 %32, label %loop_body, label %loop_exit

loop_body:                                        ; preds = %loop_header
  %33 = mul i64 %31, 8
  %34 = add i64 %29, %33
  %35 = inttoptr i64 %34 to ptr
  %36 = add i64 %30, %33
  %37 = inttoptr i64 %36 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %35, i64 8, i1 false)
  %38 = add i64 %31, 1
  br label %loop_header

loop_exit:                                        ; preds = %loop_header
  br label %39

39:                                               ; preds = %26, %loop_exit3, %loop_exit
  ret void

40:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.55.UnsafeMutablePointer.moveInitialize with negative count" to i64), i64 55, i8 2, i64 ptrtoint (ptr @".str.25.Swift/UnsafePointer.swift" to i64), i64 25, i8 2, i64 1051)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$eSa9_getCountSiyFSS5IndexV_Tg5"(ptr %0) #0 {
entry:
  %1 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %0, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %1, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  %2 = load i64, ptr %._storage.count._value, align 8, !range !6
  ret i64 %2
}

; Function Attrs: nounwind
define hidden swiftcc void @"$eSS9UTF16ViewV14_utf16Distance4from2toSiSS5IndexV_AGtFSiSRys5UInt8VGXEfU_"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %entry
  %7 = inttoptr i64 %1 to ptr
  br label %9

8:                                                ; preds = %entry
  br label %12

9:                                                ; preds = %6
  %10 = phi ptr [ %7, %6 ]
  %11 = ptrtoint ptr %10 to i64
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i64 [ 0, %8 ], [ %11, %9 ]
  %14 = icmp slt i64 %2, 0
  %15 = call i1 @llvm.expect.i1(i1 %14, i1 false)
  br i1 %15, label %105, label %16

16:                                               ; preds = %12
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = icmp eq i64 %13, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = inttoptr i64 %13 to ptr
  br label %23

22:                                               ; preds = %18
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.56.UnsafeRawBufferPointer has a nil start and nonzero count" to i64), i64 56, i8 2, i64 ptrtoint (ptr @".str.34.Swift/UnsafeRawBufferPointer.swift" to i64), i64 34, i8 2, i64 1189)
  call void @llvm.trap()
  unreachable

23:                                               ; preds = %20
  %24 = phi ptr [ %21, %20 ]
  br label %32

25:                                               ; preds = %16
  %26 = icmp eq i64 %13, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = inttoptr i64 %13 to ptr
  br label %30

29:                                               ; preds = %25
  br label %47

30:                                               ; preds = %27
  %31 = phi ptr [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %23
  %33 = inttoptr i64 %13 to ptr
  %34 = getelementptr inbounds i8, ptr %33, i64 %2
  %35 = icmp eq i64 %13, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = inttoptr i64 %13 to ptr
  br label %39

38:                                               ; preds = %32
  br label %47

39:                                               ; preds = %36
  %40 = phi ptr [ %37, %36 ]
  %41 = ptrtoint ptr %34 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv i64 %43, 1
  %45 = icmp slt i64 0, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %29, %46, %38
  %._value = getelementptr inbounds %TSi, ptr %0, i32 0, i32 0
  store i64 0, ptr %._value, align 8
  br label %101

48:                                               ; preds = %39
  %49 = sdiv i64 %2, 1
  %50 = getelementptr inbounds i8, ptr %33, i64 %49
  br label %51

51:                                               ; preds = %103, %48
  %52 = phi ptr [ %33, %48 ], [ %104, %103 ]
  %53 = icmp ult ptr %52, %50
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  %.lcssa4 = phi ptr [ %52, %51 ]
  br label %60

55:                                               ; preds = %51
  %._value3 = getelementptr inbounds %Ts5UInt8V, ptr %52, i32 0, i32 0
  %56 = load i8, ptr %._value3, align 1
  %57 = and i8 %56, -64
  %58 = icmp eq i8 %57, -128
  br i1 %58, label %103, label %59

59:                                               ; preds = %55
  %.lcssa5 = phi ptr [ %52, %55 ]
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi ptr [ %.lcssa5, %59 ], [ %.lcssa4, %54 ]
  %62 = icmp ult ptr %61, %50
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %99

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %102, %64
  %66 = phi i64 [ 0, %64 ], [ %96, %102 ]
  %67 = phi ptr [ %61, %64 ], [ %83, %102 ]
  %._value2 = getelementptr inbounds %Ts5UInt8V, ptr %67, i32 0, i32 0
  %68 = load i8, ptr %._value2, align 1
  %69 = and i8 %68, -128
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 0, i8 %68)
  %73 = extractvalue { i8, i1 } %72, 0
  %74 = extractvalue { i8, i1 } %72, 1
  %75 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 %73, i8 1)
  %76 = extractvalue { i8, i1 } %75, 0
  %77 = extractvalue { i8, i1 } %75, 1
  %78 = call i8 @llvm.ctlz.i8(i8 %76, i1 false)
  %79 = zext i8 %78 to i64
  br label %81

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %71
  %82 = phi i64 [ %79, %71 ], [ 1, %80 ]
  %83 = getelementptr inbounds i8, ptr %67, i64 %82
  %84 = icmp ult ptr %50, %83
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = icmp eq i64 %82, 4
  br i1 %86, label %88, label %87

87:                                               ; preds = %85
  br label %89

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88, %87
  %90 = phi i64 [ 1, %87 ], [ 2, %88 ]
  %91 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %66, i64 %90)
  %92 = extractvalue { i64, i1 } %91, 0
  %93 = extractvalue { i64, i1 } %91, 1
  br label %95

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %89
  %96 = phi i64 [ %92, %89 ], [ %66, %94 ]
  %97 = icmp ult ptr %83, %50
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %.lcssa = phi i64 [ %96, %95 ]
  br label %99

99:                                               ; preds = %98, %63
  %100 = phi i64 [ 0, %63 ], [ %.lcssa, %98 ]
  %._value1 = getelementptr inbounds %TSi, ptr %0, i32 0, i32 0
  store i64 %100, ptr %._value1, align 8
  br label %101

101:                                              ; preds = %99, %47
  ret void

102:                                              ; preds = %95
  br label %65

103:                                              ; preds = %55
  %104 = getelementptr inbounds i8, ptr %52, i64 1
  br label %51

105:                                              ; preds = %12
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.42.UnsafeRawBufferPointer with negative count" to i64), i64 42, i8 2, i64 ptrtoint (ptr @".str.34.Swift/UnsafeRawBufferPointer.swift" to i64), i64 34, i8 2, i64 1188)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es11_StringGutsV12withFastUTF85range_xSnySiG_xSRys5UInt8VGKXEtKlFxAHKXEfU_Si_TG5"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, ptr %3, ptr %4, i64 %5, i64 %6, ptr swiftself %7, ptr noalias nocapture swifterror dereferenceable(8) %8) #0 {
entry:
  %9 = alloca %TSi, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %9)
  %10 = icmp slt i64 %5, 0
  %11 = call i1 @llvm.expect.i1(i1 %10, i1 false)
  br i1 %11, label %27, label %12

12:                                               ; preds = %entry
  %13 = icmp slt i64 %2, %6
  %14 = call i1 @llvm.expect.i1(i1 %13, i1 false)
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = call swiftcc { i64, i64 } @"$eSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5"(i64 %5, i64 %6, i64 %1, i64 %2) #16
  %17 = extractvalue { i64, i64 } %16, 0
  %18 = extractvalue { i64, i64 } %16, 1
  call swiftcc void %3(ptr noalias nocapture sret(%TSi) %9, i64 %17, i64 %18, ptr swiftself %4, ptr noalias nocapture swifterror dereferenceable(8) %8) #16
  %19 = load ptr, ptr %8, align 8
  %20 = icmp ne ptr %19, null
  %21 = ptrtoint ptr %19 to i64
  br i1 %20, label %22, label %24

22:                                               ; preds = %15
  %23 = phi ptr [ %19, %15 ]
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  store ptr %23, ptr %8, align 8
  ret void

24:                                               ; preds = %15
  %._value = getelementptr inbounds %TSi, ptr %9, i32 0, i32 0
  %25 = load i64, ptr %._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  %._value1 = getelementptr inbounds %TSi, ptr %0, i32 0, i32 0
  store i64 %25, ptr %._value1, align 8
  ret void

26:                                               ; preds = %12
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1952) #16
  call void @llvm.trap()
  unreachable

27:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1951) #16
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TG5"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, i64 %3, ptr %4, ptr %5, ptr swiftself %6, ptr noalias nocapture swifterror dereferenceable(8) %7, ptr %8) #0 {
entry:
  %9 = alloca %TSi, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %9)
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %entry
  %12 = inttoptr i64 %1 to ptr
  br label %14

13:                                               ; preds = %entry
  unreachable

14:                                               ; preds = %11
  %15 = phi ptr [ %12, %11 ]
  %16 = inttoptr i64 %1 to ptr
  %17 = ptrtoint ptr %16 to i64
  call swiftcc void %4(ptr noalias nocapture sret(%TSi) %9, i64 %17, i64 %3, ptr swiftself %5, ptr noalias nocapture swifterror dereferenceable(8) %7) #16
  %18 = load ptr, ptr %7, align 8
  %19 = icmp ne ptr %18, null
  %20 = ptrtoint ptr %18 to i64
  br i1 %19, label %21, label %23

21:                                               ; preds = %14
  %22 = phi ptr [ %18, %14 ]
  store ptr null, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  store ptr %22, ptr %8, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8
  ret void

23:                                               ; preds = %14
  %._value = getelementptr inbounds %TSi, ptr %9, i32 0, i32 0
  %24 = load i64, ptr %._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9)
  %._value1 = getelementptr inbounds %TSi, ptr %0, i32 0, i32 0
  store i64 %24, ptr %._value1, align 8
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc { i64, i64 } @"$eSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5"(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
entry:
  %4 = icmp slt i64 %0, 0
  br i1 %4, label %39, label %5

5:                                                ; preds = %entry
  %6 = icmp slt i64 %3, %1
  %7 = call i1 @llvm.expect.i1(i1 %6, i1 false)
  br i1 %7, label %38, label %8

8:                                                ; preds = %5
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = inttoptr i64 %2 to ptr
  br label %13

12:                                               ; preds = %8
  br label %17

13:                                               ; preds = %10
  %14 = phi ptr [ %11, %10 ]
  %15 = getelementptr inbounds %Ts5UInt8V, ptr %14, i64 %0
  %16 = ptrtoint ptr %15 to i64
  br label %17

17:                                               ; preds = %13, %12
  %18 = phi i64 [ %2, %12 ], [ %16, %13 ]
  %19 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 %0)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = extractvalue { i64, i1 } %19, 1
  %22 = icmp slt i64 %20, 0
  %23 = call i1 @llvm.expect.i1(i1 %22, i1 false)
  br i1 %23, label %37, label %24

24:                                               ; preds = %17
  %25 = icmp eq i64 %20, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = icmp eq i64 %18, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = inttoptr i64 %18 to ptr
  br label %31

30:                                               ; preds = %26
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.53.UnsafeBufferPointer has a nil start and nonzero count" to i64), i64 53, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1403)
  call void @llvm.trap()
  unreachable

31:                                               ; preds = %28
  %32 = phi ptr [ %29, %28 ]
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %31
  %35 = insertvalue { i64, i64 } undef, i64 %18, 0
  %36 = insertvalue { i64, i64 } %35, i64 %20, 1
  ret { i64, i64 } %36

37:                                               ; preds = %17
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.39.UnsafeBufferPointer with negative count" to i64), i64 39, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1401)
  call void @llvm.trap()
  unreachable

38:                                               ; preds = %5
  br label %40

39:                                               ; preds = %entry
  br label %40

40:                                               ; preds = %39, %38
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.13.Invalid slice" to i64), i64 13, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 1993)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nounwind
define hidden swiftcc i64 @"$eSS8UTF8ViewV13_foreignIndex6beforeSS0D0VAF_tF"(i64 %0, i64 %1, ptr %2) #11 {
entry:
  %3 = lshr i64 %0, 14
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %entry
  br label %18

7:                                                ; preds = %entry
  %8 = and i64 %0, 1
  %9 = icmp eq i64 %8, 0
  %10 = call i1 @llvm.expect.i1(i1 %9, i1 false)
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %18

12:                                               ; preds = %7
  %13 = call swiftcc i64 @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEF"(i64 %0, i64 %1, ptr %2)
  %14 = or i64 %13, 1
  %15 = and i64 %14, -13
  %16 = and i64 %0, 12
  %17 = or i64 %15, %16
  br label %18

18:                                               ; preds = %12, %11, %6
  %19 = phi i64 [ %0, %6 ], [ %0, %11 ], [ %17, %12 ]
  %20 = lshr i64 %19, 14
  %21 = and i64 %20, 3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = lshr i64 %19, 16
  %25 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %21, i64 1)
  %26 = extractvalue { i64, i1 } %25, 0
  %27 = extractvalue { i64, i1 } %25, 1
  %28 = shl i64 %24, 16
  %29 = shl i64 %26, 14
  %30 = or i64 %28, %29
  %31 = or i64 %30, 8
  br label %66

32:                                               ; preds = %18
  %33 = lshr i64 %19, 16
  %34 = shl i64 %33, 16
  %35 = call swiftcc { i32, i64 } @"$es11_StringGutsV27foreignErrorCorrectedScalar8endingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF"(i64 %34, i64 %1, ptr %2)
  %36 = extractvalue { i32, i64 } %35, 0
  %37 = extractvalue { i32, i64 } %35, 1
  %38 = icmp ult i32 %36, 128
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = icmp ult i32 %36, 2048
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = icmp ult i32 %36, 65536
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  br label %47

44:                                               ; preds = %41
  br label %47

45:                                               ; preds = %39
  br label %47

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %45, %44, %43
  %48 = phi i64 [ 4, %43 ], [ 3, %44 ], [ 2, %45 ], [ 1, %46 ]
  %49 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %37)
  %50 = extractvalue { i64, i1 } %49, 0
  %51 = extractvalue { i64, i1 } %49, 1
  %52 = call i1 @llvm.expect.i1(i1 %51, i1 false)
  br i1 %52, label %68, label %53

53:                                               ; preds = %47
  %54 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %33, i64 %50)
  %55 = extractvalue { i64, i1 } %54, 0
  %56 = extractvalue { i64, i1 } %54, 1
  %57 = shl i64 %55, 16
  %58 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %48, i64 1)
  %59 = extractvalue { i64, i1 } %58, 0
  %60 = extractvalue { i64, i1 } %58, 1
  %61 = lshr i64 %57, 16
  %62 = shl i64 %61, 16
  %63 = shl i64 %59, 14
  %64 = or i64 %62, %63
  %65 = or i64 %64, 8
  br label %66

66:                                               ; preds = %53, %23
  %67 = phi i64 [ %31, %23 ], [ %65, %53 ]
  ret i64 %67

68:                                               ; preds = %47
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc { i32, i64 } @"$es11_StringGutsV27foreignErrorCorrectedScalar8endingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF"(i64 %0, i64 %1, ptr %2) #0 {
entry:
  %3 = lshr i64 %0, 16
  %4 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %3, i64 1)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = call swiftcc i16 @"$es11_StringGutsV19_getForeignCodeUnit33_876ADFC1F0BAC893C8817BD9A4741513LL2ats6UInt16VSi_tF"(i64 %5, i64 %1, ptr %2)
  %8 = and i16 %7, -1024
  %9 = icmp eq i16 %8, -10240
  br i1 %9, label %16, label %10

10:                                               ; preds = %entry
  %11 = icmp eq i16 %8, -9216
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 false)
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = zext i16 %7 to i32
  br label %45

15:                                               ; preds = %10
  br label %17

16:                                               ; preds = %entry
  br label %17

17:                                               ; preds = %16, %15
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %3, i64 2)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  br i1 %9, label %43, label %21

21:                                               ; preds = %17
  %22 = icmp slt i64 %19, 0
  %23 = call i1 @llvm.expect.i1(i1 %22, i1 false)
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = call swiftcc i16 @"$es11_StringGutsV19_getForeignCodeUnit33_876ADFC1F0BAC893C8817BD9A4741513LL2ats6UInt16VSi_tF"(i64 %19, i64 %1, ptr %2)
  %26 = and i16 %25, -1024
  %27 = icmp eq i16 %26, -10240
  %28 = call i1 @llvm.expect.i1(i1 %27, i1 true)
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %45

30:                                               ; preds = %24
  %31 = and i16 %25, 1023
  %32 = zext i16 %31 to i32
  %33 = shl i32 %32, 10
  %34 = and i16 %7, 1023
  %35 = zext i16 %34 to i32
  %36 = or i32 %33, %35
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 65536, i32 %36)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  %40 = call i1 @llvm.expect.i1(i1 %39, i1 false)
  br i1 %40, label %50, label %41

41:                                               ; preds = %30
  br label %45

42:                                               ; preds = %21
  br label %44

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %41, %29, %13
  %46 = phi i32 [ %14, %13 ], [ 65533, %29 ], [ %38, %41 ], [ 65533, %44 ]
  %47 = phi i64 [ 1, %13 ], [ 1, %29 ], [ 2, %41 ], [ 1, %44 ]
  %48 = insertvalue { i32, i64 } undef, i32 %46, 0
  %49 = insertvalue { i32, i64 } %48, i64 %47, 1
  ret { i32, i64 } %49

50:                                               ; preds = %30
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define protected ptr @swift_allocObject(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %3 = call swiftcc ptr @"$es17swift_allocObject8metadata12requiredSize0E13AlignmentMaskBpBp_S2itF"(ptr %0, i64 %1, i64 %2) #16
  ret ptr %3
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es17swift_allocObject8metadata12requiredSize0E13AlignmentMaskBpBp_S2itF"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %3 = call swiftcc ptr @"$es17swift_allocObject8metadata12requiredSize0E13AlignmentMaskSpys04HeapC0VGSpys13ClassMetadataVG_S2itF"(ptr %0, i64 %1, i64 %2)
  ret ptr %3
}

; Function Attrs: nounwind sspreq
define hidden swiftcc ptr @"$es17swift_allocObject8metadata12requiredSize0E13AlignmentMaskSpys04HeapC0VGSpys13ClassMetadataVG_S2itF"(ptr %0, i64 %1, i64 %2) #2 {
entry:
  %3 = alloca %TSvSg, align 8
  %4 = icmp eq i64 %2, -1
  br i1 %4, label %14, label %5

5:                                                ; preds = %entry
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 1)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  %9 = call i1 @llvm.expect.i1(i1 %8, i1 false)
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = icmp slt i64 8, %7
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  br label %15

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %entry
  br label %15

15:                                               ; preds = %14, %13, %12
  %16 = phi i64 [ 8, %12 ], [ %7, %13 ], [ 16, %14 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr %3)
  store i64 0, ptr %3, align 8
  %17 = call i32 @posix_memalign(ptr %3, i64 %16, i64 %1)
  %18 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %3)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = inttoptr i64 %18 to ptr
  br label %23

22:                                               ; preds = %15
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.57.Unexpectedly found nil while unwrapping an Optional value" to i64), i64 57, i8 2, i64 ptrtoint (ptr @".str.27.Swift/EmbeddedRuntime.swift" to i64), i64 27, i8 2, i64 174)
  call void @llvm.trap()
  unreachable

23:                                               ; preds = %20
  %24 = phi ptr [ %21, %20 ]
  call void @_swift_embedded_set_heap_object_metadata_pointer(ptr %24, ptr %0)
  %.refcount = getelementptr inbounds %Ts10HeapObjectV, ptr %24, i32 0, i32 1
  %.refcount._value = getelementptr inbounds %TSi, ptr %.refcount, i32 0, i32 0
  store i64 1, ptr %.refcount._value, align 8
  ret ptr %24

25:                                               ; preds = %5
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define protected ptr @swift_initStackObject(ptr %0, ptr %1) #0 {
entry:
  %2 = call swiftcc ptr @"$es21swift_initStackObject8metadata6objectBpBp_BptF"(ptr %0, ptr %1) #16
  ret ptr %2
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es21swift_initStackObject8metadata6objectBpBp_BptF"(ptr %0, ptr %1) #0 {
entry:
  call void @_swift_embedded_set_heap_object_metadata_pointer(ptr %1, ptr %0)
  %.refcount = getelementptr inbounds %Ts10HeapObjectV, ptr %1, i32 0, i32 1
  %.refcount._value = getelementptr inbounds %TSi, ptr %.refcount, i32 0, i32 0
  store i64 -9223372036854775807, ptr %.refcount._value, align 8
  ret ptr %1
}

; Function Attrs: nounwind
define protected ptr @swift_initStaticObject(ptr %0, ptr %1) #0 {
entry:
  %2 = call swiftcc ptr @"$es22swift_initStaticObject8metadata6objectBpBp_BptF"(ptr %0, ptr %1) #16
  ret ptr %2
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es22swift_initStaticObject8metadata6objectBpBp_BptF"(ptr %0, ptr %1) #0 {
entry:
  call void @_swift_embedded_set_heap_object_metadata_pointer(ptr %1, ptr %0)
  %.refcount = getelementptr inbounds %Ts10HeapObjectV, ptr %1, i32 0, i32 1
  %.refcount._value = getelementptr inbounds %TSi, ptr %.refcount, i32 0, i32 0
  store i64 -1, ptr %.refcount._value, align 8
  ret ptr %1
}

; Function Attrs: nounwind
define protected void @swift_deallocObject(ptr %0, i64 %1, i64 %2) #0 {
entry:
  call swiftcc void @"$es19swift_deallocObject6object13allocatedSize0E9AlignMaskyBp_S2itF"(ptr %0, i64 %1, i64 %2) #16
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es19swift_deallocObject6object13allocatedSize0E9AlignMaskyBp_S2itF"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %3 = ptrtoint ptr %0 to i64
  %4 = inttoptr i64 %3 to ptr
  call void @free(ptr %4)
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es26swift_deallocClassInstance6object13allocatedSize0F9AlignMaskyBp_S2itF"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %.refcount = getelementptr inbounds %Ts10HeapObjectV, ptr %0, i32 0, i32 1
  %.refcount._value = getelementptr inbounds %TSi, ptr %.refcount, i32 0, i32 0
  %3 = load i64, ptr %.refcount._value, align 8
  %4 = and i64 %3, -9223372036854775808
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %entry
  br label %10

7:                                                ; preds = %entry
  %8 = ptrtoint ptr %0 to i64
  %9 = inttoptr i64 %8 to ptr
  call void @free(ptr %9)
  br label %10

10:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind
define protected void @swift_deallocPartialClassInstance(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
entry:
  call swiftcc void @"$es33swift_deallocPartialClassInstance6object8metadata13allocatedSize0H9AlignMaskyBp_BpS2itF"(ptr %0, ptr %1, i64 %2, i64 %3) #16
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es33swift_deallocPartialClassInstance6object8metadata13allocatedSize0H9AlignMaskyBp_BpS2itF"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
entry:
  %4 = call ptr @_swift_embedded_get_heap_object_metadata_pointer(ptr %0)
  br label %5

5:                                                ; preds = %14, %entry
  %6 = phi ptr [ %4, %entry ], [ %15, %14 ]
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  call void @_swift_embedded_invoke_heap_object_optional_ivardestroyer(ptr %0, ptr %6)
  %.superclassMetadata = getelementptr inbounds %Ts13ClassMetadataV, ptr %6, i32 0, i32 0
  %9 = load i64, ptr %.superclassMetadata, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = inttoptr i64 %9 to ptr
  br label %14

13:                                               ; preds = %8
  br label %17

14:                                               ; preds = %11
  %15 = phi ptr [ %12, %11 ]
  br label %5

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind
define protected ptr @swift_slowAlloc(i64 %0, i64 %1) #0 {
entry:
  %2 = call swiftcc i64 @"$es15swift_slowAllocySvSgSi_SitF"(i64 %0, i64 %1) #16
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

; Function Attrs: nounwind sspreq
define hidden swiftcc i64 @"$es15swift_slowAllocySvSgSi_SitF"(i64 %0, i64 %1) #2 {
entry:
  %2 = alloca %TSvSg, align 8
  %3 = icmp eq i64 %1, -1
  br i1 %3, label %13, label %4

4:                                                ; preds = %entry
  %5 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1, i64 1)
  %6 = extractvalue { i64, i1 } %5, 0
  %7 = extractvalue { i64, i1 } %5, 1
  %8 = call i1 @llvm.expect.i1(i1 %7, i1 false)
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = icmp slt i64 8, %6
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  br label %14

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %entry
  br label %14

14:                                               ; preds = %13, %12, %11
  %15 = phi i64 [ 8, %11 ], [ %6, %12 ], [ 16, %13 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr %2)
  store i64 0, ptr %2, align 8
  %16 = call i32 @posix_memalign(ptr %2, i64 %15, i64 %0)
  %17 = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %2)
  ret i64 %17

18:                                               ; preds = %4
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define protected void @swift_slowDealloc(ptr %0, i64 %1, i64 %2) #0 {
entry:
  call swiftcc void @"$es17swift_slowDeallocyySv_S2itF"(ptr %0, i64 %1, i64 %2) #16
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es17swift_slowDeallocyySv_S2itF"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %3 = ptrtoint ptr %0 to i64
  %4 = inttoptr i64 %3 to ptr
  call void @free(ptr %4)
  ret void
}

; Function Attrs: nounwind
define protected swiftcc void @swift_willThrow(ptr swiftself %0, ptr noalias nocapture swifterror dereferenceable(8) %1) #0 {
entry:
  ret void
}

; Function Attrs: nounwind
define protected swiftcc void @swift_errorInMain(ptr %0) #0 {
entry:
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define protected swiftcc void @swift_unexpectedError(ptr %0, ptr %1, i64 %2, i1 %3, i64 %4) #0 {
entry:
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es12swift_retain6objectBpBp_tF"(ptr %0) #0 {
entry:
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %entry
  %4 = and i64 %1, -9223372036854775808
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  br label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load atomic i64, ptr %8 monotonic, align 8
  %10 = and i64 %9, 9223372036854775807
  %11 = icmp eq i64 %10, 9223372036854775807
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = atomicrmw add ptr %8, i64 1 monotonic, align 8
  br label %16

14:                                               ; preds = %7
  br label %16

15:                                               ; preds = %entry
  br label %16

16:                                               ; preds = %15, %14, %12, %6
  ret ptr %0
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es13swift_release6objectyBp_tF"(ptr %0) #0 {
entry:
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %34, label %3

3:                                                ; preds = %entry
  %4 = and i64 %1, -9223372036854775808
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  br label %35

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load atomic i64, ptr %8 monotonic, align 8
  %10 = and i64 %9, 9223372036854775807
  %11 = icmp eq i64 %10, 9223372036854775807
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = atomicrmw sub ptr %8, i64 1 acq_rel, align 8
  %14 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %13, i64 1)
  %15 = extractvalue { i64, i1 } %14, 0
  %16 = extractvalue { i64, i1 } %14, 1
  %17 = call i1 @llvm.expect.i1(i1 %16, i1 false)
  br i1 %17, label %36, label %18

18:                                               ; preds = %12
  %19 = and i64 %15, 9223372036854775807
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = icmp slt i64 %19, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  br label %35

24:                                               ; preds = %21
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.17.negative refcount" to i64), i64 17, i8 2, i64 ptrtoint (ptr @".str.27.Swift/EmbeddedRuntime.swift" to i64), i64 27, i8 2, i64 394)
  call void @llvm.trap()
  unreachable

25:                                               ; preds = %18
  %26 = and i64 %9, -9223372036854775808
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %30

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi i64 [ -9223372036854775808, %28 ], [ 0, %29 ]
  %32 = or i64 9223372036854775807, %31
  store atomic i64 %32, ptr %8 monotonic, align 8
  call void @_swift_embedded_invoke_heap_object_destroy(ptr %0)
  br label %35

33:                                               ; preds = %7
  br label %35

34:                                               ; preds = %entry
  br label %35

35:                                               ; preds = %34, %33, %30, %23, %6
  ret void

36:                                               ; preds = %12
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define protected ptr @swift_retain_n(ptr %0, i32 %1) #0 {
entry:
  %2 = call swiftcc ptr @"$es14swift_retain_n6object1nBpBp_s6UInt32VtF"(ptr %0, i32 %1) #16
  ret ptr %2
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es14swift_retain_n6object1nBpBp_s6UInt32VtF"(ptr %0, i32 %1) #0 {
entry:
  %2 = ptrtoint ptr %0 to i64
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %entry
  %5 = and i64 %2, -9223372036854775808
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  br label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load atomic i64, ptr %9 monotonic, align 8
  %11 = and i64 %10, 9223372036854775807
  %12 = icmp eq i64 %11, 9223372036854775807
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = zext i32 %1 to i64
  %15 = atomicrmw add ptr %9, i64 %14 monotonic, align 8
  br label %18

16:                                               ; preds = %8
  br label %18

17:                                               ; preds = %entry
  br label %18

18:                                               ; preds = %17, %16, %13, %7
  ret ptr %0
}

; Function Attrs: nounwind
define protected void @swift_release_n(ptr %0, i32 %1) #0 {
entry:
  call swiftcc void @"$es15swift_release_n6object1nyBp_s6UInt32VtF"(ptr %0, i32 %1) #16
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es15swift_release_n6object1nyBp_s6UInt32VtF"(ptr %0, i32 %1) #0 {
entry:
  %2 = ptrtoint ptr %0 to i64
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %36, label %4

4:                                                ; preds = %entry
  %5 = and i64 %2, -9223372036854775808
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  br label %37

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load atomic i64, ptr %9 monotonic, align 8
  %11 = and i64 %10, 9223372036854775807
  %12 = icmp eq i64 %11, 9223372036854775807
  br i1 %12, label %35, label %13

13:                                               ; preds = %8
  %14 = zext i32 %1 to i64
  %15 = atomicrmw sub ptr %9, i64 %14 acq_rel, align 8
  %16 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %15, i64 %14)
  %17 = extractvalue { i64, i1 } %16, 0
  %18 = extractvalue { i64, i1 } %16, 1
  %19 = call i1 @llvm.expect.i1(i1 %18, i1 false)
  br i1 %19, label %38, label %20

20:                                               ; preds = %13
  %21 = and i64 %17, 9223372036854775807
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = icmp slt i64 %21, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  br label %37

26:                                               ; preds = %23
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.17.negative refcount" to i64), i64 17, i8 2, i64 ptrtoint (ptr @".str.27.Swift/EmbeddedRuntime.swift" to i64), i64 27, i8 2, i64 394)
  call void @llvm.trap()
  unreachable

27:                                               ; preds = %20
  %28 = and i64 %10, -9223372036854775808
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %32

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i64 [ -9223372036854775808, %30 ], [ 0, %31 ]
  %34 = or i64 9223372036854775807, %33
  store atomic i64 %34, ptr %9 monotonic, align 8
  call void @_swift_embedded_invoke_heap_object_destroy(ptr %0)
  br label %37

35:                                               ; preds = %8
  br label %37

36:                                               ; preds = %entry
  br label %37

37:                                               ; preds = %36, %35, %32, %25, %7
  ret void

38:                                               ; preds = %13
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define protected void @swift_setDeallocating(ptr %0) #0 {
entry:
  call swiftcc void @"$es21swift_setDeallocating6objectyBp_tF"(ptr %0) #16
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es21swift_setDeallocating6objectyBp_tF"(ptr %0) #0 {
entry:
  ret void
}

; Function Attrs: nounwind
define protected ptr @swift_bridgeObjectRetain_n(ptr %0, i32 %1) #0 {
entry:
  %2 = call swiftcc ptr @"$es26swift_bridgeObjectRetain_n6object1nBpBp_s6UInt32VtF"(ptr %0, i32 %1) #16
  ret ptr %2
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es26swift_bridgeObjectRetain_n6object1nBpBp_s6UInt32VtF"(ptr %0, i32 %1) #0 {
entry:
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -8070450532247928840
  %4 = inttoptr i64 %3 to ptr
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %entry
  %7 = and i64 %3, -9223372036854775808
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  %12 = load atomic i64, ptr %11 monotonic, align 8
  %13 = and i64 %12, 9223372036854775807
  %14 = icmp eq i64 %13, 9223372036854775807
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = zext i32 %1 to i64
  %17 = atomicrmw add ptr %11, i64 %16 monotonic, align 8
  br label %20

18:                                               ; preds = %10
  br label %20

19:                                               ; preds = %entry
  br label %20

20:                                               ; preds = %19, %18, %15, %9
  ret ptr %4
}

; Function Attrs: nounwind
define protected void @swift_bridgeObjectRelease_n(ptr %0, i32 %1) #0 {
entry:
  call swiftcc void @"$es27swift_bridgeObjectRelease_n6object1nyBp_s6UInt32VtF"(ptr %0, i32 %1) #16
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es27swift_bridgeObjectRelease_n6object1nyBp_s6UInt32VtF"(ptr %0, i32 %1) #0 {
entry:
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -8070450532247928840
  %4 = inttoptr i64 %3 to ptr
  call swiftcc void @"$es15swift_release_n6object1nyBp_s6UInt32VtF"(ptr %4, i32 %1)
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es24swift_bridgeObjectRetain6objectBpBp_tF"(ptr %0) #0 {
entry:
  %1 = ptrtoint ptr %0 to i64
  %2 = and i64 %1, -8070450532247928840
  %3 = inttoptr i64 %2 to ptr
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %entry
  %6 = and i64 %2, -9223372036854775808
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  br label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  %11 = load atomic i64, ptr %10 monotonic, align 8
  %12 = and i64 %11, 9223372036854775807
  %13 = icmp eq i64 %12, 9223372036854775807
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = atomicrmw add ptr %10, i64 1 monotonic, align 8
  br label %18

16:                                               ; preds = %9
  br label %18

17:                                               ; preds = %entry
  br label %18

18:                                               ; preds = %17, %16, %14, %8
  ret ptr %3
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es25swift_bridgeObjectRelease6objectyBp_tF"(ptr %0) #0 {
entry:
  %1 = ptrtoint ptr %0 to i64
  %2 = and i64 %1, -8070450532247928840
  %3 = inttoptr i64 %2 to ptr
  call swiftcc void @"$es15swift_release_n6object1nyBp_s6UInt32VtF"(ptr %3, i32 1)
  ret void
}

; Function Attrs: nounwind
define protected i1 @swift_isUniquelyReferenced_native(ptr %0) #0 {
entry:
  %1 = call swiftcc i1 @"$es33swift_isUniquelyReferenced_native6objectSbBp_tF"(ptr %0) #16
  ret i1 %1
}

; Function Attrs: nounwind
define hidden swiftcc i1 @"$es33swift_isUniquelyReferenced_native6objectSbBp_tF"(ptr %0) #0 {
entry:
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %entry
  %4 = and i64 %1, -9223372036854775808
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  br label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load atomic i64, ptr %8 acquire, align 8
  %10 = icmp eq i64 %9, 1
  br label %13

11:                                               ; preds = %entry
  br label %12

12:                                               ; preds = %11, %6
  br label %13

13:                                               ; preds = %7, %12
  %14 = phi i1 [ false, %12 ], [ %10, %7 ]
  ret i1 %14
}

; Function Attrs: nounwind willreturn
define protected zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %0) #12 {
entry:
  %1 = call swiftcc i1 @"$es41swift_isUniquelyReferenced_nonNull_native6objectSbBp_tF"(ptr %0) #16
  ret i1 %1
}

; Function Attrs: nounwind
define hidden swiftcc i1 @"$es41swift_isUniquelyReferenced_nonNull_native6objectSbBp_tF"(ptr %0) #0 {
entry:
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  %2 = load atomic i64, ptr %1 acquire, align 8
  %3 = icmp eq i64 %2, 1
  ret i1 %3
}

; Function Attrs: nounwind
define protected i1 @swift_isEscapingClosureAtFileLocation(ptr %0, ptr %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
entry:
  %6 = call swiftcc i1 @"$es37swift_isEscapingClosureAtFileLocation6object8filename0I6Length4line6column16verificationTypeSbBp_SPys4Int8VGs5Int32VA2Ls6UInt32VtF"(ptr %0, ptr %1, i32 %2, i32 %3, i32 %4, i32 %5) #16
  ret i1 %6
}

; Function Attrs: nounwind
define hidden swiftcc i1 @"$es37swift_isEscapingClosureAtFileLocation6object8filename0I6Length4line6column16verificationTypeSbBp_SPys4Int8VGs5Int32VA2Ls6UInt32VtF"(ptr %0, ptr %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
entry:
  %6 = ptrtoint ptr %0 to i64
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %entry
  %9 = and i64 %6, -9223372036854775808
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = load atomic i64, ptr %13 acquire, align 8
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %11
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.28.non-escaping closure escaped" to i64), i64 28, i8 2, i64 ptrtoint (ptr @".str.27.Swift/EmbeddedRuntime.swift" to i64), i64 27, i8 2, i64 287)
  call void @llvm.trap()
  unreachable

18:                                               ; preds = %12
  br label %20

19:                                               ; preds = %entry
  br label %20

20:                                               ; preds = %19, %18
  ret i1 false
}

; Function Attrs: nounwind
define protected ptr @swift_dynamicCastClass(ptr %0, ptr %1) #0 {
entry:
  %2 = call swiftcc i64 @"$es22swift_dynamicCastClass6object14targetMetadataSvSgSv_SVtF"(ptr %0, ptr %1) #16
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$es22swift_dynamicCastClass6object14targetMetadataSvSgSv_SVtF"(ptr %0, ptr %1) #0 {
entry:
  %2 = call ptr @_swift_embedded_get_heap_object_metadata_pointer(ptr %0)
  br label %3

3:                                                ; preds = %16, %entry
  %4 = phi ptr [ %2, %entry ], [ %17, %16 ]
  %5 = icmp ne ptr %4, %1
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i64
  br label %14

8:                                                ; preds = %3
  %.superclassMetadata = getelementptr inbounds %Ts13ClassMetadataV, ptr %4, i32 0, i32 0
  %9 = load i64, ptr %.superclassMetadata, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = inttoptr i64 %9 to ptr
  br label %16

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13, %6
  %15 = phi i64 [ %7, %6 ], [ 0, %13 ]
  ret i64 %15

16:                                               ; preds = %11
  %17 = phi ptr [ %12, %11 ]
  br label %3
}

; Function Attrs: nounwind
define protected ptr @swift_dynamicCastClassUnconditional(ptr %0, ptr %1, ptr %2, i32 %3, i32 %4) #0 {
entry:
  %5 = call swiftcc ptr @"$es35swift_dynamicCastClassUnconditional6object14targetMetadata4file4line6columnS2v_SVSPys4Int8VGs6UInt32VAKtF"(ptr %0, ptr %1, ptr %2, i32 %3, i32 %4) #16
  ret ptr %5
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es35swift_dynamicCastClassUnconditional6object14targetMetadata4file4line6columnS2v_SVSPys4Int8VGs6UInt32VAKtF"(ptr %0, ptr %1, ptr %2, i32 %3, i32 %4) #0 {
entry:
  %5 = call ptr @_swift_embedded_get_heap_object_metadata_pointer(ptr %0)
  br label %6

6:                                                ; preds = %16, %entry
  %7 = phi ptr [ %5, %entry ], [ %17, %16 ]
  %8 = icmp ne ptr %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  ret ptr %0

10:                                               ; preds = %6
  %.superclassMetadata = getelementptr inbounds %Ts13ClassMetadataV, ptr %7, i32 0, i32 0
  %11 = load i64, ptr %.superclassMetadata, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = inttoptr i64 %11 to ptr
  br label %16

15:                                               ; preds = %10
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.11.failed cast" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.27.Swift/EmbeddedRuntime.swift" to i64), i64 27, i8 2, i64 276)
  call void @llvm.trap()
  unreachable

16:                                               ; preds = %13
  %17 = phi ptr [ %14, %13 ]
  br label %6
}

; Function Attrs: nounwind
define protected void @swift_once(ptr %0, ptr %1, ptr %2) #0 {
entry:
  call swiftcc void @"$es10swift_once9predicate2fn7contextySpySiG_ySvXCSvtF"(ptr %0, ptr %1, ptr %2) #16
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es10swift_once9predicate2fn7contextySpySiG_ySvXCSvtF"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %3 = call swiftcc i64 @"$es10swift_once9predicate2fn7contextySpySiG_ySvXCSvtFSiAEcfU_"(ptr %0)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %entry
  %6 = cmpxchg ptr %0, i64 0, i64 1 monotonic monotonic, align 8
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %13, %9
  %11 = call swiftcc i64 @"$es10swift_once9predicate2fn7contextySpySiG_ySvXCSvtFSiAEcfU_"(ptr %0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %10

14:                                               ; preds = %10
  br label %17

15:                                               ; preds = %5
  call void %1(ptr %2)
  store atomic i64 -1, ptr %0 release, align 8
  br label %17

16:                                               ; preds = %entry
  br label %17

17:                                               ; preds = %16, %15, %14
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$es10swift_once9predicate2fn7contextySpySiG_ySvXCSvtFSiAEcfU_"(ptr %0) #0 {
entry:
  %1 = load atomic i64, ptr %0 acquire, align 8
  %2 = icmp eq i64 %1, -1
  br i1 %2, label %11, label %3

3:                                                ; preds = %entry
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = icmp eq i64 %1, 1
  %7 = call i1 @llvm.expect.i1(i1 %6, i1 true)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.16.Assertion failed" to i64), i64 16, i8 2, i64 ptrtoint (ptr @.str.0. to i64), i64 0, i8 2, i64 ptrtoint (ptr @".str.27.Swift/EmbeddedRuntime.swift" to i64), i64 27, i8 2, i64 475)
  call void @llvm.trap()
  unreachable

9:                                                ; preds = %5
  br label %12

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %entry
  br label %12

12:                                               ; preds = %11, %10, %9
  ret i64 %1
}

; Function Attrs: nounwind
define protected void @swift_beginAccess(ptr %0, ptr %1, i64 %2, ptr %3) #0 {
entry:
  call swiftcc void @"$es17swift_beginAccess7pointer6buffer5flags2pcySv_SvSuSvtF"(ptr %0, ptr %1, i64 %2, ptr %3) #16
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es17swift_beginAccess7pointer6buffer5flags2pcySv_SvSuSvtF"(ptr %0, ptr %1, i64 %2, ptr %3) #0 {
entry:
  ret void
}

; Function Attrs: nounwind
define protected void @swift_endAccess(ptr %0) #0 {
entry:
  call swiftcc void @"$es15swift_endAccess6bufferySv_tF"(ptr %0) #16
  ret void
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es15swift_endAccess6bufferySv_tF"(ptr %0) #0 {
entry:
  ret void
}

; Function Attrs: nounwind
define protected void @swift_deletedMethodError() #0 {
entry:
  call swiftcc void @"$es24swift_deletedMethodErrors5NeverOyF"() #16
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es24swift_deletedMethodErrors5NeverOyF"() #0 {
entry:
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nounwind
define protected void @swift_clearSensitive(ptr %0, i64 %1) #11 {
entry:
  call swiftcc void @"$es20swift_clearSensitive3buf6nbytesySv_SitF"(ptr %0, i64 %1) #16
  ret void
}

; Function Attrs: noinline nounwind
define hidden swiftcc void @"$es20swift_clearSensitive3buf6nbytesySv_SitF"(ptr %0, i64 %1) #11 {
entry:
  %2 = icmp slt i64 %1, 0
  %3 = call i1 @llvm.expect.i1(i1 %2, i1 false)
  br i1 %3, label %32, label %4

4:                                                ; preds = %entry
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %25, %6
  %8 = phi i64 [ 0, %6 ], [ %19, %25 ]
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = icmp slt i64 %8, %1
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 true)
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %29

14:                                               ; preds = %10
  %15 = icmp slt i64 %1, 0
  %16 = call i1 @llvm.expect.i1(i1 %15, i1 false)
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %8, i64 1)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  %21 = call i1 @llvm.expect.i1(i1 %20, i1 false)
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %Ts5UInt8V, ptr %0, i64 %8
  %._value = getelementptr inbounds %Ts5UInt8V, ptr %23, i32 0, i32 0
  store i8 0, ptr %._value, align 1
  %24 = icmp eq i64 %19, %1
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %7

26:                                               ; preds = %22
  br label %31

27:                                               ; preds = %14
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.39.Range requires lowerBound <= upperBound" to i64), i64 39, i8 2, i64 ptrtoint (ptr @".str.17.Swift/Range.swift" to i64), i64 17, i8 2, i64 760)
  call void @llvm.trap()
  unreachable

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %28, %13
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.18.Index out of range" to i64), i64 18, i8 2, i64 ptrtoint (ptr @".str.17.Swift/Range.swift" to i64), i64 17, i8 2, i64 309)
  call void @llvm.trap()
  unreachable

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %26
  ret void

32:                                               ; preds = %entry
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.39.Range requires lowerBound <= upperBound" to i64), i64 39, i8 2, i64 ptrtoint (ptr @".str.17.Swift/Range.swift" to i64), i64 17, i8 2, i64 760)
  call void @llvm.trap()
  unreachable

33:                                               ; preds = %17
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define protected i64 @swift_retainCount(ptr %0) #0 {
entry:
  %1 = call swiftcc i64 @"$es17swift_retainCount6objectSiBp_tF"(ptr %0) #16
  ret i64 %1
}

; Function Attrs: nounwind
define hidden swiftcc i64 @"$es17swift_retainCount6objectSiBp_tF"(ptr %0) #0 {
entry:
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %entry
  %4 = and i64 %1, -9223372036854775808
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  br label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load atomic i64, ptr %8 acquire, align 8
  %10 = and i64 %9, 9223372036854775807
  br label %12

11:                                               ; preds = %entry
  br label %12

12:                                               ; preds = %11, %7, %6
  %13 = phi i64 [ 0, %6 ], [ %10, %7 ], [ 0, %11 ]
  ret i64 %13
}

; Function Attrs: nounwind
define protected swiftcc ptr @"$es15ContiguousArrayV07_copyToaB0AByxGyFs4Int8V_Tg5"(ptr %0) #0 {
entry:
  %1 = call ptr @swift_retain(ptr returned %0) #3
  %2 = ptrtoint ptr %0 to i64
  %3 = inttoptr i64 %2 to ptr
  %4 = call ptr @swift_retain(ptr returned %3) #3
  call void @swift_release(ptr %0) #4
  call void @swift_release(ptr %0) #4
  ret ptr %0
}

; Function Attrs: nounwind
define protected void @swift_deallocClassInstance(ptr %0, i64 %1, i64 %2) #4 {
entry:
  call swiftcc void @"$es26swift_deallocClassInstance6object13allocatedSize0F9AlignMaskyBp_S2itF"(ptr %0, i64 %1, i64 %2) #16
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @_swift_embedded_set_heap_object_metadata_pointer(ptr noundef %object, ptr noundef %metadata) #13 {
entry:
  %object.addr = alloca ptr, align 8
  %metadata.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %metadata, ptr %metadata.addr, align 8
  %0 = load ptr, ptr %metadata.addr, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %metadata1 = getelementptr inbounds %struct.EmbeddedHeapObject, ptr %1, i32 0, i32 0
  store ptr %0, ptr %metadata1, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr) #0

; Function Attrs: noinline nounwind optnone
define internal ptr @_swift_embedded_get_heap_object_metadata_pointer(ptr noundef %object) #13 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %metadata = getelementptr inbounds %struct.EmbeddedHeapObject, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %metadata, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone
define internal void @_swift_embedded_invoke_heap_object_optional_ivardestroyer(ptr noundef %object, ptr noundef %metadata) #13 {
entry:
  %object.addr = alloca ptr, align 8
  %metadata.addr = alloca ptr, align 8
  %ivardestroyer_location = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %metadata, ptr %metadata.addr, align 8
  %0 = load ptr, ptr %metadata.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 2
  store ptr %arrayidx, ptr %ivardestroyer_location, align 8
  %1 = load ptr, ptr %ivardestroyer_location, align 8
  %2 = load ptr, ptr %1, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %ivardestroyer_location, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %object.addr, align 8
  call swiftcc void %4(ptr noundef swiftself %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #14

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr, i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #14

; Function Attrs: noinline nounwind optnone
define internal void @_swift_embedded_invoke_heap_object_destroy(ptr noundef %object) #13 {
entry:
  %object.addr = alloca ptr, align 8
  %metadata = alloca ptr, align 8
  %destroy_location = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %metadata1 = getelementptr inbounds %struct.EmbeddedHeapObject, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %metadata1, align 8
  store ptr %1, ptr %metadata, align 8
  %2 = load ptr, ptr %metadata, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %arrayidx, ptr %destroy_location, align 8
  %3 = load ptr, ptr %destroy_location, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %object.addr, align 8
  call swiftcc void %4(ptr noundef swiftself %5)
  ret void
}

; Function Attrs: nounwind
define protected swiftcc { ptr, i64, i64 } @"$es15ContiguousArrayV13_copyContents12initializings16IndexingIteratorVyAByxGG_SitSryxG_tFs4Int8V_Tg5"(i64 %0, i64 %1, ptr %2) #0 {
entry:
  %3 = call swiftcc i64 @"$es15ContiguousArrayV9_getCountSiyFs4Int8V_Tg5"(ptr %2)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %entry
  br label %10

6:                                                ; preds = %entry
  %7 = icmp eq i64 %0, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  %9 = inttoptr i64 %0 to ptr
  br label %17

10:                                               ; preds = %5, %23
  %11 = phi ptr [ %2, %23 ], [ %2, %5 ]
  %12 = phi i64 [ %3, %23 ], [ 0, %5 ]
  %13 = phi i64 [ %3, %23 ], [ 0, %5 ]
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %11, 0
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %12, 1
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %13, 2
  ret { ptr, i64, i64 } %16

17:                                               ; preds = %8
  %18 = phi ptr [ %9, %8 ]
  %19 = icmp slt i64 %1, %3
  %20 = call i1 @llvm.expect.i1(i1 %19, i1 false)
  br i1 %20, label %22, label %23

21:                                               ; preds = %6
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.48.Attempt to copy contents into nil buffer pointer" to i64), i64 48, i8 2, i64 ptrtoint (ptr @".str.27.Swift/ContiguousArray.swift" to i64), i64 27, i8 2, i64 1296, i32 1)
  unreachable

22:                                               ; preds = %17
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.51.Insufficient space allocated to copy array contents" to i64), i64 51, i8 2, i64 ptrtoint (ptr @".str.27.Swift/ContiguousArray.swift" to i64), i64 27, i8 2, i64 1297, i32 1)
  unreachable

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %2, i64 32
  call swiftcc void @"$eSp10initialize4from5countySPyxG_SitFs4Int8V_Tg5"(ptr %24, i64 %3, ptr %18)
  %25 = call ptr @swift_retain(ptr returned %2) #3
  %26 = ptrtoint ptr %2 to i64
  %27 = inttoptr i64 %26 to ptr
  %28 = inttoptr i64 %26 to ptr
  call void @swift_release(ptr %28) #4
  br label %10
}

; Function Attrs: nounwind
define protected swiftcc ptr @"$es32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFACys4Int8VG_Tg5"(ptr %0) #0 {
entry:
  %1 = alloca %Ts15ContiguousArrayV, align 8
  %2 = alloca %Ts16IndexingIteratorVys15ContiguousArrayVys4Int8VGG, align 8
  %3 = alloca %Ts15ContiguousArrayV, align 8
  %4 = alloca %Ts4Int8VSg, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %1)
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %1, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  store ptr %0, ptr %._buffer._storage, align 8
  %._buffer1 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %1, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  %5 = load ptr, ptr %._buffer1._storage, align 8
  %6 = call swiftcc i64 @"$es15ContiguousArrayV5countSivgs4Int8V_Tg5"(ptr %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %entry
  %9 = call swiftcc ptr @"$es15ContiguousArrayVAByxGycfCs4Int8V_Ttg5"()
  br label %13

10:                                               ; preds = %entry
  %11 = call swiftcc i64 @"$es3maxyxx_xtSLRzlFSi_Tg5"(i64 %6, i64 0)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %18

13:                                               ; preds = %8, %69
  %14 = phi ptr [ %25, %69 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %1)
  ret ptr %14

15:                                               ; preds = %10
  %16 = call swiftcc ptr @"$es23_swiftEmptyArrayStorageSi_S3itvau"()
  %17 = call ptr @swift_retain(ptr returned %16) #3
  br label %24

18:                                               ; preds = %10
  %19 = mul i64 1, %11
  %20 = add i64 32, %19
  %21 = call noalias ptr @swift_allocObject(ptr @"$es23_ContiguousArrayStorageCys4Int8VGN", i64 %20, i64 7) #4
  %22 = shl i64 %11, 1
  %23 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %21, i32 0, i32 1
  %._storage = getelementptr inbounds %Ts10_ArrayBodyV, ptr %23, i32 0, i32 0
  %._storage.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 0
  %._storage.count._value = getelementptr inbounds %TSi, ptr %._storage.count, i32 0, i32 0
  store i64 %6, ptr %._storage.count._value, align 8
  %._storage._capacityAndFlags = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage, i32 0, i32 1
  %._storage._capacityAndFlags._value = getelementptr inbounds %TSu, ptr %._storage._capacityAndFlags, i32 0, i32 0
  store i64 %22, ptr %._storage._capacityAndFlags._value, align 8
  br label %24

24:                                               ; preds = %15, %18
  %25 = phi ptr [ %21, %18 ], [ %16, %15 ]
  %26 = call ptr @swift_retain(ptr returned %25) #3
  %27 = getelementptr inbounds i8, ptr %25, i64 32
  call void @swift_release(ptr %25) #4
  %28 = ptrtoint ptr %27 to i64
  %29 = icmp slt i64 %6, 0
  %30 = call i1 @llvm.expect.i1(i1 %29, i1 false)
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.46.UnsafeMutableBufferPointer with negative count" to i64), i64 46, i8 2, i64 ptrtoint (ptr @".str.31.Swift/UnsafeBufferPointer.swift" to i64), i64 31, i8 2, i64 74, i32 1)
  unreachable

32:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %3)
  %33 = call ptr @"$es15ContiguousArrayVys4Int8VGWOc"(ptr %1, ptr %3)
  %._buffer2 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %3, i32 0, i32 0
  %._buffer2._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer2, i32 0, i32 0
  %34 = load ptr, ptr %._buffer2._storage, align 8
  %35 = call swiftcc { ptr, i64, i64 } @"$es15ContiguousArrayV13_copyContents12initializings16IndexingIteratorVyAByxGG_SitSryxG_tFs4Int8V_Tg5"(i64 %28, i64 %6, ptr %34)
  %36 = extractvalue { ptr, i64, i64 } %35, 0
  %37 = extractvalue { ptr, i64, i64 } %35, 1
  %38 = extractvalue { ptr, i64, i64 } %35, 2
  %._elements = getelementptr inbounds %Ts16IndexingIteratorVys15ContiguousArrayVys4Int8VGG, ptr %2, i32 0, i32 0
  %._elements._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %._elements, i32 0, i32 0
  %._elements._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._elements._buffer, i32 0, i32 0
  store ptr %36, ptr %._elements._buffer._storage, align 8
  %._position = getelementptr inbounds %Ts16IndexingIteratorVys15ContiguousArrayVys4Int8VGG, ptr %2, i32 0, i32 1
  %._position._value = getelementptr inbounds %TSi, ptr %._position, i32 0, i32 0
  store i64 %37, ptr %._position._value, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %3)
  call void @llvm.lifetime.start.p0(i64 2, ptr %4)
  %._position3 = getelementptr inbounds %Ts16IndexingIteratorVys15ContiguousArrayVys4Int8VGG, ptr %2, i32 0, i32 1
  %._elements4 = getelementptr inbounds %Ts16IndexingIteratorVys15ContiguousArrayVys4Int8VGG, ptr %2, i32 0, i32 0
  %._elements4._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %._elements4, i32 0, i32 0
  %._elements4._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._elements4._buffer, i32 0, i32 0
  %39 = load ptr, ptr %._elements4._buffer._storage, align 8
  %40 = call swiftcc i64 @"$es15ContiguousArrayV9_getCountSiyFs4Int8V_Tg5"(ptr %39)
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  store i8 0, ptr %4, align 1
  %43 = getelementptr inbounds %Ts4Int8VSg, ptr %4, i32 0, i32 1
  store i1 true, ptr %43, align 1
  br label %60

44:                                               ; preds = %32
  %._elements4._buffer5 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %._elements4, i32 0, i32 0
  %._elements4._buffer5._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._elements4._buffer5, i32 0, i32 0
  %45 = load ptr, ptr %._elements4._buffer5._storage, align 8
  %46 = icmp slt i64 %37, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %53

48:                                               ; preds = %44
  %49 = getelementptr inbounds %Ts28__ContiguousArrayStorageBaseC, ptr %45, i32 0, i32 1
  %._storage6 = getelementptr inbounds %Ts10_ArrayBodyV, ptr %49, i32 0, i32 0
  %._storage6.count = getelementptr inbounds %TSo22_SwiftArrayBodyStorageV, ptr %._storage6, i32 0, i32 0
  %._storage6.count._value = getelementptr inbounds %TSi, ptr %._storage6.count, i32 0, i32 0
  %50 = load i64, ptr %._storage6.count._value, align 8, !range !6
  %51 = icmp slt i64 %37, %50
  %52 = call i1 @llvm.expect.i1(i1 %51, i1 true)
  br i1 %52, label %55, label %54

53:                                               ; preds = %47, %54
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.18.Index out of range" to i64), i64 18, i8 2, i64 ptrtoint (ptr @".str.33.Swift/ContiguousArrayBuffer.swift" to i64), i64 33, i8 2, i64 691, i32 1)
  unreachable

54:                                               ; preds = %48
  br label %53

55:                                               ; preds = %48
  %56 = getelementptr inbounds i8, ptr %45, i64 32
  %57 = getelementptr inbounds %Ts4Int8V, ptr %56, i64 %37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %57, i64 1, i1 false)
  %._elements4._buffer7 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %._elements4, i32 0, i32 0
  %._elements4._buffer7._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._elements4._buffer7, i32 0, i32 0
  %58 = load ptr, ptr %._elements4._buffer7._storage, align 8
  call swiftcc void @"$es15ContiguousArrayV9formIndex5afterySiz_tFs4Int8V_Tg5"(ptr nocapture dereferenceable(8) %._position3, ptr %58)
  %59 = getelementptr inbounds %Ts4Int8VSg, ptr %4, i32 0, i32 1
  store i1 false, ptr %59, align 1
  br label %60

60:                                               ; preds = %42, %55
  %61 = load i8, ptr %4, align 1
  %62 = getelementptr inbounds %Ts4Int8VSg, ptr %4, i32 0, i32 1
  %63 = load i1, ptr %62, align 1
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 2, ptr %4)
  call swiftcc void @"$es18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.60.invalid Collection: more than 'count' elements in collection" to i64), i64 60, i8 2, i64 ptrtoint (ptr @".str.33.Swift/ContiguousArrayBuffer.swift" to i64), i64 33, i8 2, i64 1140, i32 1)
  unreachable

65:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 2, ptr %4)
  %66 = icmp eq i64 %38, %6
  %67 = call i1 @llvm.expect.i1(i1 %66, i1 true)
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint (ptr @".str.11.Fatal error" to i64), i64 11, i8 2, i64 ptrtoint (ptr @".str.60.invalid Collection: less than 'count' elements in collection" to i64), i64 60, i8 2, i64 ptrtoint (ptr @".str.33.Swift/ContiguousArrayBuffer.swift" to i64), i64 33, i8 2, i64 1145, i32 1)
  unreachable

69:                                               ; preds = %65
  %70 = call ptr @"$es16IndexingIteratorVys15ContiguousArrayVys4Int8VGGWOh"(ptr %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr %2)
  br label %13
}

; Function Attrs: nounwind
define protected swiftcc i64 @"$es3maxyxx_xtSLRzlFSi_Tg5"(i64 %0, i64 %1) #0 {
entry:
  %2 = icmp slt i64 %1, %0
  %3 = xor i1 %2, true
  br i1 %3, label %4, label %5

4:                                                ; preds = %entry
  br label %6

5:                                                ; preds = %entry
  br label %6

6:                                                ; preds = %4, %5
  %7 = phi i64 [ %0, %5 ], [ %1, %4 ]
  ret i64 %7
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es23_swiftEmptyArrayStorageSi_S3itvau"() #0 {
entry:
  ret ptr @"$es23_swiftEmptyArrayStorageSi_S3itvp"
}

; Function Attrs: nounwind
define protected swiftcc i64 @"$es15ContiguousArrayV5countSivgs4Int8V_Tg5"(ptr %0) #0 {
entry:
  %1 = call swiftcc i64 @"$es15ContiguousArrayV9_getCountSiyFs4Int8V_Tg5"(ptr %0)
  ret i64 %1
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden ptr @"$es15ContiguousArrayVys4Int8VGWOc"(ptr %0, ptr %1) #11 {
entry:
  %._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %1, i32 0, i32 0
  %._buffer1 = getelementptr inbounds %Ts15ContiguousArrayV, ptr %0, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %._buffer1._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer1, i32 0, i32 0
  %2 = load ptr, ptr %._buffer1._storage, align 8
  %3 = call ptr @swift_retain(ptr returned %2) #3
  store ptr %2, ptr %._buffer._storage, align 8
  ret ptr %1
}

; Function Attrs: nounwind
define protected swiftcc void @"$es15ContiguousArrayV9formIndex5afterySiz_tFs4Int8V_Tg5"(ptr nocapture dereferenceable(8) %0, ptr %1) #0 {
entry:
  %._value = getelementptr inbounds %TSi, ptr %0, i32 0, i32 0
  %2 = load i64, ptr %._value, align 8
  %3 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 1)
  %4 = extractvalue { i64, i1 } %3, 0
  %5 = extractvalue { i64, i1 } %3, 1
  %6 = call i1 @llvm.expect.i1(i1 %5, i1 false)
  br i1 %6, label %8, label %7

7:                                                ; preds = %entry
  %._value1 = getelementptr inbounds %TSi, ptr %0, i32 0, i32 0
  store i64 %4, ptr %._value1, align 8
  ret void

8:                                                ; preds = %entry
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden ptr @"$es16IndexingIteratorVys15ContiguousArrayVys4Int8VGGWOh"(ptr %0) #11 {
entry:
  %._elements = getelementptr inbounds %Ts16IndexingIteratorVys15ContiguousArrayVys4Int8VGG, ptr %0, i32 0, i32 0
  %._elements._buffer = getelementptr inbounds %Ts15ContiguousArrayV, ptr %._elements, i32 0, i32 0
  %._elements._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._elements._buffer, i32 0, i32 0
  %toDestroy = load ptr, ptr %._elements._buffer._storage, align 8
  call void @swift_release(ptr %toDestroy) #4
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @putchar(i32) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.usub.with.overflow.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.uadd.with.overflow.i8(i8, i8) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #15

; Function Attrs: nounwind
define internal swiftcc void @"$es11_StringGutsV13withFastCCharyxxSRys4Int8VGKXEKlFxSRys5UInt8VGKXEfU_s15ContiguousArrayVyAEG_TG5TA"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = getelementptr inbounds <{ %swift.refcounted, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$es11_StringGutsV13withFastCCharyxxSRys4Int8VGKXEKlFxSRys5UInt8VGKXEfU_s15ContiguousArrayVyAEG_TG5"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, ptr %6, ptr %7, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #14

; Function Attrs: nounwind
define internal swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_s15ContiguousArrayVys4Int8VG_TG5TA"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5) #0 {
entry:
  %6 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %._value, align 8
  %8 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_s15ContiguousArrayVys4Int8VG_TG5"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, i64 %7, ptr %9, ptr %10, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #14

; Function Attrs: nounwind
define internal swiftcc void @"$eSRys4Int8VGxs5Error_pIgyrzo_ACxsAD_pIegyrzr_lTRs15ContiguousArrayVyABG_TG5TA"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5) #0 {
entry:
  %6 = getelementptr inbounds <{ %swift.refcounted, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$eSRys4Int8VGxs5Error_pIgyrzo_ACxsAD_pIegyrzr_lTRs15ContiguousArrayVyABG_TG5"(ptr noalias nocapture sret(%Ts15ContiguousArrayV) %0, i64 %1, i64 %2, ptr %7, ptr %8, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$eSS8UTF8ViewV10_uncheckeds5UInt8VSS5IndexV_tcigAESRyAEGXEfU_TA"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = getelementptr inbounds <{ %swift.refcounted, %TSS5IndexV }>, ptr %3, i32 0, i32 1
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %5, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  %6 = load i64, ptr %._rawBits._value, align 8
  tail call swiftcc void @"$eSS8UTF8ViewV10_uncheckeds5UInt8VSS5IndexV_tcigAESRyAEGXEfU_"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, i64 %6, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5TA"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5) #0 {
entry:
  %6 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %._value, align 8
  %8 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, i64 %7, ptr %9, ptr %10, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEFSiSRys5UInt8VGXEfU_TA"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = getelementptr inbounds <{ %swift.refcounted, %TSS5IndexV }>, ptr %3, i32 0, i32 1
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %5, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  %6 = load i64, ptr %._rawBits._value, align 8
  tail call swiftcc void @"$es11_StringGutsV15scalarAlignSlowySS5IndexVAEFSiSRys5UInt8VGXEfU_"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, i64 %6, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TGq5TA"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5) #0 {
entry:
  %6 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %._value, align 8
  %8 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TGq5"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, i64 %7, ptr %9, ptr %10, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #14

; Function Attrs: nounwind
define internal swiftcc void @"$es11_StringGutsV20fastUTF8ScalarLength10startingAtS2i_tFs5UInt8VSRyAFGXEfU_TA"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = getelementptr inbounds <{ %swift.refcounted, %TSi }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %._value, align 8
  tail call swiftcc void @"$es11_StringGutsV20fastUTF8ScalarLength10startingAtS2i_tFs5UInt8VSRyAFGXEfU_"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, i64 %6, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5TA.1"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5) #0 {
entry:
  %6 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %._value, align 8
  %8 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, i64 %7, ptr %9, ptr %10, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #14

; Function Attrs: nounwind
define internal swiftcc void @"$es11_StringGutsV20fastUTF8ScalarLength8endingAtS2i_tFSiSRys5UInt8VGXEfU_TA"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = getelementptr inbounds <{ %swift.refcounted, %TSi }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %._value, align 8
  tail call swiftcc void @"$es11_StringGutsV20fastUTF8ScalarLength8endingAtS2i_tFSiSRys5UInt8VGXEfU_"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, i64 %6, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TGq5TA.2"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5) #0 {
entry:
  %6 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %._value, align 8
  %8 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TGq5"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, i64 %7, ptr %9, ptr %10, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$eSS9UTF16ViewV15_nativeGetIndex3forSS0E0VSi_tFAFSRys5UInt8VGXEfU1_TA"(ptr noalias nocapture sret(%TSS5IndexV) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = getelementptr inbounds <{ %swift.refcounted, %TSS5IndexV, %TSi }>, ptr %3, i32 0, i32 1
  %._rawBits = getelementptr inbounds %TSS5IndexV, ptr %5, i32 0, i32 0
  %._rawBits._value = getelementptr inbounds %Ts6UInt64V, ptr %._rawBits, i32 0, i32 0
  %6 = load i64, ptr %._rawBits._value, align 8
  %7 = getelementptr inbounds <{ %swift.refcounted, %TSS5IndexV, %TSi }>, ptr %3, i32 0, i32 2
  %._value = getelementptr inbounds %TSi, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %._value, align 8
  tail call swiftcc void @"$eSS9UTF16ViewV15_nativeGetIndex3forSS0E0VSi_tFAFSRys5UInt8VGXEfU1_"(ptr noalias nocapture sret(%TSS5IndexV) %0, i64 %1, i64 %2, i64 %6, i64 %8, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_SS5IndexV_TG5TA"(ptr noalias nocapture sret(%TSS5IndexV) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5) #0 {
entry:
  %6 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %._value, align 8
  %8 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_SS5IndexV_TG5"(ptr noalias nocapture sret(%TSS5IndexV) %0, i64 %1, i64 %2, i64 %7, ptr %9, ptr %10, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es11_StringGutsV20fastUTF8ScalarLength10startingAtS2i_tFs5UInt8VSRyAFGXEfU_TA.3"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = getelementptr inbounds <{ %swift.refcounted, %TSi }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %._value, align 8
  tail call swiftcc void @"$es11_StringGutsV20fastUTF8ScalarLength10startingAtS2i_tFs5UInt8VSRyAFGXEfU_"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, i64 %6, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5TA.4"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5) #0 {
entry:
  %6 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %._value, align 8
  %8 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_AE_TGq5"(ptr noalias nocapture sret(%Ts5UInt8V) %0, i64 %1, i64 %2, i64 %7, ptr %9, ptr %10, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es11_StringGutsV12withFastUTF85range_xSnySiG_xSRys5UInt8VGKXEtKlFxAHKXEfU_Si_TG5TA"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4) #0 {
entry:
  %5 = getelementptr inbounds <{ %swift.refcounted, %swift.noescape.function, %TSnySiG }>, ptr %3, i32 0, i32 1
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %.data, align 8
  %8 = getelementptr inbounds <{ %swift.refcounted, %swift.noescape.function, %TSnySiG }>, ptr %3, i32 0, i32 2
  %.lowerBound = getelementptr inbounds %TSnySiG, ptr %8, i32 0, i32 0
  %.lowerBound._value = getelementptr inbounds %TSi, ptr %.lowerBound, i32 0, i32 0
  %9 = load i64, ptr %.lowerBound._value, align 8
  %.upperBound = getelementptr inbounds %TSnySiG, ptr %8, i32 0, i32 1
  %.upperBound._value = getelementptr inbounds %TSi, ptr %.upperBound, i32 0, i32 0
  %10 = load i64, ptr %.upperBound._value, align 8
  tail call swiftcc void @"$es11_StringGutsV12withFastUTF85range_xSnySiG_xSRys5UInt8VGKXEtKlFxAHKXEfU_Si_TG5"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, ptr %6, ptr %7, i64 %9, i64 %10, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4)
  ret void
}

; Function Attrs: nounwind
define internal swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TG5TA"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5) #0 {
entry:
  %6 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 1
  %._value = getelementptr inbounds %TSi, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %._value, align 8
  %8 = getelementptr inbounds <{ %swift.refcounted, %TSi, %swift.noescape.function }>, ptr %3, i32 0, i32 2
  %.fn = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %.fn, align 8
  %.data = getelementptr inbounds %swift.noescape.function, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %.data, align 8
  tail call swiftcc void @"$es12_SmallStringV8withUTF8yxxSRys5UInt8VGKXEKlFxSWKXEfU_Si_TG5"(ptr noalias nocapture sret(%TSi) %0, i64 %1, i64 %2, i64 %7, ptr %9, ptr %10, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %4, ptr %5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nounwind
define internal swiftcc i1 @"$eSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SIys16_ValidUTF8BufferVG_TGq5TA"(ptr noalias nocapture dereferenceable(4) %0, ptr swiftself %1, ptr noalias nocapture swifterror dereferenceable(8) %2) #0 {
entry:
  %3 = getelementptr inbounds <{ %swift.refcounted, ptr }>, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call swiftcc i1 @"$eSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SIys16_ValidUTF8BufferVG_TGq5"(ptr noalias nocapture dereferenceable(4) %0, ptr noalias nocapture dereferenceable(4) %4, ptr swiftself undef, ptr noalias nocapture swifterror dereferenceable(8) %2)
  ret i1 %5
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden ptr @"$eSaySS5IndexVGWOh"(ptr %0) #11 {
entry:
  %._buffer = getelementptr inbounds %TSa, ptr %0, i32 0, i32 0
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, ptr %._buffer, i32 0, i32 0
  %toDestroy = load ptr, ptr %._buffer._storage, align 8
  call void @swift_release(ptr %toDestroy) #4
  ret ptr %0
}

attributes #0 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind sspreq "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #3 = { nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noinline nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #12 = { nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #13 = { noinline nounwind optnone "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { noinline }

!swift.module.flags = !{!0}
!llvm.linker.options = !{}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"standard-library", i1 false}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{i32 4, !"Objective-C Garbage Collection", i32 100796160}
!5 = !{i32 1, !"Swift Version", i32 7}
!6 = !{i64 0, i64 9223372036854775807}
