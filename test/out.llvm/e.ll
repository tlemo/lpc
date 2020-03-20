
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 2
;================================================================================
; scope: program scope (level : 1)

; types
%T_digit = type __range
%T_digitarray = type __array
%T_pointer_2 = type %T_digitarray*

; program variables
@i = dso_local global i32 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@output = dso_local global %T_text zeroinitializer
@s = dso_local global %T_pointer_2 zeroinitializer
@t = dso_local global %T_pointer_2 zeroinitializer
@ts = dso_local global i32 zeroinitializer
@x = dso_local global %T_pointer_2 zeroinitializer
@xs = dso_local global i32 zeroinitializer

; line 17
;================================================================================
; scope: initinteger (level : 2)

; line 25
;================================================================================
; scope: divide (level : 2)

; line 41
;================================================================================
; scope: add (level : 2)

; line 71
;================================================================================
; scope: sub (level : 2)
;================================================================================
; metadata

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{}
!llvm.ident = !{!14}

!0 = !DIFile(filename: "e.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = TODO
!9 = TODO
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 13, baseType: !9, size: 64)
!11 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10}
!12 = !{}
!13 = !{}
!14 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!15 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !11, globals: !13, nameTableKind: None)

