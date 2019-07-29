; ModuleID = 'main.m'
source_filename = "main.m"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%0 = type opaque
%struct._class_t = type { %struct._class_t*, %struct._class_t*, %struct._objc_cache*, i8* (i8*, i8*)**, %struct._class_ro_t* }
%struct._objc_cache = type opaque
%struct._class_ro_t = type { i32, i32, i32, i8*, i8*, %struct.__method_list_t*, %struct._objc_protocol_list*, %struct._ivar_list_t*, i8*, %struct._prop_list_t* }
%struct.__method_list_t = type { i32, i32, [0 x %struct._objc_method] }
%struct._objc_method = type { i8*, i8*, i8* }
%struct._objc_protocol_list = type { i64, [0 x %struct._protocol_t*] }
%struct._protocol_t = type { i8*, i8*, %struct._objc_protocol_list*, %struct.__method_list_t*, %struct.__method_list_t*, %struct.__method_list_t*, %struct.__method_list_t*, %struct._prop_list_t*, i32, i32, i8**, i8*, %struct._prop_list_t* }
%struct._ivar_list_t = type { i32, i32, [0 x %struct._ivar_t] }
%struct._ivar_t = type { i64*, i8*, i8*, i32, i32 }
%struct._prop_list_t = type { i32, i32, [0 x %struct._prop_t] }
%struct._prop_t = type { i8*, i8* }

@"OBJC_CLASS_$_BBB" = external global %struct._class_t
@"OBJC_CLASSLIST_REFERENCES_$_" = private global %struct._class_t* @"OBJC_CLASS_$_BBB", section "__DATA, __objc_classrefs, regular, no_dead_strip", align 8
@OBJC_METH_VAR_NAME_ = private global [4 x i8] c"new\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@OBJC_SELECTOR_REFERENCES_ = private externally_initialized global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @OBJC_METH_VAR_NAME_, i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip", align 8
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_" to i8*), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @OBJC_METH_VAR_NAME_, i32 0, i32 0), i8* bitcast (i8** @OBJC_SELECTOR_REFERENCES_ to i8*)], section "llvm.metadata"

; Function Attrs: ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %0*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i8* @objc_autoreleasePoolPush() #2
  %4 = load %struct._class_t*, %struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_", align 8
  %5 = load i8*, i8** @OBJC_SELECTOR_REFERENCES_, align 8, !invariant.load !7
  %6 = bitcast %struct._class_t* %4 to i8*
  %7 = call i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* %6, i8* %5)
  %8 = bitcast i8* %7 to %0*
  store %0* %8, %0** %2, align 8
  %9 = bitcast %0** %2 to i8**
  call void @objc_storeStrong(i8** %9, i8* null) #2
  call void @objc_autoreleasePoolPop(i8* %3)
  ret i32 0
}

declare i8* @objc_autoreleasePoolPush()

; Function Attrs: nonlazybind
declare i8* @objc_msgSend(i8*, i8*, ...) #1

declare void @objc_storeStrong(i8**, i8*)

declare void @objc_autoreleasePoolPop(i8*)

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nonlazybind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"Objective-C Version", i32 2}
!1 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!2 = !{i32 1, !"Objective-C Image Info Section", !"__DATA, __objc_imageinfo, regular, no_dead_strip"}
!3 = !{i32 4, !"Objective-C Garbage Collection", i32 0}
!4 = !{i32 1, !"Objective-C Class Properties", i32 64}
!5 = !{i32 1, !"PIC Level", i32 2}
!6 = !{!"Apple LLVM version 8.1.0 (clang-802.0.42)"}
!7 = !{}
