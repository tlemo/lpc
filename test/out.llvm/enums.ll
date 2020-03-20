
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 2
;================================================================================
; scope: program scope (level : 1)

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@Day = dso_local global i32 zeroinitializer
@EveningPremium = dso_local global double zeroinitializer
@NightPremium = dso_local global double zeroinitializer
@RegularRate = dso_local global double zeroinitializer
@Time = dso_local global i32 zeroinitializer
@TotalPay = dso_local global double zeroinitializer
@WeekendPremium = dso_local global double zeroinitializer
;================================================================================
; metadata

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{}
!llvm.ident = !{!13}

!0 = !DIFile(filename: "enums.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9}
!11 = !{}
!12 = !{}
!13 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!14 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !10, globals: !12, nameTableKind: None)

