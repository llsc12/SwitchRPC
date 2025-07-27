; ModuleID = 'swift/ll/app.ll'
source_filename = "swift/ll/app.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-none-none-elf"

%TSo8PadStatea = type <{ %Ts5UInt8V, %Ts5UInt8V, %TSb, %TSb, %Ts6UInt32V, %Ts6UInt32V, [4 x i8], %Ts6UInt64V, %Ts6UInt64V, <{ %TSo19HidAnalogStickStateV, %TSo19HidAnalogStickStateV }>, <{ %Ts6UInt32V, %Ts6UInt32V }> }>
%Ts5UInt8V = type <{ i8 }>
%TSb = type <{ i1 }>
%Ts6UInt32V = type <{ i32 }>
%Ts6UInt64V = type <{ i64 }>
%TSo19HidAnalogStickStateV = type <{ %Ts5Int32V, %Ts5Int32V }>
%Ts5Int32V = type <{ i32 }>
%struct.PadState = type { i8, i8, i8, i8, i32, i32, i64, i64, [2 x %struct.HidAnalogStickState], [2 x i32] }
%struct.HidAnalogStickState = type { i32, i32 }
%TSvSg = type <{ [8 x i8] }>
%Ts10HeapObjectV = type <{ %TSV, %TSi }>
%TSV = type <{ ptr }>
%TSi = type <{ i64 }>
%struct.EmbeddedHeapObject = type { ptr }
%Ts13ClassMetadataV = type <{ %TSpys13ClassMetadataVGSg, %TSV, %TSVSg }>
%TSpys13ClassMetadataVGSg = type <{ [8 x i8] }>
%TSVSg = type <{ [8 x i8] }>

@".str.28.holy shit dude this is swift" = private unnamed_addr constant [29 x i8] c"holy shit dude this is swift\00"
@".str.1.\0A" = private unnamed_addr constant [2 x i8] c"\0A\00"
@".str.27.Swift/EmbeddedRuntime.swift" = private unnamed_addr constant [28 x i8] c"Swift/EmbeddedRuntime.swift\00"
@".str.11.Fatal error" = private unnamed_addr constant [12 x i8] c"Fatal error\00"
@".str.17.negative refcount" = private unnamed_addr constant [18 x i8] c"negative refcount\00"
@".str.28.non-escaping closure escaped" = private unnamed_addr constant [29 x i8] c"non-escaping closure escaped\00"
@".str.11.failed cast" = private unnamed_addr constant [12 x i8] c"failed cast\00"
@".str.39.Range requires lowerBound <= upperBound" = private unnamed_addr constant [40 x i8] c"Range requires lowerBound <= upperBound\00"
@".str.17.Swift/Range.swift" = private unnamed_addr constant [18 x i8] c"Swift/Range.swift\00"
@".str.18.Index out of range" = private unnamed_addr constant [19 x i8] c"Index out of range\00"
@".str.16.Assertion failed" = private unnamed_addr constant [17 x i8] c"Assertion failed\00"
@.str.0. = private unnamed_addr constant [1 x i8] zeroinitializer
@".str.1.:" = private unnamed_addr constant [2 x i8] c":\00"
@".str.2.: " = private unnamed_addr constant [3 x i8] c": \00"
@".str.47.StaticString should have pointer representation" = private unnamed_addr constant [48 x i8] c"StaticString should have pointer representation\00"
@".str.24.Swift/StaticString.swift" = private unnamed_addr constant [25 x i8] c"Swift/StaticString.swift\00"
@".str.39.UnsafeBufferPointer with negative count" = private unnamed_addr constant [40 x i8] c"UnsafeBufferPointer with negative count\00"
@".str.31.Swift/UnsafeBufferPointer.swift" = private unnamed_addr constant [32 x i8] c"Swift/UnsafeBufferPointer.swift\00"
@".str.34.Swift/UnsafeRawBufferPointer.swift" = private unnamed_addr constant [35 x i8] c"Swift/UnsafeRawBufferPointer.swift\00"
@".str.45.Not enough bits to represent the passed value" = private unnamed_addr constant [46 x i8] c"Not enough bits to represent the passed value\00"
@".str.20.Swift/Integers.swift" = private unnamed_addr constant [21 x i8] c"Swift/Integers.swift\00"
@".str.35.Negative value is not representable" = private unnamed_addr constant [36 x i8] c"Negative value is not representable\00"
@".str.16.Division by zero" = private unnamed_addr constant [17 x i8] c"Division by zero\00"
@".str.24.Swift/IntegerTypes.swift" = private unnamed_addr constant [25 x i8] c"Swift/IntegerTypes.swift\00"
@".str.69.UnsafeMutableRawBufferPointer.copyMemory source has too many elements" = private unnamed_addr constant [70 x i8] c"UnsafeMutableRawBufferPointer.copyMemory source has too many elements\00"
@".str.54.UnsafeMutableRawPointer.copyMemory with negative count" = private unnamed_addr constant [55 x i8] c"UnsafeMutableRawPointer.copyMemory with negative count\00"
@".str.28.Swift/UnsafeRawPointer.swift" = private unnamed_addr constant [29 x i8] c"Swift/UnsafeRawPointer.swift\00"
@".str.49.UnsafeMutableRawBufferPointer with negative count" = private unnamed_addr constant [50 x i8] c"UnsafeMutableRawBufferPointer with negative count\00"
@".str.63.UnsafeMutableRawBufferPointer has a nil start and nonzero count" = private unnamed_addr constant [64 x i8] c"UnsafeMutableRawBufferPointer has a nil start and nonzero count\00"
@".str.57.Unexpectedly found nil while unwrapping an Optional value" = private unnamed_addr constant [58 x i8] c"Unexpectedly found nil while unwrapping an Optional value\00"
@__const.padInitializeDefault._pad_ids = private unnamed_addr constant [2 x i32] [i32 0, i32 32], align 4
@_swift1_autolink_entries = private constant [0 x i8] zeroinitializer, section ".swift1_autolink_entries", no_sanitize_address, align 8
@llvm.used = appending global [1 x ptr] [ptr @_swift1_autolink_entries], section "llvm.metadata"

; Function Attrs: nounwind
define hidden void @main() #0 {
entry:
  call swiftcc void @"$e3app4mainyyF"() #11
  ret void
}

; Function Attrs: nounwind sspreq
define protected swiftcc void @"$e3app4mainyyF"() #1 {
entry:
  %pad.addr.i2 = alloca ptr, align 8
  %pad.addr.i1 = alloca ptr, align 8
  %pad.addr.i = alloca ptr, align 8
  %_pad_ids.i = alloca [2 x i32], align 4
  %_pad_mask.i = alloca i64, align 8
  %_pad_i.i = alloca i32, align 4
  %0 = alloca %TSo8PadStatea, align 8
  %1 = alloca %TSo8PadStatea, align 8
  %pad = alloca %TSo8PadStatea, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %pad, i8 0, i64 56, i1 false)
  %2 = alloca %TSo8PadStatea, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %0)
  call void @llvm.lifetime.start.p0(i64 56, ptr %1)
  %3 = call ptr @consoleInit(ptr null)
  %4 = ptrtoint ptr %3 to i64
  call void @padConfigureInput(i32 1, i32 31)
  call void @llvm.lifetime.start.p0(i64 56, ptr %pad)
  call void @llvm.lifetime.start.p0(i64 56, ptr %2)
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %1, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %2, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(i64 56, ptr %2)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pad, ptr align 8 %0, i64 56, i1 false)
  %5 = ptrtoint ptr %pad to i64
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %pad.addr.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_pad_ids.i, ptr align 4 @__const.padInitializeDefault._pad_ids, i64 8, i1 false)
  store i64 0, ptr %_pad_mask.i, align 8
  store i32 0, ptr %_pad_i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %7 = load i32, ptr %_pad_i.i, align 4
  %conv.i = zext i32 %7 to i64
  %cmp.i = icmp ult i64 %conv.i, 2
  br i1 %cmp.i, label %for.body.i, label %padInitializeDefault.exit

for.body.i:                                       ; preds = %for.cond.i
  %8 = load i32, ptr %_pad_i.i, align 4
  %idxprom.i = zext i32 %8 to i64
  %arrayidx.i = getelementptr inbounds [2 x i32], ptr %_pad_ids.i, i64 0, i64 %idxprom.i
  %9 = load i32, ptr %arrayidx.i, align 4
  %sh_prom.i = zext i32 %9 to i64
  %shl.i = shl i64 1, %sh_prom.i
  %10 = load i64, ptr %_pad_mask.i, align 8
  %or.i = or i64 %10, %shl.i
  store i64 %or.i, ptr %_pad_mask.i, align 8
  %11 = load i32, ptr %_pad_i.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %_pad_i.i, align 4
  br label %for.cond.i, !llvm.loop !6

padInitializeDefault.exit:                        ; preds = %for.cond.i
  %12 = load ptr, ptr %pad.addr.i, align 8
  %13 = load i64, ptr %_pad_mask.i, align 8
  call void @padInitializeWithMask(ptr noundef %12, i64 noundef %13) #12
  br label %14

14:                                               ; preds = %45, %padInitializeDefault.exit
  %15 = call i1 @appletMainLoop()
  br i1 %15, label %16, label %46

16:                                               ; preds = %14
  %17 = ptrtoint ptr %pad to i64
  %18 = inttoptr i64 %17 to ptr
  call void @padUpdate(ptr %18)
  %19 = ptrtoint ptr %pad to i64
  %20 = inttoptr i64 %19 to ptr
  store ptr %20, ptr %pad.addr.i2, align 8
  %21 = load ptr, ptr %pad.addr.i2, align 8
  %buttons_old.i3 = getelementptr inbounds %struct.PadState, ptr %21, i32 0, i32 7
  %22 = load i64, ptr %buttons_old.i3, align 8
  %not.i4 = xor i64 %22, -1
  %23 = load ptr, ptr %pad.addr.i2, align 8
  %buttons_cur.i5 = getelementptr inbounds %struct.PadState, ptr %23, i32 0, i32 6
  %24 = load i64, ptr %buttons_cur.i5, align 8
  %and.i6 = and i64 %not.i4, %24
  call void asm sideeffect "nop", ""()
  %25 = and i64 %and.i6, 1024
  %26 = icmp eq i64 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %47

29:                                               ; preds = %16
  %30 = ptrtoint ptr %pad to i64
  %31 = inttoptr i64 %30 to ptr
  store ptr %31, ptr %pad.addr.i1, align 8
  %32 = load ptr, ptr %pad.addr.i1, align 8
  %buttons_old.i = getelementptr inbounds %struct.PadState, ptr %32, i32 0, i32 7
  %33 = load i64, ptr %buttons_old.i, align 8
  %not.i = xor i64 %33, -1
  %34 = load ptr, ptr %pad.addr.i1, align 8
  %buttons_cur.i = getelementptr inbounds %struct.PadState, ptr %34, i32 0, i32 6
  %35 = load i64, ptr %buttons_cur.i, align 8
  %and.i = and i64 %not.i, %35
  call void asm sideeffect "nop", ""()
  %36 = and i64 %and.i, 1
  %37 = icmp eq i64 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  call void asm sideeffect "nop", ""()
  %40 = call swiftcc { i64, i64, i8 } @"$es5print_10terminatorys12StaticStringV_ADtFfA0_"()
  %41 = extractvalue { i64, i64, i8 } %40, 0
  %42 = extractvalue { i64, i64, i8 } %40, 1
  %43 = extractvalue { i64, i64, i8 } %40, 2
  call swiftcc void @"$es5print_10terminatorys12StaticStringV_ADtF"(i64 ptrtoint (ptr @".str.28.holy shit dude this is swift" to i64), i64 28, i8 2, i64 %41, i64 %42, i8 %43)
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %39, %44
  call void @consoleUpdate(ptr null)
  br label %14

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %28, %46
  call void @consoleExit(ptr null)
  call void @llvm.lifetime.end.p0(i64 56, ptr %pad)
  call void @llvm.lifetime.end.p0(i64 56, ptr %1)
  call void @llvm.lifetime.end.p0(i64 56, ptr %0)
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @consoleInit(ptr noundef) #4

declare void @padConfigureInput(i32 noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i1 @appletMainLoop() #4

declare void @consoleExit(ptr noundef) #4

declare void @padUpdate(ptr noundef) #4

declare void @consoleUpdate(ptr noundef) #4

; Function Attrs: nounwind
define protected swiftcc { i64, i64, i8 } @"$es5print_10terminatorys12StaticStringV_ADtFfA0_"() #0 {
entry:
  ret { i64, i64, i8 } { i64 ptrtoint (ptr @".str.1.\0A" to i64), i64 1, i8 2 }
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

; Function Attrs: nounwind
define hidden swiftcc void @"$es17_assertionFailure__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 %0, i64 %1, i8 %2, i64 %3, i64 %4, i8 %5, i64 %6, i64 %7, i8 %8, i64 %9, i32 %10) #0 {
entry:
  call swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 %0, i64 %1, i8 %2, i64 %3, i64 %4, i8 %5, i64 %6, i64 %7, i8 %8, i64 %9)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nounwind
define hidden swiftcc void @"$es31_embeddedReportFatalErrorInFile6prefix7message4file4lineys12StaticStringV_A2GSutF"(i64 %0, i64 %1, i8 %2, i64 %3, i64 %4, i8 %5, i64 %6, i64 %7, i8 %8, i64 %9) #7 {
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

; Function Attrs: nounwind sspreq
define hidden swiftcc void @"$eSzsE13writeToStdoutyyFSu_Tg5"(i64 %0) #1 {
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
define protected ptr @swift_allocObject(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %3 = call swiftcc ptr @"$es17swift_allocObject8metadata12requiredSize0E13AlignmentMaskBpBp_S2itF"(ptr %0, i64 %1, i64 %2) #11
  ret ptr %3
}

; Function Attrs: nounwind
define hidden swiftcc ptr @"$es17swift_allocObject8metadata12requiredSize0E13AlignmentMaskBpBp_S2itF"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %3 = call swiftcc ptr @"$es17swift_allocObject8metadata12requiredSize0E13AlignmentMaskSpys04HeapC0VGSpys13ClassMetadataVG_S2itF"(ptr %0, i64 %1, i64 %2)
  ret ptr %3
}

; Function Attrs: nounwind sspreq
define hidden swiftcc ptr @"$es17swift_allocObject8metadata12requiredSize0E13AlignmentMaskSpys04HeapC0VGSpys13ClassMetadataVG_S2itF"(ptr %0, i64 %1, i64 %2) #1 {
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
  %2 = call swiftcc ptr @"$es21swift_initStackObject8metadata6objectBpBp_BptF"(ptr %0, ptr %1) #11
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

; Function Attrs: noinline nounwind optnone
define internal void @_swift_embedded_set_heap_object_metadata_pointer(ptr noundef %object, ptr noundef %metadata) #8 {
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
define protected ptr @swift_initStaticObject(ptr %0, ptr %1) #0 {
entry:
  %2 = call swiftcc ptr @"$es22swift_initStaticObject8metadata6objectBpBp_BptF"(ptr %0, ptr %1) #11
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
  call swiftcc void @"$es19swift_deallocObject6object13allocatedSize0E9AlignMaskyBp_S2itF"(ptr %0, i64 %1, i64 %2) #11
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
declare void @free(ptr) #0

; Function Attrs: nounwind
define protected void @swift_deallocClassInstance(ptr %0, i64 %1, i64 %2) #0 {
entry:
  call swiftcc void @"$es26swift_deallocClassInstance6object13allocatedSize0F9AlignMaskyBp_S2itF"(ptr %0, i64 %1, i64 %2) #11
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
  call swiftcc void @"$es33swift_deallocPartialClassInstance6object8metadata13allocatedSize0H9AlignMaskyBp_BpS2itF"(ptr %0, ptr %1, i64 %2, i64 %3) #11
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

; Function Attrs: noinline nounwind optnone
define internal ptr @_swift_embedded_get_heap_object_metadata_pointer(ptr noundef %object) #8 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %metadata = getelementptr inbounds %struct.EmbeddedHeapObject, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %metadata, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone
define internal void @_swift_embedded_invoke_heap_object_optional_ivardestroyer(ptr noundef %object, ptr noundef %metadata) #8 {
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

; Function Attrs: nounwind
define protected ptr @swift_slowAlloc(i64 %0, i64 %1) #0 {
entry:
  %2 = call swiftcc i64 @"$es15swift_slowAllocySvSgSi_SitF"(i64 %0, i64 %1) #11
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

; Function Attrs: nounwind sspreq
define hidden swiftcc i64 @"$es15swift_slowAllocySvSgSi_SitF"(i64 %0, i64 %1) #1 {
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #10

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr, i64, i64) #0

; Function Attrs: nounwind
define protected void @swift_slowDealloc(ptr %0, i64 %1, i64 %2) #0 {
entry:
  call swiftcc void @"$es17swift_slowDeallocyySv_S2itF"(ptr %0, i64 %1, i64 %2) #11
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
define protected ptr @swift_retain(ptr %0) #0 {
entry:
  %1 = call swiftcc ptr @"$es12swift_retain6objectBpBp_tF"(ptr %0) #11
  ret ptr %1
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
define protected void @swift_release(ptr %0) #0 {
entry:
  call swiftcc void @"$es13swift_release6objectyBp_tF"(ptr %0) #11
  ret void
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #9

; Function Attrs: noinline nounwind optnone
define internal void @_swift_embedded_invoke_heap_object_destroy(ptr noundef %object) #8 {
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
define protected ptr @swift_retain_n(ptr %0, i32 %1) #0 {
entry:
  %2 = call swiftcc ptr @"$es14swift_retain_n6object1nBpBp_s6UInt32VtF"(ptr %0, i32 %1) #11
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
  call swiftcc void @"$es15swift_release_n6object1nyBp_s6UInt32VtF"(ptr %0, i32 %1) #11
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
  call swiftcc void @"$es21swift_setDeallocating6objectyBp_tF"(ptr %0) #11
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
  %2 = call swiftcc ptr @"$es26swift_bridgeObjectRetain_n6object1nBpBp_s6UInt32VtF"(ptr %0, i32 %1) #11
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
  call swiftcc void @"$es27swift_bridgeObjectRelease_n6object1nyBp_s6UInt32VtF"(ptr %0, i32 %1) #11
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
define protected ptr @swift_bridgeObjectRetain(ptr %0) #0 {
entry:
  %1 = call swiftcc ptr @"$es24swift_bridgeObjectRetain6objectBpBp_tF"(ptr %0) #11
  ret ptr %1
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
define protected void @swift_bridgeObjectRelease(ptr %0) #0 {
entry:
  call swiftcc void @"$es25swift_bridgeObjectRelease6objectyBp_tF"(ptr %0) #11
  ret void
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
  %1 = call swiftcc i1 @"$es33swift_isUniquelyReferenced_native6objectSbBp_tF"(ptr %0) #11
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

; Function Attrs: nounwind
define protected i1 @swift_isUniquelyReferenced_nonNull_native(ptr %0) #0 {
entry:
  %1 = call swiftcc i1 @"$es41swift_isUniquelyReferenced_nonNull_native6objectSbBp_tF"(ptr %0) #11
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
  %6 = call swiftcc i1 @"$es37swift_isEscapingClosureAtFileLocation6object8filename0I6Length4line6column16verificationTypeSbBp_SPys4Int8VGs5Int32VA2Ls6UInt32VtF"(ptr %0, ptr %1, i32 %2, i32 %3, i32 %4, i32 %5) #11
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
  %2 = call swiftcc i64 @"$es22swift_dynamicCastClass6object14targetMetadataSvSgSv_SVtF"(ptr %0, ptr %1) #11
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
  %5 = call swiftcc ptr @"$es35swift_dynamicCastClassUnconditional6object14targetMetadata4file4line6columnS2v_SVSPys4Int8VGs6UInt32VAKtF"(ptr %0, ptr %1, ptr %2, i32 %3, i32 %4) #11
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
  call swiftcc void @"$es10swift_once9predicate2fn7contextySpySiG_ySvXCSvtF"(ptr %0, ptr %1, ptr %2) #11
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
  call swiftcc void @"$es17swift_beginAccess7pointer6buffer5flags2pcySv_SvSuSvtF"(ptr %0, ptr %1, i64 %2, ptr %3) #11
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
  call swiftcc void @"$es15swift_endAccess6bufferySv_tF"(ptr %0) #11
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
  call swiftcc void @"$es24swift_deletedMethodErrors5NeverOyF"() #11
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc void @"$es24swift_deletedMethodErrors5NeverOyF"() #0 {
entry:
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nounwind
define protected void @swift_clearSensitive(ptr %0, i64 %1) #7 {
entry:
  call swiftcc void @"$es20swift_clearSensitive3buf6nbytesySv_SitF"(ptr %0, i64 %1) #11
  ret void
}

; Function Attrs: noinline nounwind
define hidden swiftcc void @"$es20swift_clearSensitive3buf6nbytesySv_SitF"(ptr %0, i64 %1) #7 {
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
  %1 = call swiftcc i64 @"$es17swift_retainCount6objectSiBp_tF"(ptr %0) #11
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
declare i32 @putchar(i32) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.usub.with.overflow.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.uadd.with.overflow.i8(i8, i8) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

declare void @padInitializeWithMask(ptr noundef, i64 noundef) #4

attributes #0 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #1 = { nounwind sspreq "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noinline nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #8 = { noinline nounwind optnone "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noinline }
attributes #12 = { nounwind }

!swift.module.flags = !{!0}
!llvm.linker.options = !{}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"standard-library", i1 false}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{i32 4, !"Objective-C Garbage Collection", i32 100796160}
!5 = !{i32 1, !"Swift Version", i32 7}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
