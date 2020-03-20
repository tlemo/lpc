
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 4
;================================================================================
; scope: program scope (level : 1)

; types
%T_t1 = type __array
%T_t2 = type __range
%T_array_3 = type __array

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@x = dso_local global %T_array_3 zeroinitializer
@y = dso_local global %T_t1 zeroinitializer

; line 14
;================================================================================
; scope: outter (level : 2)

; line 15
;================================================================================
; scope: outter_inner (level : 3)

; line 16
;================================================================================
; scope: outter_inner_setOutter (level : 4)
;================================================================================
; metadata

!llvm.dbg.cu = !{!16}
!llvm.module.flags = !{}
!llvm.ident = !{!15}

!0 = !DIFile(filename: "test05.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = TODO
!10 = TODO
!11 = TODO
!12 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11}
!13 = !{}
!14 = !{}
!15 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!16 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !12, globals: !14, nameTableKind: None)

