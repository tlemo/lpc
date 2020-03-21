; ModuleID = 'plzero.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\plzero.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type [10 x i8]
%T_range_3 = type i8
%T_range_4 = type i8
%T_instruction = type [6 x i8]
%T_array_2 = type [201 x %T_instruction]
%T_symset = type [1 x i32]
%T_array_5 = type [81 x i8]
%T_array_7 = type [5 x i8]
%T_array_6 = type [8 x %T_array_7]
%T_array_8 = type [256 x i32]
%T_record_10 = type [40 x i8]
%T_array_9 = type [101 x %T_record_10]
%T_array_11 = type [11 x %T_alfa]
%T_array_12 = type [11 x i32]

; program variables
@a = dso_local global %T_alfa zeroinitializer
@cc = dso_local global i32 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_2 zeroinitializer
@cx = dso_local global i32 zeroinitializer
@declbegsys = dso_local global %T_symset zeroinitializer
@err = dso_local global i32 zeroinitializer
@facbegsys = dso_local global %T_symset zeroinitializer
@id = dso_local global %T_alfa zeroinitializer
@input = dso_local global %T_text zeroinitializer
@kk = dso_local global i32 zeroinitializer
@line = dso_local global %T_array_5 zeroinitializer
@ll = dso_local global i32 zeroinitializer
@mnemonic = dso_local global %T_array_6 zeroinitializer
@num = dso_local global i32 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@ssym = dso_local global %T_array_8 zeroinitializer
@statbegsys = dso_local global %T_symset zeroinitializer
@sym = dso_local global i32 zeroinitializer
@table = dso_local global %T_array_9 zeroinitializer
@word = dso_local global %T_array_11 zeroinitializer
@wsym = dso_local global %T_array_12 zeroinitializer

; line 56
;================================================================================
; scope: error (level : 2)

; line 60
;================================================================================
; scope: getsym (level : 2)

; line 63
;================================================================================
; scope: getsym_getch (level : 3)

; line 113
;================================================================================
; scope: gen (level : 2)

; line 123
;================================================================================
; scope: test (level : 2)

; line 130
;================================================================================
; scope: block (level : 2)

; line 134
;================================================================================
; scope: block_enter (level : 3)

; line 151
;================================================================================
; scope: block_position (level : 3)

; line 159
;================================================================================
; scope: block_constdeclaration (level : 3)

; line 173
;================================================================================
; scope: block_vardeclaration (level : 3)

; line 179
;================================================================================
; scope: block_listcode (level : 3)

; line 187
;================================================================================
; scope: block_statement (level : 3)

; line 189
;================================================================================
; scope: block_statement_expression (level : 4)

; line 191
;================================================================================
; scope: block_statement_expression_term (level : 5)

; line 193
;================================================================================
; scope: block_statement_expression_term_factor (level : 6)

; line 240
;================================================================================
; scope: block_statement_condition (level : 4)

; line 356
;================================================================================
; scope: interpret (level : 2)

; types
%T_interpret_array_13 = type [500 x i32]

; line 361
;================================================================================
; scope: interpret_base (level : 3)
;================================================================================
; metadata

!llvm.dbg.cu = !{!63}
!llvm.module.flags = !{!64, !65}
!llvm.ident = !{!62}

!0 = !DIFile(filename: "plzero.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "void", size: 0)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 16, baseType: !2, size: 80, elements: !10)
!9 = !DISubrange(count: 10)
!10 = !{!9}
!11 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!13 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 43, baseType: !14, size: 12864, elements: !22)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "instruction", file: !0, line: 20, size: 64, flags: DIFlagTypePassByValue, elements: !20)
!15 = !DIBasicType(name: "void", size: 0)
!16 = !DIBasicType(name: "void", size: 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !14, file: !0, line: 21, baseType: !12, size: 32, offset: 0)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !14, file: !0, line: 22, baseType: !15, size: 8, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !14, file: !0, line: 23, baseType: !16, size: 8, offset: 40)
!20 = !{!17,!18,!19}
!21 = !DISubrange(count: 201)
!22 = !{!21}
!23 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!24 = !DICompositeType(tag: DW_TAG_array_type, name: "symset", file: !0, line: 18, baseType: !27, size: 32, elements: !26)
!25 = !DISubrange(count: 30)
!26 = !{!25}
!27 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!28 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 41, baseType: !2, size: 648, elements: !30)
!29 = !DISubrange(count: 81)
!30 = !{!29}
!31 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 47, baseType: !32, size: 320, elements: !36)
!32 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 48, baseType: !2, size: 40, elements: !34)
!33 = !DISubrange(count: 5)
!34 = !{!33}
!35 = !DISubrange(count: 8)
!36 = !{!35}
!37 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 46, baseType: !11, size: 8192, elements: !39)
!38 = !DISubrange(count: 256)
!39 = !{!38}
!40 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 50, baseType: !41, size: 32320, elements: !49)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 51, size: 320, flags: DIFlagTypePassByValue, elements: !47)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !0, line: 51, baseType: !8, size: 80, offset: 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !41, file: !0, line: 52, baseType: !23, size: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !41, file: !0, line: 53, baseType: !3, size: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !41, file: !0, line: 54, baseType: !3, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !41, file: !0, line: 54, baseType: !3, size: 32, offset: 160)
!47 = !{!42,!43,!44,!45,!46}
!48 = !DISubrange(count: 101)
!49 = !{!48}
!50 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 44, baseType: !8, size: 880, elements: !52)
!51 = !DISubrange(count: 11)
!52 = !{!51}
!53 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 45, baseType: !11, size: 352, elements: !55)
!54 = !DISubrange(count: 11)
!55 = !{!54}
!56 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 360, baseType: !3, size: 16000, elements: !58)
!57 = !DISubrange(count: 500)
!58 = !{!57}
!59 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!12,!13,!14,!15,!16,!23,!24,!28,!31,!32,!37,!40,!41,!50,!53,!56}
!60 = !{}
!61 = !{}
!62 = !{!"LPC 1.1"}
!63 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !59, globals: !61, nameTableKind: None)
!64 = !{i32 2, !"CodeView", i32 1}
!65 = !{i32 2, !"Debug Info Version", i32 3}

