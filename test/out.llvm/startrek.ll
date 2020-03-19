
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type __array
%T_quadrange = type __range
%T_quadxy = type [2 x i8]
%T_sectrange = type __range
%T_sectxy = type [2 x i8]
%T_array_3 = type __array
%T_array_4 = type __array
%T_devicerec = type [8 x i8]
%T_digits = type __range
%T_array_5 = type __array
%T_klingonrec = type [8 x i8]
%T_array_6 = type __array
%T_array_7 = type __array
%T_quadrec = type [5 x i8]
%T_array_8 = type __array

; program variables
@badpoints = dso_local global i32 zeroinitializer
@bell = dso_local global i8 zeroinitializer
@condition = dso_local global i32 zeroinitializer
@condnames = dso_local global %T_array_2 zeroinitializer
@curenergy = dso_local global i32 zeroinitializer
@curquad = dso_local global %T_quadxy zeroinitializer
@cursect = dso_local global %T_sectxy zeroinitializer
@curtorps = dso_local global i32 zeroinitializer
@curyear = dso_local global i32 zeroinitializer
@device = dso_local global %T_array_3 zeroinitializer
@endyear = dso_local global i32 zeroinitializer
@galaxy = dso_local global %T_array_5 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@klingons = dso_local global %T_array_6 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@quadrant = dso_local global %T_array_7 zeroinitializer
@rndseq = dso_local global i32 zeroinitializer
@startklingons = dso_local global i32 zeroinitializer
@startyear = dso_local global i32 zeroinitializer
@symbols = dso_local global %T_array_8 zeroinitializer
@totalkbases = dso_local global i32 zeroinitializer
@totalklingons = dso_local global i32 zeroinitializer

; line 65
;================================================================================
; scope: expp (level : 2)

; line 84
;================================================================================
; scope: random (level : 2)

; line 95
;================================================================================
; scope: distance (level : 2)

; line 100
;================================================================================
; scope: radians (level : 2)

; line 105
;================================================================================
; scope: interval (level : 2)

; line 116
;================================================================================
; scope: reinitialize (level : 2)

; line 125
;================================================================================
; scope: initialize (level : 2)

; line 191
;================================================================================
; scope: setcondition (level : 2)

; line 211
;================================================================================
; scope: klingonattack (level : 2)

; types
%T_klingonattack_array_9 = type __array

; line 241
;================================================================================
; scope: printdigit (level : 2)

; line 250
;================================================================================
; scope: setupquad (level : 2)

; line 253
;================================================================================
; scope: setupquad_setupstuff (level : 3)

; line 301
;================================================================================
; scope: printquadrant (level : 2)

; line 330
;================================================================================
; scope: printgalaxy (level : 2)

; line 335
;================================================================================
; scope: printgalaxy_printseparator (level : 3)

; line 380
;================================================================================
; scope: printdamage (level : 2)

; line 388
;================================================================================
; scope: moveenterprise (level : 2)

; line 392
;================================================================================
; scope: moveenterprise_handledamage (level : 3)

; line 425
;================================================================================
; scope: moveenterprise_moveintra (level : 3)

; line 496
;================================================================================
; scope: firephasers (level : 2)

; line 533
;================================================================================
; scope: firetorpedoes (level : 2)

; line 538
;================================================================================
; scope: firetorpedoes_hitnova (level : 3)

; line 564
;================================================================================
; scope: firetorpedoes_hitklingbase (level : 3)

; line 656
;================================================================================
; scope: selfdestruct (level : 2)

; line 668
;================================================================================
; scope: command (level : 2)

; line 712
;================================================================================
; scope: instructions (level : 2)

; line 715
;================================================================================
; scope: instructions_spacewait (level : 3)

; line 723
;================================================================================
; scope: instructions_page1 (level : 3)

; line 750
;================================================================================
; scope: instructions_page2 (level : 3)

; line 778
;================================================================================
; scope: instructions_page3 (level : 3)

; line 805
;================================================================================
; scope: instructions_page4 (level : 3)

; line 832
;================================================================================
; scope: instructions_page5 (level : 3)

; line 859
;================================================================================
; scope: instructions_page6 (level : 3)

; line 913
;================================================================================
; scope: finishgame (level : 2)
