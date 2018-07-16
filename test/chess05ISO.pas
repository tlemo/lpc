PROGRAM CHESS(INPUT,OUTPUT);

LABEL 
  1,                                   (* INITIALIZE FOR A NEW GAME *)
  2,                                   (* EXECUTE MACHINES MOVE *)
  9,                                   (* END OF PROGRAM *)

  { [sam] added jumpin label }
  3;

CONST
  AA = 1;       ZA = 10;               (* CHARACTERS IS A WORD *)
  {AC = 'A';}   ZC = ',';              (* CHARACTER LIMITS *)
  AD = -21;     ZD = +21;              (* DIRECTION LIMITS *)
  AJ = 0;       ZJ = 73;               (* CHARACTERS IN A STRING *)
  AK = 0;       ZK = 16;               (* SEARCH DEPTH LIMITS *)
  AKM2 = -2;                           (* AK-2 *)
  ZKP1 = 17;                           (* ZK+1 *)
  AL = 0;       ZL = 119;              (* LARGE B0ARD VECTOR LIMITS *)
  AZL = -119;   ZAL = 119;             (* LARGE BOARD DIFFERENCES
                                          LIMITS *)
  AN = 1;       ZN = 30;               (* HESSAGE LIMITS *)
  AS = 0;       ZS = 63;               (* BOARD VECTOR LIMITS *)
  AT = -1;      ZT = 63;               (* BOARD VECTOR LIMITS AND
                                          ANOTHER VALUE *)
  AV = -32767;  ZV = +32767;           (* EVALUATION LIMITS *)
  AW = 1;       ZW = 500;              (* MOVE STACK LIMITS *)
  AX = 0;       ZX = 31;               (* SUBSETS OF SQUARES *)
  AY = 0;       ZY = 1;                (* ARRAY OF SUBSETS TO FORM A SET
                                          OF ALL SQUARES ON BOARD *)

  LPP = 20;                            (* LINES PER PAGE *)
  {PZX8 = 16777216; unused[sam]}       (* 2^(ZX-7) *)
  
  SYNCF = 1;                           (* FIRST CAPTURE SYNTAX *)
  SYNCL = 36;                          (* LAST CAPTURE SYNTAX *)
  SYNMF = 37;                          (* FIRST MOVE SYNTAX *)
  SYNML = 47;                          (* LAST MOVE SYNTAX *)

TYPE                                   (* SIMPLE TYPES *)
  TA = AA..ZA;                         (* INDEX TO WORD OF CHAR *)
  TB = BOOLEAN;                        (* TRUE OR FALSE *)
  TC = CHAR;                           (* SINGLE CHARACTERS *)
  TD = AD..ZD;                         (* DIRECTIONS *)
  TE = (B1,B2,B3,B4,S1,S2,S3,S4,N1,N2,N3,N4,N5,N6,N7,N8);
                                       (* NUMBER OF DIRECTIONS *)
  TF = (F1,F2,F3,F4,F5,F6,F7,F8);      (* FILES *)
  TG = (PQ,PR,PN,PB);                  (* PROMOTION PIECES *)
  TH = (H0,H1,H2,H3,H4,H5,H6,H7) ;     (* TREE SEARCH MOOES *)
  TI = INTEGER;                        (* NUMBERS *)
  TJ = AJ..ZJ;                         (* INDEX TO STRINGS *)
  TK = AK..ZK;                         (* PLY INDEX *)
  TL = AL..ZL;                         (* LARGE [10X12] BOARD *)
  TM = (LITE,DARK,NONE);               (* SIDES *)
  TN = AN..ZN;                         (* INDEX TO MESSAGES *)
  TP = (LP,LR,LN,LB,LQ,LK,DP,DR,DN,DB,DQ,DK,MT);
                                       (* PIECES:  LIGHT PAWN, LIGHT
                                          ROOK, ... , DARK KING, EMPTY
                                          SQUARE *)
  TQ = (LS,LL,DS,DL) ;                 (* QUADRANTS *)
  TR = (R1,R2,R3,R4,R5,R6,R7,R8);      (* RANKS *)
  TS = AS..ZS;                         (* SQUARES *)
  TT = AT..ZT;                         (* SQUARES, AND ANOTHER VALUE *)
  TU = (EP,ER,EN,EB,EQ,EK);            (* TYPES: PAWN, ROOK, ... .KING *)
  TV = AV..ZV;                         (* EVALUATIONS *)
  TW = AW..ZW;                         (* MOVES INDEX *)
  TX = AX..ZX;                         (* SOME SQUARES *)
  TY = AY..ZY;                         (* NUMBER OF TX'S IN A BOARD *)
  {TZ = REAL; unused[sam]}             (* FLOATING POINT NUMBERS *)

  (* SETS *)

  SC = SET OF char {AC..ZC};                  (* SET OF CHARACTERS *)
  SF = SET OF TF;                      (* SET OF FILES *)
  SQ = SET OF TQ;                      (* SET OF CASTLING TYPES *)
  SR = SET OF TR;                      (* SET OF RANKS *)
  SX = SET OF TX;                      (* SET OF SOME SQUARES *)

  (* RECOROS *)

  RC = ARRAY [TS] OF TP;               (* BOARD VECTORS *)
  RB = RECORD                          (*   BOARDS  *)
    RBTM : TM;                         (*  SIDE  TO MOVE  *)
    RBTS : TT;                         (*  ENPASSANT  SQUARE   *)
    RBTI : TI;                         (*  MOVE   NUMBER   *)
    RBSQ : SQ;                         (*  CASTLE  FLAGS   *)
    CASE boolean {INTEGER} OF
      false {0}: ( RBIS  : rc);   (* INDEXED BY SQUARE *)
      true {1}: ( RBIRF : ARRAY [TR,TF] OF TP);(* INDEXED BY RANK AND FILE *)
    END;
  
  RA = PACKED ARRAY [TA] OF TC;        (* WORDS OF CHARACTERS *)
  RN = PACKED ARRAY [TN] OF TC;        (* MESSAGES *)
  RJ = PACKED ARRAY [TJ] OF TC;        (* STRINGS *)
  RD = PACKED RECORD                   (* SYNTAX DESCRIPTOR FOR
                                          SINGLE SQUARE *)
    RDPC : TB;                         (* PIECE *)
    RDSL : TB;                         (* / *)
    RDKQ : TB;                         (* K OR Q *)
    RDNB : TB;                         (* R, N, OR B *)
    RDRK : TB;                         (* RANK *)
    END;

  {RK = RECORD unused[sam]             (* KLUDGE TO FIND NEXT BIT *)
    {CASE INTEGER OF}
      {0: (RKTB: SET OF 0..47);}       (* BITS *)
      {1: (RKTZ: TZ);}                 (* FLOATING POINT NUMBER *)
     {END;}

  RM = PACKED RECORD                   (* MOVES *)
    RMFR : TS;                         (* FROM SQUARE *)
    RMTO : TS;                         (* TO SQUARE *)
    RMCP : TP;                         (* CAPTURED PIECE *)
    RMCA : TB;                         (* CAPTURE *)
    RMAC : TB;                         (* AFFECTS CASTLE STATUS *)
    RMCH : TB;                         (* CHECK *)
    RMMT : TB;                         (* MATE *)
    RMIL : TB;                         (* ILLEGAL *)
    RMSU : TB;                         (* SEARCHED *)
    CASE RMPR : TB OF                  (* PROMOTION *)
      FALSE: (
        CASE RMOO : TB OF              (* CASTLE *)
          FALSE: (RMEP : TB);          (* ENPASSANT *)
          TRUE : (RMQS : TB);          (* QUEEN SIDE *)
          );
      TRUE : (RMPP : TG);              (* PROMOTION TYPE *)
    END;

  RS = RECORD                          (* BIT BOARDS *)
    CASE boolean {INTEGER} OF
      false{0}: (RSSS: ARRAY [TY] OF SX);     (* ARRAY OF SETS *)
      true{1}: (RSTI: ARRAY [TY] OF TI);     (* ARRAY OF INTEGERS *)
    END;

  RX = ARRAY [TS] OF  RS;              (* ATTACK MAPS *)
  
  RY = PACKED RECORD                   (* MOVE SYNTAX DESCRIPTOR *)
    RYLS : RD;                         (* LEFT SIDE DESCRIPTOR *)
    RYCH : TC;                         (* MOVE OR CAPTURE *)
    RYRS : RD;                         (* RIGHT SIDE DESCRIPTOR *)
    END;

  RE = ARRAY [TW] OF TV;               (* ARRAY OF VALUES *)
  RF = ARRAY [TW] OF RM;               (* ARRAY OF MOVES *)
  { type joins added [sam] }
  arraytmofrs = array [tm] of rs;
  arraytkofrs = array [tk] of rs;
  arraytkoftw = array [tk] of tw;
  arraytpofte = array [tp] of te;
  arraytfofrs = ARRAY [TF] OF RS;
  arraytrofrs = ARRAY [TR] OF RS;
  arraytqofrs = ARRAY [TQ] OF RS;

VAR 
  (* DATA BASE *)

  BOARD : RB;                          (* THE BOARD *)
  MBORD : rc;                          (* LOOK-AHEAD BOARD *)
  ATKFR : RX;                          (* ATTACKS FROM A SQUARE *)
  ATKTO : RX;                          (* ATTACKS TO A SQUARE *)
  ALATK : arraytmofrs;                 (* ATTACKS BY EACH COLOR *)
  TPLOC : ARRAY [TP] OF RS;            (* LOCATIONS OF PIECE BY TYPE *)
  TMLOC : arraytmofrs;                 (* LOCATIONS OF PIECE BY COLOR *)
  MOVES : rf;                          (* MOVES *)
  VALUE : re;                          (* VALUES *)
  ALLOC : arraytkofrs;                 (* ALL PIECES *)
  BSTMV : arraytkoftw;                 (* BEST MOVE SO FAR *)
  BSTVL : ARRAY [AKM2..ZKP1] OF TV;    (* VALUE OF BEST MOVE *)
  CSTAT : arraytkofrs;                 (* CASTLING SQUARES *)
  ENPAS : arraytkofrs;                 (* ENPASSANT SQUARES *)
  GENPN : arraytkofrs;                 (* PAWN ORIGINATION SQUARES *)
  GENTO : arraytkofrs;                 (* MOVE DESTINATION SQUARES *)
  GENFR : arraytkofrs;                 (* MOVE ORIGINATION SQUARES *)
  MBVAL : ARRAY [TK] OF TV;            (* MATERIAL BALANCE VALUES *)
  MVSEL : ARRAY [TK] OF TI;            (* COUNT MOVES SELECTED BY PLY *)
  INDEX : ARRAY [AK..ZKP1] OF TW;      (* CURRENT MOVE FOR PLY *)
  KILLR : ARRAY [TK] OF RM;            (* KILLER MOVES BY PLY *)
  LINDX : arraytkoftw;                 (* LAST MOVE FOR PLY *)
  SRCHM : ARRAY [TK] OF TH;            (* SEARCH MOVES *)
  GOING : TI;                          (* NUMBER OF MOVES TO EXECUTE *)
  LSTMV : RM;                          (* PREVIOUS MOVE *)
  MAXPS : TV;                          (* MAXIMUM POSITIONAL SCORE *)
  MBLTE : TV;                          (* MATERIAL BALANCE LITE EDGE *)
  MBPWN : ARRAY [TM] OF TI;            (* NUMBER OF PAWNS BY SIDE *)
  MBTOT : TV;                          (* TOTAL MATERIAL ON MBOARD *)
  NODES : TI;                          (* NUMBER OF MOVES SEARCHEO *)
  
  JNTK  : TK;                          (* PLY INDEX *)
  JMTK  : TK;                          (* ITERATION *)
  JNTM  : TM;                          (* SIDE TO MOVE *)
  JNTW  : TW;                          (* MOVES STACK POINTER *)

  (* LETS *)

  FKPSHD : TI;                         (* KING PAWN SHIELD CREDIT *)
  FKSANQ : TI;                         (* KING IN SANCTUARY CREDIT *)
  FMAXMT : TI;                         (* MAXIMUM MATERIAL SCORE *)
  FNODEL : TI;                         (* MOVE LIMIT FOR SEARCH *)
  FPADCR : ARRAY [TF] OF TI;           (* PAWN AOVANCE CREDIT BY FILE *)
  FPBLOK : TI;                         (* PAWN BLOCKED PENALTY *)
  FPCONN : TI;                         (* PAWN CONNECTED CREDIT *)
  FPFLNX : TI;                         (* PAWN PHALANX CREDIT *)
  FRDUBL : TI;                         (* DOUBLED ROOK CREDIT *)
  FRK7TH : TI;                         (* ROOK ON SEVENTH CREOIT *)
  FTRADE : TI;                         (* TRADE-DOWW BONUS FACTOR *)
  FTRDSL : TI;                         (* TRADE-DOWN TUNING FACTOR *)
  FTRPDK : TI;                         (* PAWN TRADE-DOWN RELAXATION *)
  FTRPWN : TI;                         (* PAWN TRADE-DOWN FACTOR *)
  FWKING : TI;                         (* KING EVALUATION WEIGHT *)
  FWMAJM : TI;                         (* MAJOR PIECE MOBILITY WEIGHT *)
  FWMINM : TI;                         (* MINOR PIECE MOBILITY WEIGHT *)
  FWPAWN : TI;                         (* PAWN EVALUATION WEIGHT *)
  FWROOK : TI;                         (* ROOK EVALUATION WEIGHT *)
  WINDOW : TI;                         (* SIZE OF ALPHA-BETA WINDOW *)

  (* SWITCHES *)

  SWEC : TB;                           (* ECHO INPUT *)
  SWPA : TB;                           (* PAGING *)
  SWPS : TB;                           (* PRINT PRELIMINARY SCORES *)
  SWRE : TB;                           (* REPLY WITH MOVE *)
  SWSU : TB;                           (* PRINT STATISTICS SUMMARY *)
  SWTR : TB;                           (* TRACE TREE SEARCH *)

  (* COMMAND PROCESSING OATA *)

  ICARD : RJ;                          (* INPUT CARD IMAGE *)
  ILINE : RJ;                          (* CURRENT COMMAND *)
  JMTJ  : TJ;                          (* CURRENT INPUT LINE POSITION *)
  JNTJ  : TJ;                          (* CURRENT COMMAND POSITION *)
  MOVMS : RN;                          (* MOVE MESSAGE *)

  (* TRANSLATION TABLES *)

  XSPB : ARRAY [TP] OF TB;             (* TRUE FOR SWEEP PIECES *)
  XFPE : arraytpofte;                  (* FIRST DIRECTION *)
  XLLD : ARRAY [AZL..ZAL] OF TD;       (* DIRECTION FOR LARGE BOARD
                                          SQUARE DIFFERENCES *)
  XLPE : arraytpofte;                  (* LAST DIRECTION *)
  XRFS : arraytfofrs;                  (* BIT BOARD FOR FILES *)
  XRRS : arraytrofrs;                  (* BIT BOARD FOR RANKS *)
  XNFS : arraytfofrs;                  (* COMP BIT BOARD FOR FILES *)
  XNRS : arraytrofrs;                  (* COMP BIT BOARD FOR RANKS *)
  XRSS : RX;                  (* BIT BOARD FOR 8X8 INDEX *)
  XRQM : ARRAY [TQ] OF RM;             (* MOVES FOR CASTLE TYPES *)
  XSQS : arraytqofrs;                  (* BIT BOARD FOR CASTLE TYPES *)
  XSSX : ARRAY [TS] OF SX;             (* SET ELEMENT FOR 8X8 INDEX *)
  XTBC : ARRAY [TB] OF TC;             (* CHARACTERS FOR BOOLEANS *)
  XTED : ARRAY [TE] OF TD;             (* DIRECTION NUMBER TO 10X12
                                          SQUARE DIFFERENCE *)
  XTGC : ARRAY [TG] OF TC;             (* CHARACTERS FOR PROMOTION *)
  XTGMP: ARRAY [TG,TM] OF TP;          (* PIECE FOR PROMOTION TYPE
                                          AND COLOR *)
  XTLS : ARRAY [TL] OF TT;             (* 8X8 INDEX FOR 10X12 INDEX *)
  XTMA : ARRAY [TM] OF RA;             (* WORDS FOR COLORS *)
  XTMQ : ARRAY [TM] OF TQ;             (* CASTLE TYPES FOR SIDE *)
  XTMV : ARRAY [TM] OF TV;             (* SCORE FACTOR FOR SIDE *)
  XTPC : ARRAY [TP] OF TC;             (* CHARACTERS FOR PIECES *)
  XTPM : ARRAY [TP] OF TM;             (* SIDES FOR PIECES *)
  XTPU : ARRAY [TP] OF TU;             (* TYPE FOR PIECE *)
  XTPV : ARRAY [TP] OF TV;             (* VALUES OF PIECES *)
  XTQA : ARRAY [TQ] OF RA;             (* WORDS FOR CASTLES *)
  XTQS : ARRAY [TQ] OF TS;             (* TO SQUARES FOR CASTLE TYPES *)
  XTRFS: ARRAY [TR,TF] OF TS;          (* 8X8 INDEX FOR RANK AND FILE *)
  XTSF : ARRAY [TS] OF TF;             (* FILES FOR SQUARES *)
  XTSL : ARRAY [TS] OF TL;             (* 10X12 INDEX FOR 8X8 INDEX *)
  XTSR : ARRAY [TS] OF TR;             (* RANKS FOR SQUARES *)
  XTSX : ARRAY [TS] OF TX;             (* ELEMENT NUMBER FOR 8X8
                                          INDEX *)
  XTSY : ARRAY [TS] OF TY;             (* ARRAY SUBSCRIPT INTO BIT BOARD
                                          FOR 8X8 INDEX *)
  XTUC : ARRAY [TU] OF TC;             (* CHARACTER FOR TYPE *)
  XTUMP: ARRAY [TU,TM] OF TP;          (* PIECE FOR TYPE AND SIDE *)

  XRQSO: arraytqofrs;                  (* UNOCCUPIED SQUARES FOR
                                          CASTLING *)
  XRQSA: arraytqofrs;                  (* UNATTACKED SQUARES FOR
                                          CASTLING *)

  EDGE : ARRAY [TE] OF RS;             (* EDGES IN VARIOUS DIRECTIONS *)
  CORNR: RS;                           (* KING SANCTUARY *)
  NULMV: RM;                           (* NULL MOVE *)
  OTHER: ARRAY [TM] OF TM;             (* OTHER COLOR *)
  SYNTX: ARRAY [SYNCF..SYNML] OF RY;   (* MOVE SYNTAX TABLE *)

  { [sam] jump into structure flag }
  jumpin: boolean;


FUNCTION MAX(A,B:TI): TI;              (* LARGER OF TWO NUMBERS *)

BEGIN
IF A > B THEN
  MAX := A
ELSE
  MAX := B;
END;  (* MAX *)


FUNCTION MIN(A,B:TI): TI;              (* SMALLER OF TWO NUMBERS *)

BEGIN
IF A < B THEN
  MIN := A
ELSE
  MIN := B;
END;  (* MIN *)


FUNCTION SIGN(A,B:TI): TI;             (* SIGN OF B APPLIED TO
                                          ABSOLUTE VALUE OF A *)

BEGIN
{ Replaced strangeness [sam] }
   if b < 0 then sign := abs(a)*(-1) else sign := abs(a)*(+1)
{ SIGN := TRUNC(B/ABS(B)) * ABS(A); }
END;  (* SIGN *)


PROCEDURE SORTIT                       (* SORT PRELIMINARY SCORES *)
  (VAR A:RE;                           (* ARRAY OF SCORES *)
   VAR B:RF;                           (* ARRAY OF MOVES *)
   C:TW);                              (* NUMBER OF ENTRIES *)

VAR 
  INTB : TB;                           (* LOOP EXIT FLAG *)
  INTW : TW;                           (* OUTER LOOP INDEX *)
  INTI : TI;                           (* INNER LOOP INDEX *)
  INTV : TV;                           (* HOLD SCORE *)
  INRM : RM;                           (* HOLD MOVE *)

BEGIN
FOR INTW := AW+2 TO C DO
  BEGIN
    INTI := INTW - 1;
    INTV := A[INTW];
    INRM := B[INTW];
    INTB := TRUE;
     WHILE (INTI > AW) AND INTB DO
       IF INTV < A[INTI] THEN
       BEGIN
         A[INTI+1] := A[INTI];
         B[INTI+1] := B[INTI];
         INTI := INTI - 1;
       END
       ELSE
        INTB := FALSE;                 (* EXIT *)
      A[INTI+1] := INTV;
      B[INTI+1] := INRM;
    END;
END;  (* SORTIT *)


PROCEDURE ANDRS                        (* INTERSECTION OF TWO BIT 
                                          BOARDS *)
  (VAR C:RS;                           (* RESULT *)
   A, B:RS);                           (* OPERANDS *)

VAR 
  INTY : TY;                           (* BIT BOARD WORD INDEX *)

BEGIN
  FOR INTY := AY TO ZY DO
    C.RSSS[INTY] := A.RSSS[INTY] * B.RSSS[INTY];
END;  (* ANDRS *)


PROCEDURE CLRRS                        (* REMOVE SQUARE FROM BITBOARD *)
  (VAR C:RS;                           (* BIT BOARD *)
   A:TS);                              (* SQUARE TO REMOVE *)

BEGIN
  C.RSSS[XTSY[A]] := C.RSSS[XTSY[A]] - XSSX[A];
END;  (* CLRRS *)


PROCEDURE CPYRS                        (* COPY OF A BIT BOARD *)
 (VAR C:RS;                            (* RESULT *)
  A:RS);                               (* OPERAND *)

VAR 
  INTY : TY;                           (* BIT BOARD NORO INDEX *)

BEGIN
  FOR INTY := AY TO ZY DO
    C.RSSS[INTY] := A.RSSS[INTY];
END;  (* CPYRS *)


PROCEDURE IORRS                        (* UNION OF TWO BIT BOARDS *)
 (VAR C:RS;                            (* RESULT *)
  A, B:RS);                            (* OPERANDS *)

VAR 
  INTY : TY;                           (* BIT BOARD WORD INDEX *)

BEGIN
  FOR   INTY :=  AY TO ZY DO
    C.RSSS[INTY] := A.RSSS[INTY] + B.RSSS[INTY];
END;  (* IORRS *)


PROCEDURE  NEWRS                       (* CLEAR BIT BOARD *)
 (VAR  A:RS);                          (* BIT BOARD TO CLEAR *)

VAR 
  INTY : TY;                           (* BIT BOARD WORD INDEX *)

BEGIN
  FOR INTY := AY TO ZY DO
    A.RSSS[INTY] := [];
END;  (* NEWRS *)


PROCEDURE NOTRS                        (* COMPLEMENT OF A BIT BOARD *)
 (VAR C:RS;                            (* RESULT *)
  A:RS);                               (* OPERAND *)

VAR
  INTY : TY;                           (* BIT BOARD WORD INDEX *)

BEGIN
  FOR INTY := AY TO ZY DO
    C.RSSS[INTY] := [AX..ZX]-A.RSSS[INTY];
END;  (* NOTRS *)

FUNCTION NXTTS                         (* NEXT ELEMENT IN BIT BOARD *)
 (VAR A:RS;                            (* BIT BOARD TO LOCATE FIRST
                                          SQUARE, AND THEN REMOVE *)
  VAR B:TS                             (* SQUARE NUMBER OF FIRST SQUARE
                                          IN BIT BOARD *)
 ): TB;                                (* TRUE IFF ANY SQUARES WERE SET
                                          INITIALLY *)

LABEL 
  11;                                  (* RETURN *)

VAR 
  INTX : TX;                           (* BIT BOARD BIT INDEX *)
  INTY : TY;                           (* BIT BOARD WORD INDEX *)

BEGIN
  FOR INTY := ZY DOWNTO AY DO          (* LOOP THRU BIT BOARD WOROS *)
    IF A.RSTI[INTY] <> 0 THEN
    BEGIN
(*** BEGIN COC 6000 DEPENDANT CODE *)
(*** FOLLOWING CODE REQUIRES THE 'EXPO' FUNCTION TO RETURN
(*** THE EXPONENT FROM A FLOATING POINT NUMBER.  IT ALSO ASSUMES
(*** THAT FLOATING POINT MUMBERS HAVE 40 BIT COEFFICIENTS RIGHT-
(*** JUSTIFIED IN A WORD. AND THAT SETS ARE RIGHT-JUSTIFIED IN
(*** A WORD. *)
(*    X.RKTZ := A.RSTI[INTY];          (* FLOAT WORD *)
(*    B := EXPO(X.RKTZ) + INTY * (ZX+1):
(*                                     (* CONVERT TO SQUARE NUMBER *)
(*    X.RKTB := X.RKTB - [47];         (* REMOVE MOST SIGNIFICANT BIT *)
(*    A.RSTI[INTY] := TRUNC(X.RKTZ);   (* INTEGERIZE *)
(*    NXTTS := TRUE;                   (* RETURN A 8IT SET *)
(*    GOTO 11;                         (* RETURN *)
(*** END CDC 6000 DEPENDANT CODE *)
(*** BEGIN NACHINE INDEPENDENT CODE *)
      FOR INTX := ZX DOWNTO AX DO      (* LOOP THROUGH BITS IN WORD OF SET *)
        IF INTX IN  A.RSSS[INTY] THEN
        BEGIN
          B := INTX+INTY*(ZX+1);       (* RETURN SQUARE NUMBER *)
          A.RSSS[INTY] := A.RSSS[INTY] - [INTX];
                                       (* REMOVE  BIT FROM WORD *)
          NXTTS := TRUE;               (* RETURN A BIT SET *)
          GOTO 11;                     (* RETURN *)
        END;
(*** END MACHINE XNOEPENDENT CODE *)
    END;
  NXTTS := FALSE;                      (* ELSE RETURN NC BITS SET *)
11:                                    (* RETURN *)
END;  (* NXTTS *)


FUNCTION CNTRS                         (* COUNT NENBERS OF A BIT BOARD *)
(A:RS): TS;                            (* BIT BOARD TO COUNT *)

VAR 
  INTS : TS;                           (* TEMPORARY *)
  INRS : RS;                           (* SCRATCH *)
  IMTS : TS;                           (* SCRATCH *)

BEGIN
  INTS := 0;
(*** BEGIN MACHINE INDEPENDENT CODE *)
  CPYRS(INRS,A);
  WHILE NXTTS(INRS,IMTS) DO
    INTS := INTS+1;                    (* COUNT SQUARES *)
(*** END MACHINE INDEPENDENT CODE *)
(*** BEGIN CDC 6000 DEPENDENT CODE *)
(*** FOLLOWING COOE REQUIRES THE 'CARD' FUNCTION TO
(*** COUNT THE MEMBERS IN A SET. *)
(*FOR INTY := AY TO ZY DO
(*  INTS := INTS + CARD(A.RSSS[INTY]):
(*** END CDC DEPENDENT CODE *)
  CNTRS := INTS;                       (* RETURN SUM *)
END;  (* CNTRS *)


PROCEDURE SETRS                        (* INSERT SQUARE INTO BIT BOARD *)
(VAR C:RS;                             (* BIT BOARD *)
 A:TS);                                (* SQUARE TO INSERT *)

BEGIN
  C.RSSS[XTSY[A]] := C.RSSS[XTSY[A]] + XSSX[A];
END;  (* SETRS *)


PROCEDURE SFTRS                        (* SHIFT BIT BOARD *)
(VAR A:RS;                             (* RESULT *)
 B:RS;                                 (* SOURCE *)
 C:TE);                                (* DIRECTION *)

VAR 
  INTS : TS;                           (* SCRATCH *)

BEGIN
(* BEGIN MACHINE INDEPENDENT CODE *)
  NEWRS(A);                            (* CLEAR NEW BIT BOARD *)
  WHILE NXTTS(B,INTS) DO
    IF XTLS[XTSL[INTS]+XTED[C]] > 0 THEN
                                       (* SHIFT EACH BIT *)
    SETRS(A,XTLS[XTSL[INTS]+XTED[C]]);
(*** END MACHINE INDEPENDENT CODE *)
(*** BEGIN CDC 6000 DEPENDENT CODE *)
(*** FOLLOWING CODE ASSUMES THAT MULTIPLICATION OR DIVISION
(*** NY A CONSTANT POWER OF 2 IS DONE WITH A SHIFT INSTRUCTION. *)
(*CASE C OF
(*SL:  BEGIN
(*       FOR INTY := AY TO ZY DO       (* SHIFT ONE PLACE *)
(*       BEGIN
(*         B.RSSS[INTY] := B.RSSS[INTV] - EDGE[S1].RSSS[INTY];
(*         A.RSTK[INTY] := B.RSTK[INTV] DIV 2;
(*       END;
(*     END;
(*S2:  BEGIN
(*       FOR INTY := AY TO ZY DO       (* SHIFT WORDS *)
(*       BEGIN
(*         B.RSSS(INTY) := B.RSSS[INTY] - EDGE(S2).RSSS[INTY];
(*         INRS.RSSS[INTY] := B.RSSS[INTY] * [ZX-7..ZX];
(*         A.RSSS[INTY] := B.RSSS[INTY] - [ZX-7..ZX];
(*         A.RSTI[INTY] := A.RSTI[INTY] * 255
(*       END;
(*       FOR INTY := AY+1 TO ZY DO     (*  CARRY BETWEEN WOROS *)
(*         A.PSTI[INTY] := A.RSTI[INTY] + INRS.RSTI[INTY-1] DIV PZX8;
(*     END;
(*S3I  BEGIN
(*       FOR INTY := AY TO ZY DO       (* SHIFT ONE PLACE *)
(*       BEGIN
(*         A.RSSS[INTY] := B.RSSS[INTY] - EDGE[S3].RSSS[INTY];
(*         A.RSTI[INTY] := A.RSTINTY] * 2;
(*       END;
(*     END;
(S4:   BEGIN
(*       FOR INTY :- AY TO ZY DO       (* SHIFT WORDS *)
(*       BEGIN
(*         B.RSSS[INTY] := S.RSSS[INTY] - EDGE[S4].RSSS[INTY];
(*         INRS.RSSS[INTY] :=  B.RSSS[INTY] * [AX..AX+7];
(*         A.RSTI[INTY] := B.RSTI[INTY] DIV  256:
(*       END;
(*       FOR INTY := AY TO ZY-1 DO     (* CARRY BETWEEN WORDS *)
(*         A.RSTI[INTY] := A.RSTI[INTY] + INRS.RSTI[INTY+1] * PZX8;
(*     END;
(*B1:  BEGIN
(*       SFTRS(INRS,B,S1):
(*       SFTRS(A,INRS,S2);
(*     END;
(*B2:  BEGIN
(*       SFTRS(INRS,B,S2);
(*       SFTRS(A,INRS,S3);
(*     END:
(*B3:  BEGIN
(*       SFTRS(INRS,B,S3);
(*       SFTRS(A,IHRS,S4);
(*     END:
(*B4:  BEGIN
(*       SFTRS(INRS,B,S4);
(*       SFTRS(A,INRS,S1);
(*     END;
(*N1: BEGIN
(*       SFTRS(INRS,B,B1);
(*       SFTRS(A,INRS,S2);
(*     END:
(*N2:  BEGIN
(*       SFTRS(INRS,B,B2);
(*       SFTRS(A,INRS,S2);
(*     END;
(*N3:  BEGIN
(*       SFTRS(INRS,B,B2);
(*       SFTRS(A,INRS,S3);
(*     END;
(*N4:  BEGIN
(*       SFTRS(INRS,B,B3);
(*       SFTRS(A,LNRS,S3);
(*     END;
(*N5:  BEGIN
<*       SFTRS(INRS,B,B3);
(*       SFTRS(A,INRS,S4);
(*     END;
(*N6:  BEGIN
(*       SFTRS(INRS,B,B4);
(*       SFTRS(A,INRS,S4);
(*     END:
(*N7:  BEGIN
(*       SFTRS(INRS,B,B4);
(*       SFTRS(A,INRS,S1);
(*     END;
(*N8:  BEGIN
(*       SFTRS(INRS,B,B1);
(*       SFTRS(A,INRS.S1);
(*     END;
(*END:
(*** END CDC 6000 DEPENDENT CODE *)
END;  (* SFTRS *)


FUNCTION INRSTB                        (* SQUARE IN BIT BOARD BOOLEAN *)
(A:RS;                                 (* BIT BOARD *)
 B:TS): TB;                            (* SQUARE IN QUESTION *)

BEGIN
  INRSTB := XSSX[B] <= A.RSSS[XTSY[B]];
END;  (* INRSTB *)

FUNCTION NULRS                         (* NULL BIT BOARD *)
(A:RS)                                 (* BIT BOARD TO CHECK *)
: TB;                                  (* TRUE IF BIT BOARD EMPTY *)

VAR 
  INTY : TY;                           (* BIT BOARD WORD INDEX *)
  INTB : TB;                           (* TEMPORARY VALUE *)

BEGIN
  INTB := TRUE;
  FOR INTY := AY TO ZY DO
    INTB := INTB AND (A.RSTI[INTY] = 0);
  NULRS := INTB;
END;  (* NULRS *)


FUNCTION NULMVB                        (* NULL MOVE BOOLEAN *)
(A:RM)                                 (* MOVE TO TEST *)
: TB;                                  (* TRUE IF NULL MOVE *)

BEGIN
  WITH A DO
    NULMVB := RMAC AND RMPR AND (NOT RMCA);
END;  (* NULMVB *)


PROCEDURE INICON;                      (* INITIALIZE GLOBAL CONSTANTS *)

VAR 
  INTD  : TD;                           (* DIRECTION INDEX *)
  INTE  : TE;                           (* DIRECTION *)
  INTF  : TF;                           (* FILE INDEX *)
  INTI  : TI;                           (* SCRATCH *)
  INTI1 : TI;                          (* SCRATCH eliminates threat error [sam] *)
  INTL  : TL;                           (* LARGE BOARD INDEX *)
  INTQ  : TQ;                           (* CASTLE TYPE INDEX *)
  INTR  : TR;                           (* RANK INDEX *)
  INTT  : TT;                           (* SQUARE INDEX *)
  INTX  : TX;                           (* SET ELEMENT INDEX *)
  INTY  : TY;                           (* BIT BOARD WORD INDEX *)
  IMTI  : TI;                           (* SCRATCH *)
  INRS  : RS;                           (* SCRATCH *)

PROCEDURE INISYN                       (* INITIALIZE MOVE SYNTAX
                                          TABLE ENTRY *)
(A:RA);                                (* MOVE SYNTAX *)
BEGIN
  WITH SYNTX[INTI] DO
  BEGIN
    WITH RYLS DO
    BEGIN
      RDPC := TRUE;
      RDSL := A[AA+0] <> ' ';
      RDKQ := A[AA+1] <> ' ';
      RDNB := A[AA+2] <> ' ';
      RDRK := A[AA+3] <> ' ';
    END;
    RYCH := A[AA+4];
    WITH RYRS DO
    BEGIN
      RDPC := A[AA+5] <> ' ';
      RDSL := A[AA+6] <> ' ';
      RDKQ := A[AA+7] <> ' ';
      RDNB := A[AA+8] <> ' ';
      RDRK := A[AA+9] <> ' ';
    END;
  END;
  INTI := INTI+1;
END;  (* INISYN *)


PROCEDURE INIXTP                       (* INITIALIZE PIECE TRANSLATION
                                          TABLES *)
 (A : TP;                              (* PIECE TO BE TRANSLATED *)
  B : TC;                              (* DISPLAV EQUIVALENT *)
  C : TM;                              (* COLOR OF PIECE *)
  D : TU;                              (* TYPE OF PIECE *)
  E : TB;                              (* TRUE IF SWEEP PIECE *)
  F : TE;                              (* FIRST DIRECTION OF MOVEMENT *)
  G : TE;                              (* LAST DIRECTION OF MOVEMENT *)
  H : TV);                             (* VALUE OF PIECE *)

BEGIN
  XTPC[A] := B;
  XTPM[A] := C;
  XSPB[A] := E;
  XFPE[A] := F;
  XLPE[A] := G;
  XTPU[A] := D;
  XTPV[A] := H;
  IF A <> MT THEN
    XTUMP[D,C] := A;
END;  (* INIXTP *)


BEGIN  (* INICON *)

  (** INITIALIZE PIECE CHARACTERISTICS *)

  INIXTP(LP,'A',LITE,EP,FALSE,B1,B2,1*64);
  INIXTP(LR,'B',LITE,ER,TRUE ,S1,S4,5*64);
  INIXTP(LN,'C',LITE,EN,FALSE,N1,N8,3*64);
  INIXTP(LB,'D',LITE,EB,TRUE ,B1,B4,3*64);
  INIXTP(LQ,'E',LITE,EQ,TRUE ,B1,S4,9*64);
  INIXTP(LK,'F',LITE,EK,FALSE,B1,S4,0);
  INIXTP(DP,'1',DARK,EP,FALSE,B3,B4,-1*64);
  INIXTP(DR,'2',DARK,ER,TRUE ,S1,S4,-5*64);
  INIXTP(DN,'3',DARK,EN,FALSE,N1,N8,-3*64);
  INIXTP(DB,'4',DARK,EB,TRUE ,B1,B4,-3*64);
  INIXTP(DQ,'5',DARK,EQ,TRUE ,B1,S4,-9*64);
  INIXTP(DK,'6',DARK,EK,FALSE,B1,S4,0);
  INIXTP(MT,'-',NONE,EP,FALSE,B2,B1,0);

  XTGMP[PQ,LITE] := LQ;  XTGMP[PQ,DARK] := DQ;  XTGC[PQ] := 'Q';
  XTGMP[PR,LITE] := LR;  XTGMP[PR,DARK] := DR;  XTGC[PR] := 'R';
  XTGMP[PN,LITE] := LN;  XTGMP[PN,DARK] := DN;  XTGC[PN] := 'N';
  XTGMP[PB,LITE] := LB;  XTGMP[PB,DARK] := DB;  XTGC[PB] := 'B';

  XTUC[EK] := 'K';
  XTUC[EQ] := 'Q';
  XTUC[ER] := 'R';
  XTUC[EN] := 'N';
  XTUC[EB] := 'B';
  XTUC[EP] := 'P';

  (** INITIALIZE OTHER CONSTANTS *)

  XTBC[FALSE] := '-';
  XTBC[TRUE ] := '*';
  
  OTHER[LITE] := DARK;  XTMV[LITE] :=  1;
  OTHER[DARK] := LITE;  XTMV[DARK] := -1;
  OTHER[NONE] := NONE;

  XTMA[LITE] := '    WHITE ';
  XTMA[DARK] := '    BLACK ';
  XTMA[NONE] := '   NO ONE ';
  
  XTQA[LS] := 'WHITE KING';
  XTQA[LL] := 'WHITE LONG';
  XTQA[DS] := 'BLACK KING';
  XTQA[DL] := 'BLACK LONG';

  (** INITIALIZE 10X12 TO 8X8 AND 8X8 TO 10X12 TRANSLATION TABLES *)

  FOR INTL := AL TO ZL DO              (* LOOP THROUGH LARGE BOARD *)
    XTLS[INTL] := -1;                  (* PRESET ARRAY TO OFF BOARD *)
  INTL := 21;                          (* INDEX OF FIRST SQUARE ON LARGE
                                          BOARD *)
  INTT := -1;                          (* INDEX OF FIRST SQUARE ON SHALL
                                          BOARD *)
  FOR INTR := R1 TO R8 DO              (* LOOP THROUGH RANKS *)
    BEGIN
      FOR INTF := F1 TO F8 DO          (* LOOP THROUGH FILES *)
        BEGIN
          INTT := INTT+1;              (* ADVANCE SMALL BOARD INDEX *)
          XTRFS[INTR,INTF] := INTT;    (* SET MATRIX TO VECTOR
                                          TRANSLATION *)
          XTLS[INTL] := INTT;          (* SET LARGE BOARD TRANSLATION
                                          TABLE WITH SMALL BOARD INDEX *)
          XTSL[INTT] := INTL;          (* SET SMALL BOARD TRANSLATION
                                          TABLE WITH LARGE BOARD INDEX *)
          XTSR[INTT] := INTR;          (* SET RANK OF SQUARE *)
          XTSF[INTT] := INTF;          (* SET FILE OF SQUARE *)
          INTL := INTL+1;              (* ADVANCE LARGE BOARD INDEX *)
        END;
      INTL := INTL+2;                  (* ADVANCE LARGE BOARD INDEX TO
                                          SKIP BORDER  *)
    END;

  (** INITIALIZE 8X8 TO BIT BOARD TABLES *)

  INTT := -1;
  FOR INTY := AY TO ZY DO
    BEGIN
      FOR INTX := AX TO ZX DO
        BEGIN
          INTT := INTT+1;
          XTSX[INTT] := INTX;
          XTSY[INTT] := INTY;
          XSSX[INTT] := [INTX];
          NEWRS(XRSS[INTT]);
          XRSS[INTT].RSSS[INTY] := [INTX];
        END;
    END;

  (** INITIALIZE CONSTANT BIT BOARDS *)

  FOR INTR := R1 TO R8 DO
    NEWRS(XRRS[INTR]);
  FOR INTF := F1 TO F8 DO
    NEWRS(XRFS[INTF]);

  FOR INTR := R1 TO R8 DO
    FOR INTF := F1 TO F8 DO
      BEGIN
        SETRS(XRRS[INTR],XTRFS[INTR,INTF]);
        SETRS(XRFS[INTF],XTRFS[INTR,INTF]);
      END;

  FOR INTF := F1 TO F8 DO
    NOTRS(XNFS[INTF],XRFS[INTF]);

  FOR INTR := R1 TO R8 DO
    NOTRS(XNRS[INTR],XRRS[INTR]);

  (** INITIALIZE EDGES *)

  CPYRS(EDGE[S1],XRFS[F1]);
  CPYRS(EDGE[S2],XRRS[R8]);
  CPYRS(EDGE[S3],XRFS[F8]);
  CPYRS(EDGE[S4],XRRS[R1]);
  IORRS(EDGE[B1],EDGE[S1],EDGE[S2]);
  IORRS(EDGE[B2],EDGE[S2],EDGE[S3]);
  IORRS(EDGE[B3],EDGE[S3],EDGE[S4]);
  IORRS(EDGE[B4],EDGE[S4],EDGE[S1]);
  IORRS(EDGE[N1],EDGE[B1],XRRS[R7]);
  IORRS(EDGE[N2],EDGE[B2],XRRS[R7]);
  IORRS(EDGE[N3],EDGE[B2],XRFS[F7]);
  IORRS(EDGE[N4],EDGE[B3],XRFS[F7]);
  IORRS(EDGE[N5],EDGE[B3],XRRS[R2]);
  IORRS(EDGE[N6],EDGE[B4],XRRS[R2]);
  IORRS(EDGE[N7],EDGE[B4],XRFS[F2]);
  IORRS(EDGE[N8],EDGE[B1],XRFS[F2]);

  (** INITIALIZE CORNER MASK *)

  IORRS(INRS,XRRS[R1],XRRS[R2]);
  IORRS(INRS,INRS,XRRS[R7]);
  IORRS(INRS,INRS,XRRS[R8]);
  IORRS(CORNR,XRFS[F1],XRFS[F2]);
  IORRS(CORNR,CORNR,XRFS[F7]);
  IORRS(CORNR,CORNR,XRFS[F8]);
  ANDRS(CORNR,CORNR,INRS);

  (** INITIALIZE DIRECTION TABLE *)

                XTED[N1]:= 19;              XTED[N2]:= 21;
  XTED[N8]:=  8;XTED[B1]:=  9;XTED[S2]:= 10;XTED[B2]:= 11;XTED[N3]:= 12;
                XTED[S1]:= -1;              XTED[S3]:=  1;
  XTED[N7]:=-12;XTED[B4]:=-11;XTED[S4]:=-10;XTED[B3]:= -9;XTED[N4]:= -8;
                XTED[N6]:=-21;              XTED[N5]:=-19;

  (** INITIALIZE SQUARE DIFFERENCE TO DIRECTION TABLE *)

  FOR INTI1 := AZL TO ZAL DO
     XLLD[INTI1] := 0;

  FOR INTE := B1 TO S4 DO
    BEGIN
      INTD := XTED[INTE];
      FOR IMTI := 1 TO 7 DO
        XLLD[IMTI*INTD] := INTD;
    END;

  FOR INTE := N1 TO N8 DO
    XLLD[XTED[INTE]] := XTED[INTE];

  (** INITIALIZE CASTLING TRANSLATION TABLES *)

  IORRS(XSQS[LS],XRSS[XTRFS[R1,F8]],XRSS[XTRFS[R1,F5]]);
  IORRS(XSQS[LL],XRSS[XTRFS[R1,F1]],XRSS[XTRFS[R1,F5]]);
  IORRS(XSQS[DS],XRSS[XTRFS[R8,F8]],XRSS[XTRFS[R8,F5]]);
  IORRS(XSQS[DL],XRSS[XTRFS[R8,F1]],XRSS[XTRFS[R8,F5]]);

  IORRS(XRQSO[LS],XRSS[XTRFS[R1,F6]],XRSS[XTRFS[R1,F7]]);
  IORRS(XRQSO[LL],XRSS[XTRFS[R1,F4]],XRSS[XTRFS[R1,F3]]);
  IORRS(XRQSA[LS],XRSS[XTRFS[R1,F5]],XRQSO[LS]);
  IORRS(XRQSA[LL],XRSS[XTRFS[R1,F5]],XRQSO[LL]);
  IORRS(XRQSO[LL],XRSS[XTRFS[R1,F2]],XRQSO[LL]);

  IORRS(XRQSO[DS],XRSS[XTRFS[R8,F6]],XRSS[XTRFS[R8,F7]]);
  IORRS(XRQSO[DL],XRSS[XTRFS[R8,F4]],XRSS[XTRFS[R8,F3]]);
  IORRS(XRQSO[DS],XRSS[XTRFS[R8,F5]],XRQSO[DS]);
  IORRS(XRQSA[DL],XRSS[XTRFS[R8,F5]],XRQSO[DL]);
  IORRS(XRQSO[DL],XRSS[XTRFS[R8,F2]],XRQSO[DL]);

  FOR  INTQ  := LS  TO DL  DO
    WITH  XRQM[INTQ]  DO
      BEGIN
        RMCP := MT;
        RMCA := FALSE;
        RMAC := TRUE;
        RMCH := FALSE;
        RMMT := FALSE;
        RMIL := FALSE;
        RMSU := FALSE;
        RMPR := FALSE;
        RMOO := TRUE;
      END;

  XRQM[LS].RMFR := XTRFS[R1,F5];  XRQM[LS].RMTO := XTRFS[R1,F7];
  XRQM[LL].RMFR := XTRFS[R1,F5];  XRQM[LL].RMTO := XTRFS[R1,F3];
  XRQM[DS].RMFR := XTRFS[R8,F5];  XRQM[DS].RMTO := XTRFS[R8,F7];
  XRQM[DL].RMFR := XTRFS[R8,F5];  XRQM[DL].RMTO := XTRFS[R8,F3];
  
  XRQM[LS].RMQS := FALSE;
  XRQM[LL].RMQS := TRUE;
  XRQM[DS].RMQS := FALSE;
  XRQM[DL].RMQS := TRUE;
  
  XTMQ[LITE] := LS;
  XTMQ[DARK] := DS;
  
  XTQS[LS] := XTRFS[R1,F8];
  XTQS[LL] := XTRFS[R1,F1];
  XTQS[DS] := XTRFS[R8,F8];
  XTQS[DL] := XTRFS[R8,F1];

  (** INITIALIZE NULL MOVE *)

  WITH NULMV DO
    BEGIN
      RMFR := AS;
      RMTO := AS;
      RMCP := MT;
      RMCA := FALSE;
      RMAC := TRUE;
      RMCH := FALSE;
      RMMT := FALSE;
      RMIL := FALSE;
      RMSU := FALSE;
      RMPR := TRUE;
      RMPP := PB;
    END;

  (** INITIALIZE COMMMAND PROCESSING VARIABLES *)

  JMTJ := ZJ;
  ICARD[ZJ] := ';';
  ILINE[ZJ] := ';';

  (** INITIALIZE MOVES SYNTAX TABLE *)

  INTI := SYNCF;
  INISYN('    *P    ');
  INISYN('    *P/  1');
  INISYN('/  1*P    ');
  INISYN('    *P/ R ');
  INISYN('/ R *P    ');
  INISYN('    *P/ R1');
  INISYN('/ R1*P    ');
  INISYN('    *P/KR ');
  INISYN('/KR *P    ');
  INISYN('    *P/KR1');
  INISYN('/KR1*P    ');
  INISYN('/  1*P/  1');
  INISYN('/ R *P/ R ');
  INISYN('/  1*P/ R ');
  INISYN('/ R *P/  1');
  INISYN('/ R1*P/  1');
  INISYN('/  1*P/ R1');
  INISYN('/ R1*P/ R ');
  INISYN('/ R *P/ R1');
  INISYN('/KR *P/  1');
  INISYN('/  1*P/KR ');
  INISYN('/KR *P/ R ');
  INISYN('/ R *P/KR ');
  INISYN('/  1*P/KR1');
  INISYN('/KR1*P/  1');
  INISYN('  R *P/KR1');
  INISYN('/KR1*P/ R ');
  INISYN('/ R1*P/ R1');
  INISYN('/KR *P/ R1');
  INISYN('/ R1*P/KR ');
  INISYN('/KR *P/KR ');
  INISYN('/KR1*P/ R1');
  INISYN('/ R1*P/KR1');
  INISYN('/KR1*P/KR ');
  INISYN('/KR *P/KR1');
  INISYN('/KR1*P/KR1');

  INISYN('    -   R1');
  INISYN('    -  KR1');
  INISYN('/  1-   R1');
  INISYN('/ R -   R1');
  INISYN('/  1-  KR1');
  INISYN('/ R -  KR1');
  INISYN('/ R1-   R1');
  INISYN('/KR -   R1');
  INISYN('/ R1-  KR1');
  INISYN('/KR -  KR1');
  INISYN('/KR1-  KR1');

  (** INITIALIZE LETS *)

  FKPSHD := 10;
  FKSANQ := 150;
  FMAXMT := 256;
  FNODEL := 18;
  FPADCR[F1] := 0;
  FPADCR[F2] := 0;
  FPADCR[F3] := 5;
  FPADCR[F4] := 10;
  FPADCR[F5] := 15;
  FPADCR[F6] := 5;
  FPADCR[F7] := 0;
  FPADCR[F8] := 0;
  FPBLOK := 20;
  FPCONN := 5;
  FPFLNX := 12;
  FRDUBL := 60;
  FRK7TH := 120;
  FTRADE := 36;
  FTRDSL := 5156;
  FTRPDK := 2;
  FTRPWN := 8;
  FWKING := 50;
  FWMAJM := 1;
  FWMINM := 200;
  FWPAWN := 100;
  FWROOK := 2;
  WINDOW := 30;

  (** INITIALIZE SWITCHES *)

  SWEC := TRUE;
  SWPA := TRUE;
  SWPS := FALSE;
  SWRE := TRUE;
  SWSU := FALSE;
  SWTR := FALSE;

  (** INITIALIZE MAIN LOOP CONTROL VARIABLES *)

  GOING := 0;

END;  (* INICON *)


PROCEDURE INITAL(VAR A:RB);            (* INITIALIZE FOR A NEW GAME *)

VAR 
  INTF : TF;                           (* FILE INDEX *)
  INTR : TR;                           (* RANK INDEX *)

BEGIN
  WITH A DO
  BEGIN
    RBTM := LITE;                      (* SIDE TO MOVE *)
    RBTS := -1;                        (* NO ENPASSANT SQUARE *)
    RBTI := 0;                         (* GAME HAS NOT STARTED *)
    RBSQ := [LS,LL,DS,DL];             (* ALL CASTLING MOVES LEGAL *)
    FOR INTF := F1 TO F8 DO            (* LOOP THROUGH ALL FILES *)
      BEGIN
        RBIRF[R2,INTF] := LP;          (* SET LIGHT PAWNS ON BOARD *)
        FOR INTR := R3 TO R6 DO        (* LOOP THRU MIDDLE OF BOARD *)
          RBIRF[INTR,INTF] := MT;      (* SET MIDDLE OF BOARD EMPTY *)
        RBIRF[R7,INTF] := DP;          (* SET DARK PAWNS ON BOARD *)
      END;
    RBIRF[R1,F1] := LR;                (* SET REMAIMDER OF PIECES ON
                                          BOARD *)
    RBIRF[R1,F2] := LN;
    RBIRF[R1,F3] := LB;
    RBIRF[R1,F4] := LQ;
    RBIRF[R1,F5] := LK;
    RBIRF[R1,F6] := LB;
    RBIRF[R1,F7] := LN;
    RBIRF[R1,F8] := LR;
    RBIRF[R8,F1] := DR;
    RBIRF[R8,F2] := DN;
    RBIRF[R8,F3] := DB;
    RBIRF[R8,F4] := DQ;
    RBIRF[R8,F5] := DK;
    RBIRF[R8,F6] := DB;
    RBIRF[R8,F7] := DN;
    RBIRF[R8,F8] := DR;
    MOVMS := ' ENTER MOVE OR TYPE GO.       ';
    WRITELN(MOVMS);
    LSTMV := NULMV;                    (* INITIALIZE PREVIOUS MOVE *)
  END;
END;  (* INITAL *)


PROCEDURE PAUSER;                      (* PAUSE FOR CARRIAGE RETURN *)

BEGIN
  IF SWPA THEN
  BEGIN
    WRITELN(' PAUSING ');
    READLN;
  END;
END;  (* PAUSER *)


PROCEDURE PRIMOV(A:RM);                (* PRINT A MOVE *)

BEGIN
  WITH A DO
  BEGIN
    WRITE('   FROM   ',RMFR:2,'   TO   ',RMTO:2);
    IF NULMVB(A) THEN
      WRITE(',   NULL   MCVE')
    ELSE
    BEGIN
      IF RMCA THEN
        WRITE(', CAPTURE ',XTPC[RMCP],',')
      ELSE
        WRITE(', SIMPLE,');
      IF NOT RMAC THEN
        WRITE(' NO');
      WRITE(' ACS');
      IF RMCH THEN
        WRITE(', CHECK');
      IF RMMT THEN
        WRITE(',  MATE');
      IF RMIL THEN
        WRITE(', ILLEGAL');
      IF RMSU THEN
        WRITE(', SEARCHED');
      CASE RMPR OF
      FALSE:  (* NOT PROMOTION *)
        CASE RMOO OF
        FALSE:  (* NOT CASTLE *)
          IF RMEP THEN
            WRITE(', ENPASSANT');
        TRUE:  (* CASTLE *)
          BEGIN
            WRITE(', CASTLE ');
            IF RMQS THEN
              WRITE('LONG')
            ELSE WRITE('SHORT');
          END;
        END;
      TRUE:  (* PROMOTION *)
        BEGIN
          WRITE(', PROMOTE TO ');
          CASE RMPP OF
          PQ: WRITE('QUEEN');
          PR: WRITE('ROOK');
          PB: WRITE('BISHOP');
          PN: WRITE('KNIGHT');
          END;
        END;
      END;
    END;
  END;
  WRITELN('.');
END;  (* PRIMOV *)


PROCEDURE PRINTB(A:RC);                (* PRINT A BOARD *)

VAR 
  INTR : TR;                           (* RANK INDEX *)
  INTF : TF;                           (* FILE INDEX *)

BEGIN
  WRITELN;                             (* WRITE A BLANK LINE *)
  FOR INTR := R8 DOWNTO R1 DO          (* LOOP DOWN THROUGH RANKS *)
  BEGIN
    WRITE(' ',ORD(INTR)+1: 1,' ') ;    (* OUTPUT RANK LABEL *)
    FOR INTF := F1 TO F8 DO            (* LOOP ACROSS THROUGH FILES *)
      WRITE(XTPC[A[XTRFS[INTR,INTF]]]);
                                       (* OUTPUT CONTENTS OF SQUARE *)
      WRITELN;                         (* WRITE OUT A RANK *)
    END;
  WRITELN(' W RNBQKBNR') ;             (* WRITE OUT BOTTOM LABEL *)
END;  (* PRINTB *)


{PROCEDURE PRINBB(A:RS); unused [sam]} (* PRINT A BIT BOARD *)

{VAR} 
  {INTR : TR;}                         (* RANK INDEX *)
  {INTF : TF;}                         (* FILE INDEX *)

{BEGIN}
  {WRITELN;}                           (* WRITE OUT A BLANK LINE *)
  {FOR INTR := R8 DOWNTO R1 DO}        (* LOOP DOWN THROUGH RANKS *)
  {BEGIN}
    {WRITE(' ',ORD(INTR)+1: 1,' ');}   (* OUTPUT RANK LABEL *)
    {FOR INTF := F1 TO F8 DO}          (* LOOP ACROSS THROUGH FILES *)
      {WRITE(XTBC[INRSTB(A,XTRFS[INTR,INTF])]);}
                                       (* OUTPUT CONTENTS OF SQUARE *)
    {WRITELN;}                         (* WRITE OUT A RANK *)
  {END;}
  {WRITELN(' W RNBQKBNR');}            (* WRITE OUT BOTTOM LABEL *)
{END;}  (* PRINBB *)


PROCEDURE PRINAM(A:RX);                (* PRINT ATTACK MAP *)

VAR 
  INTR, JNTR : TR;                     (* RANK INDICES *)
  INTF, JNTF : TF;                     (* FILE INDICES *)

BEGIN
  WRITELN;
  FOR INTR := R8 DOWNTO R1 DO
  BEGIN
    FOR JNTR := R8 DOWNTO R1 DO
    BEGIN
      FOR INTF := F1 TO F8 DO
      BEGIN
        WRITE(' ');
        FOR JNTF := F1 TO F8 DO
        BEGIN
          WRITE(XTBC[INRSTB(A[XTRFS[INTR,INTF]],XTRFS[JNTR,JNTF])]);
        END;
        WRITE(' ');
      END;
      WRITELN;
    END;
    WRITELN;
    IF INTR IN [R1,R3,R5,R7] THEN PAUSER;
  END;
END;  (* PRINAM *)


PROCEDURE PRISWI(A:RA;B:TB);           (* PRINT A SWITCH *)

BEGIN
  WRITE(' ',A[AA],A[AA+1]);
  IF B THEN
    WRITELN(' ON')
  ELSE
    WRITELN(' OFF');
END;  (* PRISWI *)


PROCEDURE MBEVAL;                      (* EVALUATE MATERIAL BALANCE *)

VAR 
  INTI : TI;                           (* COUNT PAWNS OF WINNING SIDE *)

BEGIN
  IF MBLTE <> 0 THEN
    IF MBLTE > 0 THEN
      INTI := MBPWN[LITE]
    ELSE
      INTI := MBPWN[DARK]
  ELSE
    INTI := 0;
  MBVAL[JNTK] := SIGN(MIN(MIN(FMAXMT,ABS(MBLTE))
      +FTRADE*ABS(MBLTE)*(FTRDSL-MBTOT)*(4*INTI+FTRPDK)
      DIV (4*INTI+FTRPWN) DIV 262144,16320),MBLTE);
END;  (* MBEVAL *)


PROCEDURE MBCAPT                       (* EVALUATE MATERIAL AFTER
                                          CAPTURE *)
  (A:TP);                              (* PIECE CAPTURED *)

BEGIN
  MBTOT := MBTOT - ABS(XTPV[A]);       (* TOTAL MATERIAL ON BOARD *)
  IF XTPU[A] = EP THEN
    MBPWN[XTPM[A]] := MBPWN[XTPM[A]] - 1;
                                       (* REMOVE PAWN IF NECESSARY *)
  MBLTE := MBLTE - XTPV[A];            (* LITE ADVANTAGE *)
  MBEVAL;                              (* EVALUATE MATERIAL *)
END;  (* MBCAPT *)


PROCEDURE MBTPAC                       (* REMOVE CAPTURE FROM
                                          MATERIAL BALANCE DATA.  THIS
                                          IS THE INVERSE OF MBCAPT *)
  (A:TP);                              (* PIECE UNCAPTURED *)

BEGIN
  MBTOT := MBTOT + ABS(XTPV[A]);
  IF XTPU[A] = EP THEN
    MBPWN[XTPM[A]] := MBPWN[XTPM[A]] + 1;
  MBLTE := MBLTE + XTPV[A];
END;  (* MBTPAC *)


PROCEDURE MBPROM                       (* EVALUATE MATERIAL BALANCE
                                          CHANGE DUE TO PAWN
                                          PROMOTION *)
  (A:TP);                              (* PIECE TO PROMOTE TO *)

BEGIN
  MBTOT := MBTOT +  ABS(XTPV[A]-XTPV[XTUMP[EP,XTPM[A]]]);
                                       (* TOTAL MATERIAL ON BOARD *)
  MBPWN[XTPM[A]] := MBPWN[XTPM[A]] - 1;(* COUNT PAWNS *)
  MBLTE := MBLTE + XTPV[A]-XTPV[XTUMP[EP,XTPM[A]]] ;
  MBEVAL;                              (* EVALUATE RESULT *)
END;  (* MBPROM *)


PROCEDURE MBMORP                       (* REMOVE PAWN PROMOTION
                                          FROM  MATERIAL BALANCE DATA.
                                          THIS IS THE INVERSE
                                          OF MBPROM *)
  (A:TP);                               (* PIECE PROMOTED TO *)

BEGIN
  MBTOT := MBTOT - ABS(XTPV[A]-XTPV[XTUMP[EP,XTPM[A]]]);
  MBPWN[XTPM[A]] := MBPWN[XTPM[A]] + 1;
  MBLTE := MBLTE - (XTPV[A]-XTPV[XTUMP[EP,XTPM[A]]]);
END;  (* MBMORP *)


PROCEDURE ADDATK                       (* ADD ATTACKS OF PIECE TO DATA
                                          BASE *)
  (A:TS);                              (* SQUARE OF PIECE TO ADD
                                          ATTACK *)

VAR 
  INTB : TB;                           (* LOOP CONTROL BOOLEAN *)
  INTD :  TD;                          (* CURRENT DIRECTION FFSET *)
  INTE : TE;                           (* CURRENT DIRECTION INDEX *)
  INTM : TM;                           (* COLOR OF CURRENT PIECE *)
  INTP : TP;                           (* CURRENT PIECE *)
  INTT : TT;                           (* RUNNING SQUARE *)

BEGIN
  INTP := MBORD[A];                    (* PIECE OF INTEREST *)
  INTM := XTPM[INTP];                  (* COLOR *)
  FOR INTE := XFPE[INTP] TO XLPE[INTP] DO
  BEGIN
    INTT := A;                         (* INITIALIZE RUNNING SQUARE *)
    INTB := XSPB[INTP];                (* TRUE IF SWEEP PIECE *)
    INTD := XTED[INTE];                (* OFFSET *)
    REPEAT
      INTT := XTLS[XTSL[INTT] + INTD]; (* STEP IN PROPER DIRECTION *)
      IF INTT >= 0 THEN
      BEGIN
        SETRS(ATKFR[A],INTT);
        SETRS(ATKTO[INTT] ,A);
        SETRS(ALATK[INTM],INTT);
        IF MBORD[INTT] <> MT THEN
          INTB := FALSE;
      END
      ELSE
        INTB := FALSE;
    UNTIL NOT INTB;
  END;
END;  (* ADDATK *)


PROCEDURE ADDLOC                       (* ADD PIECE TO DATA BASE *)
  (A:TS;                               (* SQUARE WITH NEW PIECE ON IT *)
   B:TP);                              (* NEW PIECE TO ADD *)

BEGIN
  CLRRS(TPLOC[MT],A);                  (*  BIT BOARD OF EMPTY SQUARES *)
  SETRS(TPLOC[B],A);                   (*  BIT BOARD OF ALL SAME PIECE *)
  SETRS(TMLOC[XTPM[B]],A);             (*  SIT BOARD OF ALL SAME COLOR *)
  SETRS(ALLOC[JNTK],A);                (*  BIT BOARD OF ALL PIECES *)
  MBORD[A] := B;                       (*  SET NEW PIECE ON BOARD *)
END;  (* ADDLOC *)


PROCEDURE CLSTAT;                      (* CLEAR POSITION STATUS *)

BEGIN
  WITH BOARD DO
  BEGIN
    RBTM := LITE;                      (* WHITE TO MOVE *)
    RBTS := -1;                        (* NO ENPASSANT *)
    RBSQ := [];                        (* NO CASTLING LEGAL *)
  END;
END;  (* CLSTAT *)


PROCEDURE CUTATK                       (* CUT ATTACKS THROUGH SQUARE *)
  (A:TS);                              (* SQUARE *)

VAR 
  INRS : RS;                           (* ATTACKING PIECES *)
  INTS : TS;                           (* ATTACKING PIECE SQUARE *)
  IMRS : RS;                           (* SCRATCH *)
  INTD : TD;                           (* STEP SIZE *)
  INTM : TM;                           (* ATTACKING PIECE SIDE *)
  INTL : TL;                           (* NO LONGER ATTACKED SQUARE *)
  INTT : TT;                           (* NO LONGER ATTACKED SQUARE *)

BEGIN
  CPYRS(INRS,ATKTO[A]);                (* ALL PIECES ATTACKING SQUARE *)
  WHILE NXTTS(INRS,INTS) DO
    IF XSPB[MBORD[INTS]] THEN          (* IF SWEEP PIECE *)
    BEGIN
      INTD := XLLD[XTSL[A]-XTSL[INTS]];
                                       (* STEP SIZE ON 10X12 BOARD *)
      INTM := XTPM[MBORD[INTS]];       (* SIDE OF ATTACKING PIECE *)
      INTL := XTSL[A]+INTD;            (* FIRST SQUARE BEYOND PIECE *)
      INTT := XTLS[INTL];              (* FIRST SQUARE BEYOND PIECE ON
                                          8X8 BOARD *)
      WHILE INTT > AT DO               (* WHILE ON BOARD *)
      BEGIN
        CLRRS(ATKFR[INTS],INTT);       (* CLEAR ATTACK MAP *)
        CLRRS(ATKTO[INTT],INTS);
        ANDRS(IMRS,ATKTO[INTT],TMLOC[INTM]);
                                       (* OTHER ATTACKS ON SQUARE BY
                                          SAME SIDE *)
        IF NULRS(IMRS) THEN            (* IF NO ATTACKS BY THAT SIDE *)
          CLRRS(ALATK[INTM],INTT);     (* CLEAR ATTACKS BY SIDE *)
        IF MBORD[INTT] = MT THEN
        BEGIN
          INTL := INTL+INTD;           (* STEP BEYOND SQUARE *)
          INTT := XTLS[INTL];
        END
        ELSE
          INTT := AT;                  (* STOP SCAN *)
      END;
    END;
END;  (* CUTATK *)


PROCEDURE DELATK                       (* DELETE ATTACKS FROM SQUARE *)
  (A:TS);                              (* SQUARE TO REMOVE PIECE *)

VAR 
  INRS : RS;                           (* SQUARES ATTACKED BY PIECE ON
                                          SQUARE *)
  IMRS : RS;                           (* SCRATCH *)
  INTS : TS;                           (* SQUARE ATTACKEO BY PIECE ON
                                          SQUARE *)
  INTM : TM;                           (* SIDE OF PIECE ON SQUARE *)

BEGIN
  CPYRS(INRS,ATKFR[A]);                (* SQUARES ATTACKED BY PIECE
                                          ON SQUARE *)
  NEWRS(ATKFR[A]);                     (* CLEAR ATTACKS FROM SQUARE *)
  INTM := XTPM[MBORD[A]];              (* SIDE OF PIECE ON SQUARE *)
  WHILE NXTTS(INRS,INTS) DO            (* LOOP THROUGH ALL ATTACKS BY
                                          PIECE *)
  BEGIN
    CLRRS(ATKTO[INTS],A);              (* CLEAR ATTACK TO OTHER
                                          SQUARE *)
    ANDRS(IMRS,ATKTO[INTS],TMLOC[INTM]);
                                       (* OTHER ATTACKS BY SAME SIDE *)
    IF NULRS(IMRS) THEN
      CLRRS(ALATK[INTM],INTS);         (* CLEAR ATTACKS BY SIDE *)
    CLRRS(TPLOC[MBORD[A]],A);          (* CLEAR PIECE *)
    CLRRS(TMLOC[INTM],A);              (* CLEAR PIECE FROM SIDE *)
    CLRRS(ALLOC[JNTK],A);              (* CLEAR PIECE FROM ALL PIECES *)
    SETRS(TPLOC[MT],A);                (* SET EMPTY *)
    MBORD[A] :=  MT;
  END;
END;  (* DELATK *)


PROCEDURE PRPATK                       (* PROPAGATE ATTACKS THROUGH
                                          SQUARE *)
  (A:TS);                              (* SQUARE *)

VAR 
  INRS : RS;                           (* ATTACKING PIECES *)
  INTS : TS;                           (* ATTACKING PIECE SQUARE *)
  INTD : TD;                           (* STEP SIZE *)
  INTM : TM;                           (* ATTACKING PIECE SIDE *)
  INTL : TL;                           (* NEW ATTACKED SQUARE *)
  INTT : TT;                           (* NEW ATTACKEO SQUARE *)

BEGIN
  CPYRS(INRS,ATKTO[A]);                (* ALL PIECES ATTACKING SQUARE *)
  WHILE NXTTS(INRS,INTS) DO
    IF XSPB[MBORD[INTS]] THEN          (* IF SWEEP PIECE *)
    BEGIN
      INTD := XLLD[XTSL[A]-XTSL[INTS]];
                                       (* STEP SIZE ON 10X12 BOARD *)
      INTM := XTPM[MBORD[INTS]];       (* SIDE OF ATTACKING PIECE *)
      INTL := XTSL[A]+INTD;            (* FIRST SQUARE BEYOND PIECE *)
      INTT := XTLS[INTL];              (* FIRST  SQUARE  BEYONO PIECE ON
                                          8X8 BOARD *)
      WHILE INTT >= 0 DO               (* WHILE ON BOARD *)
        BEGIN
          SETRS(ATKFR[INTS],INTT);     (* SET ATTACK MAP *)
          SETRS(ATKTO[INTT],INTS);
          SETRS(ALATK[INTM],INTT);     (* SET ATTACKS BY SIDE *)
          IF MBORD[INTT] = MT THEN
          BEGIN
            INTL := INTL+INTD;         (* STEP BEYOND SQUARE *)
            INTT := XTLS[INTL];
          END
          ELSE
            INTT := -1;                (* STOP SCAN *)
        END;
    END;
END;  (* PRPATK *)


PROCEDURE GAINIT                       (* UNPROCESS CAPTURE MOVE *)
  (A:RM);                              (* CAPTURE MOVE *)

BEGIN
  WITH A DO
  BEGIN
    ADDLOC(RMFR,MBORD[RMTO]);          (* PUT PIECE ON ORIGINAL SQUARE *)
    ADDATK(RMFR);
    CUTATK(RMFR);                      (* STOP ATTACKS AT THIS SQUARE *)
    DELATK(RMTO);                      (* REMOVE THEM FROM
                                          DESTINATION SQUARE *)
    ADDLOC(RMTO,RMCP);                 (* REPLACE CAPTURED PIECE *)
    ADDATK(RMTO);
    MBTPAC(MBORD[RMTO]);               (* UPDATE SCORE *)
  END;
END;  (* GAINIT *)


PROCEDURE LOSEIT                       (* PROCESS CAPTURE MOVE *)
  (A:RM);                              (* CAPTURE MOVE *)

BEGIN
  WITH A DO
  BEGIN
    MBCAPT(MBORD[RMTO]);               (* UPDATE SCORE *)
    DELATK(RMTO);                      (* DELETE ATTACKS OF CAPTURED
                                          PIECE *)
    ADDLOC(RMTO,MBORD[RMFR]);          (* ADD PIECE TO DESTINATION
                                          SQUARE *)
    DELATK(RMFR);                      (* DELETE ATTACKS OF MOVING
                                          PIECE *)
    PRPATK(RMFR);                      (* PROPAGATE ATTACKS THROUGH
                                          FROM SQUARE *)
    ADDATK(RMTO);                      (* ADD ATTACKS OF MOVING PIECE *)
  END;
END;  (* LOSEIT *)


PROCEDURE MOVEIT                       (* PROCESS ORDINARY MOVE *)
  (A:RM);                              (* ORDINARY MOVE *)

BEGIN
  WITH A DO
  BEGIN
    ADDLOC(RMTO,MBORD[RMFR]);          (* ADD PIECE TO NEW SQUARE *)
    CUTATK(RMTO);                      (* CUT ATTACKS THROUGH NEW
                                          SQUARE *)
    DELATK(RMFR);                      (* DELETE ATTACKS FROM OLD
                                          SQUARE *)
    PRPATK(RMFR);                      (* PROPAGATE ATTACKS THROUGH OLD
                                          SQUARE *)
    ADDATK(RMTO);                      (* ADD ATTACKS FROM NEW SQUARE *)
  END;
END;  (* MOVEIT *)


PROCEDURE RTRKIT                       (* UNPROCESS ORDIMARY MOVE *)
  (A:RM);                              (* THE MOVE TO RETRACT *)

BEGIN
  WITH A DO
  BEGIN
    ADDLOC(RMFR,MBORD[RMTO]);          (* PUT PIECE ON ORIGINAL
                                           SQUARE *)
    CUTATK(RMFR);                      (* CUT ATTACKS THROUGH ORIGINAL
                                           SQUARE *)
    DELATK(RMTO);                      (* DELETE ATTACKS FROM
                                          DESTINATION SQUARE *)
    PRPATK(RMTO);                      (* PROPAGATE ATTACKS THROUGH
                                           DESTINATION SQUARE *)
    ADDATK(RMFR);                      (* ADD ATTACKS FROM ORIGINAL
                                          SQUARE *)
  END;
END;  (* RTRKIT *)


PROCEDURE PAWNIT                       (* UNPROMOTE A PAWN *)
  (A:RM);                              (* PROMOTION MOVE *)

BEGIN
  WITH A DO
  BEGIN
    MBMORP(MBORD[RMTO]);               (* UPDATE SCORE *)
      MBORD[RMTO] := XTUMP[EP,XTPM[MBORD[RMTO]]];
  END;
END;  (* PAWNIT *)


PROCEDURE PROACA                       (* PROCESS CASTLE STATUS CHANGES *)
  (A:TS);                              (* SQUARE *)

VAR
  INRS : RS;                           (* SCRATCH *)
  IMRS : RS;                           (* SCRATCH *)

BEGIN
  CLRRS(CSTAT[JNTK],A);                (* CLEAR THIS SQUARE *)
  ANDRS(INRS,CSTAT[JNTK],XRRS[XTSR[A]]);
                                       (* CASTLE BITS FOR THIS SIDE *)
  IF NOT INRSTB(INRS,XTRFS[XTSR[A],F5]) THEN
                                       (* IF KING MOVE *)
    ANDRS(CSTAT[JNTK],CSTAT[JNTK],XNRS[XTSR[A]]);
                                       (* CLEAR ALL CASTLE MOVES FOR
                                          SIDE *)
  ANDRS(IMRS,INRS,XRFS[F8]);           (* KING ROOK SQUARE *)
  ANDRS(INRS, INRS ,XRFS[F1]);         (* QUEEN ROOK SQUARE *)
  IORRS(INRS,INRS,IMRS);               (* BOTH ROOK SQUARES *)
  IF NULRS(INRS) THEN                  (* IF BOTH ROOKS GONE *)
    ANDRS(CSTAT[JNTK],CSTAT[JNTK],XNRS[XTSR[A]]);
END;  (* PROACA *)


PROCEDURE PROACS                       (* PROCESS MOVES AFFECTING CASTLE
                                          STATUS *)
  (A:RM);                              (* MOVE WITH RMAC *)

BEGIN
  WITH A DO
  BEGIN
    IF INRSTB(CSTAT[JNTK],RMFR) THEN   (* FROM SQUARE *)
      PROACA(RMFR);
    IF INRSTB(CSTAT[JNTK],RMTO) THEN   (* TO SQUARE *)
      PROACA(RMTO);
  END;
END;  (* PROACS *)


PROCEDURE PROMOT                       (* PROCESS PROMOTION *)
  (A: RM);                             (* PROMOTION MOVE *)

BEGIN
  WITH A DO
  BEGIN
    MBPROM(XTGMP[RMPP,JNTM]);          (* UPDATE SCORE *)
    MBORD[RMFR] := XTGMP[RMPP,JNTM];
  END;
END;  (* PROMOT *)


PROCEDURE CREATE;                      (* CREATE GLOBAL DATA BASE *)

VAR 
  INRS : RS;                           (* SCRATCH BIT BOARD *)
  INTM : TM;                           (* COLOR INDEX *)
  INTP : TP;                           (* PIECE INDEX *)
  INTQ : TQ;                           (* CASTLE TYPE INDEX *)
  INTS : TS;                           (* SQUARE INDEX *)

BEGIN
  WITH BOARD DO
  BEGIN
    JNTW := AW+1;                      (* INITIALIZE MOVES STACK
                                          POINTER *)
    JNTK := AK;                        (* PLY INDEX *)
    JNTM := RBTM;                      (* SIDE TO MOVE *)

    NODES := 0;                        (* INITIALIZE TOTAL NODES *)

    LINDX[JNTK] := JNTW;               (* MOVES ARRAY LIMIT *)
    SRCHM[JNTK] := H0;                 (* SEARCH MODE *)

    FOR INTS := AS TO ZS DO
    BEGIN
      NEWRS(ATKFR[INTS]);              (* CLEAR ATTACKS FROM *)
      NEWRS(ATKTO[INTS]);              (* CLEAR ATTACKS TO *)
      MBORD[INTS] := MT;               (* CLEAR LOOKAHEAD BOARD *)
    END;

    NEWRS(ALLOC[JNTK]);                (* CLEAR ALL PIECE LOCATIONS *)

    FOR INTP := LP TO MT DO
      NEWRS(TPLOC[INTP]);              (* CLEAR PIECE LOCATIONS *)

    FOR INTM := LITE TO NONE DO
    BEGIN
      NEWRS(TMLOC[INTM]);              (* CLEAR COLOR LOCATIONS *)
      NEWRS(ALATK[INTM]);              (* CLEAR COLOR ATTACKS *)
    END;

    MBTOT := 0;
    MBPWN[LITE] := 0;
    MBPWN[DARK] := 0;
    MBLTE := 0;
    FOR INTS := AS TO ZS DO
      IF RBIS[INTS] <> MT THEN
      BEGIN
        ADDLOC(INTS,RBIS[INTS]);
        MBTPAC(RBIS[INTS]);
      END
      ELSE
        SETRS(TPLOC[MT],INTS);

    MBEVAL;                            (* EVALUATE MATERIAL *)

    CPYRS(INRS,ALLOC[JNTK]);           (* COPY BIT BOARD OF ALL
                                          PIECES *)
    WHILE NXTTS(INRS,INTS) DO
      ADDATK(INTS);                    (* ADD ATTACKS OF ALL PIECES *)

    NEWRS(CSTAT[JNTK]);                (* INITIALIZE CASTLING SQUARES *)
    FOR INTQ := LS TO DL DO
      IF INTQ IN RBSQ THEN
        IORRS(CSTAT[JNTK],CSTAT[JNTK],XSQS[INTQ]);

    NEWRS(ENPAS[JNTK]);                (* INITIALIZE ENPASSANT SQUARE *)
    IF RBTS >= 0 THEN
      SETRS(ENPAS[JNTK],RBTS);

    CPYRS(GENPN[JNTK],TPLOC[XTUMP[EP,JNTM]]);
    NOTRS(GENTO[JNTK],TMLOC[JNTM]);
    NOTRS(INRS,GENPN[JNTK]);
    ANDRS(GENFR[JNTK],TMLOC[JNTM],INRS);
  END;
END;  (* CREATE *)


PROCEDURE DNDATE                       (* DOWNOATE DATA BASE TO BACK
                                          OUT A MOVE *)
  (A: RM);                             (* THE MOVE TO RETRACT   *)

VAR 
  INTS : TS;                            (* SCRATCH *)
  INTR : TR;                            (* ROOK RANK FOR CASTLING *)
  INTF : TF;                            (* ROOK FILE FOR CASTLING *)
  RKFR : TS;                            (* ROOK FROM SQUARE *)
  RKTO : TS;                            (* ROOK TO SQUARE *)

BEGIN
  WITH A DO
  BEGIN
    CASE ORD(RMCA)*4 + ORD(RMAC)*2 + ORD(RMPR) OF
      0:  (* ORDINARY MOVE *)
         RTRKIT(A);
      1:  (* PAWN MOVE AND PROMOTE *)
         BEGIN
           PAWNIT(A);
           RTRKIT(A);
         END;
      2:  (* MISCELLANEOUS ACS *)
         IF RMOO THEN
         BEGIN  (* CASTLE *)
           IF RMQS THEN
             INTF := F1                (* ROOK ON QUEEN ROOK FILE *)
           ELSE
             INTF := F8;               (* ROOK ON KING ROOK FILE *)
           INTR := XTSR[RMFR];         (* ROOK FILE *)
           RKFR := XTRFS[INTR,INTF];   (* ROOK FROM SQUARE *)
           RKTO := (RMFR+RMTO) DIV 2;  (* ROOK TO SQUARE *)
           ADDLOC(RKFR,MBORD[RKTO]);   (* REPLACE ROOK *)
           DELATK(RKTO);
           PRPATK(RKTO);
           ADDATK(RKFR);
           RTRKIT(A);                  (* RETRACT KING MOVE *)
         END
         ELSE  (* NOT CASTLE *)
           RTRKIT(A);
      3:; (* NULL MOVE *)
      4:  (* CAPTURE *)
         IF RMEP THEN
         BEGIN  (* CAPTURE ENPASSANT *)
           INTS := XTRFS[XTSR[RMFR],XTSF[RMTO]];
           ADDLOC(INTS,RMCP);
           CUTATK(INTS);
           ADDATK(INTS);
           RTRKIT(A);                  (* RETRACT PAWN MOVE *)
           MBTPAC(MBORD[INTS]);        (* ADD PIECE TO SCORE *)
         END
         ELSE  (* CAPTURE NOT ENPASSANT *)
           GAINIT(A);
      5:  (* CAPTURE AND PROMOTE *)
         BEGIN
           PAWNIT(A);                  (* UNPROMOTE *)
           GAINIT(A);                  (* UNCAPTURE *)
         END;
      6:  (* CAPTURE ACS *)
           GAINIT(A);                  (* UNCAPTURE *)
      7:  (* CAPTURE ROOK ACS, PROMOTE *)
         BEGIN
           PAWNIT(A);
           GAINIT(A);
         END;
    END;
    JNTW := LINDX[JNTK];               (* RESET MOVE GENERATION
                                          POINTER *)
    JNTK := JNTK-1;                    (* BACK UP PLY INDEX *)
    JNTM := OTHER[JNTM];               (* SWITCH SIDE TO MOVE *)
  END;
END;  (* DNDATE *)


FUNCTION UPDATE                        (* UPDATE DATA BASE FOR A MOVE *)
  (VAR A:RM)                           (* THE MOVE *)
   :TB;                                (* RETURNS TRUE IF MOVE IS
                                          LEGAL *)

VAR 
  INRS : RS;                           (* SCRATCH *)
  IMRS : RS;                           (* SCRATCH *)
  INTS : TS;                           (* SCRATCH *)
  INTF : TF;                           (* ROOK FILE FOR CASTLING *)
  INTR : TR;                           (* ROOK RANK FOR CASTLING *)
  RKTO : TS;                           (* ROOK DESTINATION SQUARE *)
  RKFR : TS;                           (* ROOK ORIGIN SQUARE *)

BEGIN
  WITH A DO
  BEGIN
    JNTK := JNTK+1;                    (* AOVANCE PLY INDEX *)
    NEWRS(ENPAS[JNTK]);                (* CLEAR ENPASSANT BIT BOARD *)
    CPYRS(CSTAT[JNTK],CSTAT[JNTK-1]);  (* INITIALIZE CASTLE STATUS *)
    CPYRS(ALLOC[JNTK],ALLOC[JNTK-1]);  (* INITIALIZE ALL LOCATIONS *)
    MBVAL[JNTK] := MBVAL[JNTK-1];      (* INITIALIZE MATERIAL SCORE *)
    LINDX[JNTK] := JNTW;               (* MOVES ARRAY LIMIT *)
    CASE ORD(RMCA)*4 + ORD(RMAC)*2 + ORD(RMPR) OF
      0:  (* ORDINARY MOVE *)
         IF RMEP THEN
         BEGIN                         (* PAWN MOVE 2 SPACES *)
           SFTRS(INRS,XRSS[RMTO],S1);
           SFTRS(IMRS,XRSS[RMTO],S3);
           IORRS(INRS,INRS,IMRS);      (* SQUARES NEXT TO DESTINATION *)
           ANDRS(INRS,INRS,TPLOC[XTUMP[EP,OTHER[JNTM]]]);
                                       (* INTERSECT WITH ENEMY PAWNS *)
           IF NOT NULRS(INRS) THEN
             SETRS(ENPAS[JNTK],(RMTO+RMFR) DIV 2);
                                       (* SET ENPASSANT SQUARE *)
          MOVEIT(A);                   (* MOVE PAWN *)
         END
           ELSE
             MOVEIT(A);                (* MOVE PIECE *)
      1:  (* MOVE AND PROMOTE *)
         BEGIN
           PROMOT(A);                  (* PROMOTE PAWN *)
           MOVEIT(A);                  (* MOVE PROMOTED PIECE *)
         END;
      2: (* MISCELLANEOUS ACS *)
         BEGIN
           IF RMOO THEN
           BEGIN  (* CASTLE *)
             IF RMQS THEN
               INTF := F1              (* ROOK ON QUEEN ROOK FILE *)
             ELSE
               INTF := F8;             (* ROOK ON KING ROOK FILE *)
             INTR := XTSR[RMFR];       (* ROOK ON KINGS RANK *)
             RKFR := XTRFS[INTR,INTF]; (* ROOK ORIGIN SQUARE *)
             RKTO := (RMFR+RMTO) DIV 2;(* ROOK DESTINATION SQUARE *)
             ANDRS(CSTAT[JNTK],CSTAT[JNTK] ,XNRS[INTR]);
                                        (* DISALLOW FURTHER CASTLING
                                           BY THIS SIDE *)
             ADDLOC(RKTO,MBORD[RKFR]); (* PUT ROOK ON NEW SQUARE *)
             ADDATK(RKTO);             (* ADD ITS ATTACKS *)
             DELATK(RKFR);             (* DELETE FROM ORIGINAL SQUARE *)
             MOVEIT(A);                (* MOVE KING *)
           END
           ELSE  (* NOT CASTLE *)
             BEGIN
               PROACS(A);              (* PROCESS CASTLE STATUS MODS *)
               MOVEIT(A);              (* MOVE TO OR FROM KING OR ROOK
                                          SQUARE *)
             END;
         END;
      3:;  (* NULL MOVE *)
      4:  (* CAPTURE *)
         IF RMEP THEN
         BEGIN  (* CAPTURE ENPASSANT *)
           INTS := XTRFS[XTSR[RMFR],XTSF[RMTO]];
                                       (* CAPTURED PAWN SQUARE *)
           MBCAPT(MBORD[INTS]);        (* UPDATE SCORE *)
           DELATK(INTS);               (* DELETE CAPTURED PAWN ATTACKS *)
           PRPATK(INTS);               (* PROPAGATE ATTACKS THROUGH PAWN *)
           MOVEIT(A);                  (* MOVE CAPTURING PAWN *)
         END
         ELSE  (* CAPTURE NOT ENPASSANT *)
           LOSEIT(A);                  (* PROCESS CAPTURE *)
      5:  (* CAPTURE AND PROMOTE *)
         BEGIN
           PROMOT(A);                  (* PROMOTE PAWN *)
           LOSEIT(A);                  (* PROCESS CAPTURE WITH PROMOTED
                                          PIECE *)
         END;
      6:  (* CAPTURE ACS *)
         BEGIN
           PROACS(A);                  (* PROCESS CASTLE STATUS MODS *)
           LOSEIT(A);                  (* PROCESS ROOK CAPTURE *)
         END;
      7:  (* CAPTURE ROOK ACS, PROMOTE *)
         BEGIN
           PROMOT(A);                  (* PROMOTE PAWN *)
           PROACS(A);                  (* CHANGE CASTLE STATUS *)
           LOSEIT(A);                  (* PROCESS ROOK CAPTURE *)
         END;
  END;

  (* INITIALIZE MOVE GENERATION *)

  JNTM := OTHER[JNTM];                 (* SWITCH SIDE TO MOVE *)
  CPYRS(GENPN[JNTK],TPLOC[XTUMP[EP,JNTM]]);
  NOTRS(GENTO[JNTK],TMLOC[JNTM]);
  NOTRS(INRS,GENPN[JNTK]);
  ANDRS(GENFR[JNTK],TMLOC[JNTM],INRS);

  (* DETERMINE IF MOVE LEAVES KING IN CHECK, OR MOVES
     KING INTO CHECK *)
  ANDRS(INRS,TPLOC[XTUMP[EK,JNTM]],ALATK[OTHER[JNTM]]);
  RMCH := NOT NULRS(INRS);
  ANDRS(INRS,TPLOC[XTUMP[EK,OTHER[JNTM]]],ALATK[JNTM]);
  RMIL := NOT NULRS(INRS);
  UPDATE := NOT RMIL;
  IF NOT RMIL THEN                     (* COUNT LEGAL MOVES *)
    MVSEL[JNTK-1] := MVSEL[JNTK-1] + 1;

  (* INITIALIZE MOVE SEARCHING *)
  SRCHM[JNTK] := H1;
  NODES := NODES+1;                    (* COUNT NODES SEARCHED *)
  END;
END;  (* UPDATE *)


PROCEDURE GENONE                       (* STACK ONE GENERATED MOVE *)
  (A:TT;                               (* FROM SQUARE *)
   B:TS);                              (* TO SQUARE *)

VAR 
  INRS : RS;                           (* SCRATCH *)

BEGIN
  WITH MOVES[JNTW] DO
  BEGIN
    RMFR := A;                         (* FROM SQUARE *)
    RMTO := B;                         (* TO SQUARE *)
    RMCP := MBORD[B];                  (* CAPTURED PIECE *)
    RMCA := (MBORD[B] <> MT);          (* CAPTURE *)
    IORRS(INRS,XRSS[A],XRSS[B]);
    ANDRS(INRS,INRS,CSTAT[JNTK]);
    RMAC := NOT NULRS(INRS);           (* AFFECTS CASTLE STATUS *)
    RMCH := FALSE;                     (* CHECK *)
    RMMT := FALSE;                     (* MATE *)
    RMIL := FALSE;                     (* ILLEGAL *)
    RMSU := FALSE;                     (* SEARCHED *)
    RMPR := FALSE;                     (* PROMOTION *)
    RMOO := FALSE;                     (* CASTLE *)
    RMEP := FALSE;                     (* ENPASSANT *)
  END;
  VALUE[JNTW] := 0;                    (* CLEAR VALUE *)
  IF JNTW < ZW THEN
    JNTW := JNTW+1;                    (* ADVANCE MOVES STACK POINTER *)
END;  (* GENONE *)


PROCEDURE PWNPRO;                      (* GENERATE ALL PROMOTION MOVES *)

VAR 
  INTG : TG;                           (* PROMOTION TYPE *)

BEGIN
  MOVES[JNTW-1].RMPR := TRUE;          (* SET PROMOTION *)
  MOVES[JNTW-1].RMPP := PQ;            (* PROMOTE TO QUEEN FIRST *)
  FOR INTG := PR TO PB DO              (* GENERATE OTHER PROMOTIONS *)
  BEGIN
    MOVES[JNTW] := MOVES[JNTW-1];      (* COPY LAST MOVE *)
    MOVES[JNTW].RMPP := INTG;          (* CHANGE PROMOTE TO PIECE *)
    JNTW := JNTW+1;                    (* ADVANCE MOVE INDEX *)
  END;
END;  (* PWNPRO *)


PROCEDURE GENPWN                       (* GENERATE PAWN MOVES *)
 (A:RS;                                (* PAWNS TO MOVE *)
  B:RS);                               (* VALID DESTINATION SQUARES *)

VAR 
  INRS, IMRS : RS;                     (* SCRATCH *)
  INTS : TS;                           (* DESTINATION SQUARE *)

BEGIN
  IF JNTM = LITE THEN
  BEGIN                                (* WHITE PAMWS *)
    SFTRS(INRS,A,S2);                  (* AOVANCE ONE RANK *)
    ANDRS(INRS,TPLOC[MT],INRS);        (* ONLY TO EMPTY SQUARES *)
    CPYRS(IMRS,INRS);                  (* SAVE FOR 2 SQUARE MOVES *)
    ANDRS(INRS,B,INRS);                (* ONLY VALID DESTINATION SQUARES *)
    WHILE NXTTS(INRS,INTS) DO
    BEGIN
      GENONE(XTLS[XTSL[INTS]-XTED[S2]],INTS);
                                       (* GENERATE SIMPLE PAWN MOVES *)
      IF INTS >= XTRFS[R8,F1] THEN
        PWNPRO;                        (* PROCESS PROMOTION *)
    END;
    ANDRS(INRS,IMRS,XRRS[R3]);         (* TAKE ONLY PAWNS ON THIRD *)
    SFTRS(INRS,INRS,S2);               (* AOVANCE ONE MORE RANK *)
    ANDRS(INRS, INRS, TPLOC[MT]);      (* ONLY TO EMPTY SQUARES *)
    ANDRS(INRS,INRS,B);                (* ONLY VALID DESTINATION SQUARES *)
    WHILE NXTTS(INRS,INTS) DO
    BEGIN
      GENONE(XTLS[XTSL[INTS]-2*XTED[S2]],INTS);
                                       (* GENERATE DOUBLE PAWN MOVES *)
      MOVES[JNTW-1].RMEP := TRUE;      (* FLAG AS TWO SQUARES *)
    END;
    SFTRS(INRS,A,B1);                  (* TRY CAPTURES TO THE LEFT *)
    IORRS(IMRS,TMLOC[OTHER[JNTM]],ENPAS[JNTK]);
                                       (* OPPONENT PIECES + EP SQUARE *)
    ANDRS(IMRS,IMRS,B);                (* VALID DESTINATION SQUARES *)
    ANDRS(INRS, INRS, IMRS) ;          (* CAPTURE MOVES TO LEFT *)
    WHILE NXTTS(INRS,INTS) DO
    BEGIN
      GENONE(XTLS[XTSL[INTS]-XTED[B1]],INTS);
                                       (* GENERATE CAPTURE MOVE *)
      MOVES[JNTW-1].RMCA := TRUE;      (* FLAG CAPTURE *)
      MOVES[JNTW-1].RMEP := INRSTB(ENPAS[JNTK],INTS);
                                       (* FLAG ENPASSANT CAPTURE *)
      IF MOVES[JNTW-1].RMEP THEN
        MOVES[JNTW-1].RMCP := DP;      (* SET CAPTURED PIECE TYPE *)
      IF INTS >= XTRFS[R8,F1] THEN
        PWNPRO;                        (* PROCESS PROMOTION *)
    END;
    SFTRS(INRS,A,B2);                  (* TRY CAPTURES TO THE RIGHT *)
    IORRS(IMRS,TMLOC[OTHER[JNTM]],ENPAS[JNTK]);
                                       (* OPPONENT PIECES + EP SQUARE *)
    ANDRS(IMRS,IMRS,B);                (* VALID DESTINATION SQUARES *)
    ANDRS(INRS,INRS,IMRS);             (* CAPTURE MOVES TO LEFT *)
    WHILE NXTTS(INRS,INTS) DO
    BEGIN
      GENONE(XTLS[XTSL[INTS]-XTED[B2]],INTS);
                                       (* GENERATE CAPTURE MOVE *)
      MOVES[JNTW-1].RMCA := TRUE;      (* FLAG CAPTURE *)
      MOVES[JNTW-1].RMEP := INRSTB(ENPAS[JNTK],INTS);
                                       (* FLAG ENPASSANT CAPTURE *)
      IF MOVES[JNTW-1].RMEP THEN
        MOVES[JNTW-1].RMCP := DP;      (* SET CAPTURED PIECE TYPE *)
      IF INTS >= XTRFS[R8,F1] THEN
        PWNPRO;                        (* PROCESS PROMOTION *)
    END;
  END
  ELSE
  BEGIN                                (* BLACK PAWNS *)
    SFTRS(INRS,A,S4);                  (* ADVANCE ONE RANK *)
    ANDRS(INRS,TPLOC[MT],INRS);        (* ONLY TO EMPTY SQUARES *)
    CPYRS(IMRS,INRS);                  (* SAVE FOR 2 SQUARE MOVES *)
    ANDRS(INRS,B,INRS);                (* ONLY VALID DESTINATION SQUARES *)
    WHILE NXTTS(INRS,INTS) DO
    BEGIN
      GENONE(XTLS[XTSL[INTS]-XTED[S4]],INTS);
                                       (* GENERATE SIMPLE PAWN MOVES *)
      IF INTS <= XTRFS[R1,F8] THEN
        PWNPRO;                        (* PROCESS PROMOTION *)
    END;
    ANDRS(INRS,IMRS,XRRS[R6]);         (* TAKE ONLY PAWNS ON THIRD *)
    SFTRS(INRS,INRS,S4);               (* ADVANCE ONE MORE RANK *)
    ANDRS(INRS,INRS,TPLOC[MT]);        (* ONLY TO EMPTY SQUARES *)
    ANDRS(INRS,INRS,B);                (* ONLY VALID DESTINATION SQUARES *)
    WHILE NXTTS(INRS,INTS) DO
    BEGIN
      GENONE(XTLS[XTSL[INTS]-2*XTED[S4]],INTS);
                                       (* GENERATE DOUBLE PAWN MOVES *)
      MOVES[JNTW-1].RMEP := TRUE;      (* FLAG AS TWO SQUARES *)
    END;
    SFTRS(INRS,A,B3);                  (* TRY CAPTURES TO THE LEFT *)
    IORRS(IMRS,TMLOC[OTHER[JNTM]],ENPAS[JNTK]);
                                       (* OPPONENT PIECES + EP SQUARE *)
    ANDRS(IMRS,IMRS,B);                (* VALID DESTINATION SQUARES *)
    ANDRS(INRS,INRS,IMRS);             (* CAPTURE MOVES TO LEFT *)
    WHILE NXTTS(INRS,INTS) DO
    BEGIN
      GENONE(XTLS[XTSL[INTS]-XTED[B3]],INTS);
                                       (* GENERATE PAWN CAPTURE MOVE *)
      MOVES[JNTW-1].RMCA := TRUE;      (* FLAG CAPTURE *)
      MOVES[JNTW-1].RMEP := INRSTB(ENPAS[JNTK],INTS);
                                       (* FLAG ENPASSANT CAPTURE *)
      IF MOVES[JNTW-1].RMEP THEN
        MOVES[JNTW-1].RMCP := LP;      (* SET CAPTURED PIECE TYPE *)
      IF INTS <= XTRFS[R1,F8] THEN
        PWNPRO;                        (* PROCESS PROMOTION *)
    END;
    SFTRS(INRS,A,B4);                  (* TRY CAPTURES TO THE RIGHT *)
    IORRS(IMRS,TMLOC[OTHER[JNTM]],ENPAS[JNTK]);
                                       (* OPPONENT PIECES + EP SQUARE *)
    ANDRS(IMRS,IMRS,B);                (* VALID DESTINATION SQUARES *)
    ANDRS(INRS,INRS,IMRS);             (* CAPTURE MOVES TO LEFT *)
    WHILE NXTTS(INRS,INTS) DO
    BEGIN
      GENONE(XTLS[XTSL[INTS]-XTED[B4]],INTS);
                                       (* GENERATE PAWN CAPTURE MOVE *)
      MOVES[JNTW-1].RMCA := TRUE;      (* FLAG CAPTURE *)
      MOVES[JNTW-1].RMEP := INRSTB(ENPAS[JNTK],INTS) ;
                                       (* FLAG ENPASSANT CAPTURE *)
      IF MOVES[JNTW-1].RMEP THEN
        MOVES[JNTW-1].RMCP := LP;      (* SET CAPTURED PIECE TYPE *)
      IF INTS <= XTRFS[R1,F8] THEN
        PWNPRO;                        (* PROCESS PROMOTION *)
    END;
  END;
END;  (* GENPWN *)


PROCEDURE GENFSL                       (* GENERATE ALL MOVES FROM
                                          A SET OF SQUARES *)
  (A:RS);                              (* ORIGIN SET OF SQUARES *)

VAR 
  INRS : RS;                           (* OUTER LOOP BIT BOARD *)
  IMRS : RS;                           (* INNER LOOP BIT BOARD *)
  IPRS : RS;                           (* PAWN ORIGIN BIT BOARD *)
  INTS : TS;                           (* OUTER LOOP SQUARE NUMBER *)
  IMTS : TS;                           (* INNER LOOP SQUARE NUMBER *)

BEGIN
  ANDRS(INRS,A,GENFR[JNTK]);           (* ONLY VALID FROM SQUARES *)
  NOTRS(IMRS,A);
  ANDRS(GENFR[JNTK],GENFR[JNTK],IMRS); (* REMOVE ORIGIN SQUARES *)
  ANDRS(IPRS,A,GENPN[JNTK]);           (* VALID PAWN FROM SQUARES *)
  ANDRS(GENPN[JNTK],GENPN[JNTK],IMRS); (* REMOVE PAWNS *)
  WHILE NXTTS(INRS, INTS) DO           (* LOOP THROUGH ORIGINS *)
  BEGIN
    ANDRS(IMRS,ATKFR[INTS],GENTO[JNTK]);
                                       (* GET UNPROCESSED DESTINATION
                                          SQUARES *)
    WHILE NXTTS(IMRS,IMTS) DO          (* LOOP THROUGH DESTINATIONS *)
      GENONE(INTS,IMTS);               (* GENERATE MOVE *)
  END;
  GENPWN(IPRS,GENTO[JNTK]);            (* GENERATE PAWN MOVES *)
END;  (* GENFSL *)


PROCEDURE GENTSL                       (* GENERATE ALL MOVES TO A
                                          SET OF SQUARES *)
  (A:RS);                              (* TARGET SET OF SQUARES *)

VAR 
  INRS : RS;                           (* OUTER LOOP BIT BOARD *)
  IMRS : RS;                           (* INNER LOOP BIT BOARD *)
  IPRS : RS;                           (* BIT BOARD *)
  IMTS : TS;                           (* OUTER LOOP SQUARE NUMBER *)
  INTS : TS;                           (* INNER LOOP SQUARE NUMBER *)

BEGIN
  ANDRS(INRS,A,GENTO[JNTK]);           (* ONLY VALID TO SQUARES *)
  NOTRS(IMRS,A);
  ANDRS(GENTO[JNTK],GENTO[JNTK],IMRS); (* REMOVE DESTINATION SQUARES *)
  CPYRS(IPRS,INRS);                    (* SAVE FOR PAWN MOVES *)
  WHILE NXTTS(INRS,INTS) DO            (* LOOP THROUGH DESTINATIONS *)
  BEGIN
    ANDRS(IMRS,ATKTO[INTS],GENFR[JNTK]);
                                       (* GET PIECES OF SIDE TO MOVE *)
    WHILE NXTTS(IMRS,IMTS) DO          (* LOOP THROUGH ORIGINS *)
    GENONE(IMTS,INTS);                 (* GENERATE MOVE *)
  END;
  GENPWN(GENPN[JNTK],IPRS);            (* GENERATE PAWN MOVES *)
END;  (* GENTSL *)


PROCEDURE GENCAP;                      (* GENERATE CAPTURE MOVES *)

VAR 
  INRS : RS;                           (* DESTINATION SQUARES *)

BEGIN
  IORRS(INRS,ENPAS[JNTK],TMLOC[OTHER[JNTM]]);
  GENTSL(INRS);                        (* GENERATE MOVES TO
                                          ENEMY SQUARES *)
END;  (* GENCAP *)


PROCEDURE GENCAS;                      (* GENERATE CASTLE MOVES *)

VAR 
  INTQ : TQ;                           (* CASTLE TYPE INDEX *)
  INRS : RS;                           (* OCCUPIED SQUARES TEST *)
  IMRS : RS;                           (* ATTACKED SQUARES TEST *)

BEGIN
  FOR INTQ := XTMQ[JNTM] TO SUCC(XTMQ[JNTM]) DO
    IF INRSTB(CSTAT[JNTK],XTQS[INTQ]) THEN
                                       (* IF CASTLING IS LEGAL *)
    BEGIN
      ANDRS(INRS,XRQSO[INTQ],ALLOC[JNTK]);
                                       (* CHECK OCCUPIED SQUARES *)
      ANDRS(IMRS,XRQSA[INTQ],ALATK[OTHER[JNTM]]);
                                       (* CHECK ATTACKED SQUARES *)
      IF NULRS(INRS) AND NULRS(IMRS) THEN
                                       (* IF CASTLING IS LEGAL AND
                                          POSSIBLE *)
      BEGIN
        MOVES[JNTW] := XRQM[INTQ];     (* GENERATE CASTLING MOVE *)
        VALUE[JNTW] := 0;
        JNTW := JNTW+1;
      END;
    END;
END;  (* GENCAS *)


PROCEDURE GENALL;                      (* GENERATE ALL LEGAL MOVES *)

BEGIN
  GENFSL(ALLOC[JNTK]);                 (* GENERATE SIMPLE MOVES *)
  GENCAS;                              (* GENERATE CASTLE MOVES *)
END;  (* GENALL *)


PROCEDURE LSTMOV;                      (* LIST LEGAL PLAYERS MOVES *)

VAR 
  INTW : TW;                           (* MOVES INDEX *)

BEGIN
  CREATE;                              (* CREATE DATA BASE *)
  GENALL;                              (* GENERATE ALL MOVES *)
  FOR INTW := AW+1 TO JNTW-1 DO
  BEGIN
    IF UPDATE(MOVES[INTW]) THEN;        (* SET ILLEGAL FLAG *)
    DNDATE(MOVES[INTW]);
  END;
END;  (* LSTMOV *)


PROCEDURE THEMOV                       (* MAKE THE MOVE FOR REAL *)
  (A:RM);                              (* THE MOVE TO MAKE *)

VAR 
  INTB : TB;                           (* SCRATCH *)
  INRS : RS;                           (* SCRATCH *)
  INTQ : TQ;                           (* CASTLE TYPE INDEX *)
  INTS : TS;                           (* SCRATCH *)

BEGIN
  LSTMV := A;                          (* SAVE AS PREVIOUS MOVE *)
  INTB := UPDATE(A);                   (* UPDATE THE DATA BASE *)
  WITH BOARD DO                        (* AND COPY ALL THE RELEVANT DATA
                                          BACK DONN *)
  BEGIN
    RBTM := JNTM;                      (* SIDE TO MOVE *)
    CPYRS(INRS,ENPAS[JNTK]);
    IF NXTTS(INRS,INTS) THEN           (* FIND ENPASSANT SQUARE *)
      RBTS := INTS
    ELSE
      RBTS := AT;
    IF JNTM = DARK THEN
      RBTI := RBTI+1;                  (* ADVANCE MOVE NUMBER *)
    FOR INTQ := LS TO DL DO
      IF INRSTB(CSTAT[JNTK],XTQS[INTQ]) THEN
        RBSQ := RBSQ+[INTQ]            (* CASTLE LEGAL *)
      ELSE
        RBSQ := RBSQ-[INTQ];           (* CASTLE NOT LEGAL *)
    FOR INTS := AS TO ZS DO
       RBIS[INTS] := MBORD[INTS];      (* COPY POSITION *)
  END;
END;  (* THEMOV *)


PROCEDURE EVALU8;                      (* EVALUATE CURRENT POSITION *)

VAR 
  INTV : TV;                           (* SCORE *)

  FUNCTION EVKING                      (* EVALUATE KING *)
    (A:RS;                             (* KING BIT BOARD *)
     B:RS): TV;                        (* FRIENDLY PAWN BIT BOARD *)

  VAR
    INTS : TS;                         (* SCRATCH *)
    INRS : RS;                         (* SCRATCH *)
    INTV : TV;                         (* SCRATCH *)

  BEGIN
    ANDRS(INRS,A,CORNR);
    IF NULRS(INRS) THEN                (* KING NOT IN CORNER *)
      INTV := 0
    ELSE
      INTV := FKSANQ;                  (* KING SAFELY IN CORNER *)
    INRS := A;
    IF NXTTS(INRS,INTS) THEN
    BEGIN
      ANDRS(INRS,ATKFR[INTS],B);       (* FIND PAWNS NEXT TO KING *)
      INTV := INTV + CNTRS(INRS)*FKPSHD;
                                       (* CREDIT EACH CLOSE PAWN *)
    END;
    EVKING := INTV;                    (* RETURN KING SCORE *)
  END;  (* EVKING *)


  FUNCTION EVMOBL                      (* EVALUATE MOBILITY *)
    (A,B:TP): TV;                      (* PIECE TYPES TO EVALUATE *)

  VAR
    INRS : RS;                         (* SCRATCH *)
    INTS : TS;                         (* SCRATCH *)
    INTV : TV;                         (* SCRATCH *)

  BEGIN
    IORRS(INRS,TPLOC[A],TPLOC[B]);     (* MERGE PIECE TYPES *)
    INTV := 0;                         (* INITIALIZE COUNT *)
    WHILE NXTTS(INRS,INTS) DO          (* COUNT ATTACKS *)
    INTV := INTV + CNTRS(ATKFR[INTS]);
    EVMOBL := INTV;                    (* RETURN TOTAL ATTACKS *)
  END; (* EVMOBL *)


  FUNCTION EVPAWN                      (* EVALUATE PAWNS *)
    (A:RS;                             (* LOCATION OF PAWNS *)
     B:TE;                             (* PAWN FORWARD DIRECTION *)
     C:TR): TV;                        (* PAWN HOME RANK *)

  VAR
    INRS : RS;                         (* SCRATCH *)
    IMRS : RS;                         (* SCRATCH *)
    INTS : TS;                         (* SCRATCH *)
    INTV : TV;                         (* SCRATCH *)

  BEGIN
    SFTRS(INRS,A,S1);
    ANDRS(INRS,INRS,A);                (* BIT SET FOR SIDE BY SIDE *)
    INTV := CNTRS(INRS)*FPFLNX;        (* SCORE PHALANX *)
    SFTRS(INRS,A,B1);
    ANDRS(INRS, INRS, A);              (* SIT SET FOR PAWN DEFENSE *)
    INTV := INTV + CNTRS(INRS)*FPCONN; (* CREDIT CONNECTED PAWNS *)
    SFTRS(INRS,A,B2);
    ANDRS(INRS, INRS, A);
    INTV := INTV + CNTRS(INRS)*FPCONN; (* AND OTHER CONNECTED PAWNS *)

    SFTRS(INRS,A,B);                   (* MOVE FORWARD *)
    NOTRS(IMRS,TPLOC[MT]);             (* OCCUPIED SQUARES *)
    ANDRS(INRS, INRS ,IMRS);           (* BLOCKED PAWNS *)
    INTV := INTV - CNTRS(INRS)*FPBLOK; (* PENALIZE BLOCKED PAWNS *)

    CPYRS(INRS,A);
    WHILE NXTTS(IMRS,INTS) DO          (* FOR  EACH  PAWN *)
      INTV := INTV +(ABS(ORD(C)-ORD(XTSR[INTS])))*FPADCR[XTSF[INTS]];
                                       (* CREDIT PAWN ADVANCEMENT *)
    EVPAWN := INTV;                    (* RETURN PAWN SCORE *)
  END;  (* EVPAWN *)


  FUNCTION EVROOK                      (* EVALUATE HOOKS *)
  (A:RS;                               (* ROOK LOCATIONS *)
   B: RS): TV;                         (* SEVENTH RANK *)

  VAR
    INTV : TV;                         (* SCRATCH *)
    INTI : TI;                         (* SCRATCH *)
    INTS : TS;                         (* SCRATCH *)
    INRS : RS;                         (* SCRATCH *)

  BEGIN
    INTV := 0;                         (* INITIALIZE *)
    INRS := A;
    IF NXTTS(INRS,INTS) THEN           (* LOCATE FIRST ROOK *)
    BEGIN
      ANDRS(INRS,A,ATKFR[INTS]);
      IF NOT NULRS(INRS) THEN          (* ROOK ATTACKS FRIENDLY ROOK *)
        INTV := INTV + FRDUBL;         (* GIVE DOUBLED ROOK CREDIT *)
    END;
    ANDRS(INRS,A,B);                   (* ROOKS ON SEVENTH *)
    INTI := CNTRS(INRS);
    EVROOK := INTV + INTI*INTI*FRK7TH; (* CREDIT ROOKS ON SEVENTH *)
  END;  (* EVROOK *)

BEGIN
  IF XTMV[JNTM]+MBVAL[JNTK] + MAXPS <= BSTVL[JNTK-2] THEN
                                       (* MOVE WILL PRUNE ANYWAY *)
    INTV := XTMV[JNTM] + MBVAL[JNTK]
  ELSE
  BEGIN
    INTV := (  FWPAWN*(EVPAWN(TPLOC[LP],S2,R2)-EVPAWN(TPLOC[DP],S4,R7))
             + FWMINM*(EVMOBL(LB,LN)         -EVMOBL(DB,DN)           )
             + FWMAJM*(EVMOBL(LR,LQ)         -EVMOBL(DR,DQ)           )
             + FWROOK*(EVROOK(TPLOC[LR],XRRS[R7])
                      -EVROOK(TPLOC[DR],XRRS[R2])                     )
             + FWKING*(EVKING(TPLOC[LK],TPLOC[LP])
                      -EVKING(TPLOC[DK],TPLOC[DP])                    )
            ) DIV 64;
    MAXPS := MAX(MAXPS,ABS(INTV));
    INTV := XTMV[JNTM] *(MBVAL[JNTK]+INTV);
  END;
  IF SWTR THEN
    BEGIN
      WRITE(' EVALU8',JNTK,JNTW,INDEX[JNTK],INTV);
      PRIMOV(MOVES[INDEX[JNTK]]);
    END;
  VALUE[INDEX[JNTK]] := INTV;          (* RETURN SCORE *)
END;  (* EVALU8 *)


FUNCTION SEARCH                        (* SEARCH LOOK-AHEAD TREE *)
: TW;                                  (* RETURNS THE BEST MOVE *)

LABEL 
  11,                                  (* START NEW PLY *)
  12,                                  (* TRY DIFFERENT FIRST MOVE *)
  13,                                  (* FLOAT VALUE BACK UP *)
  14,                                  (* FIND ANOTHER MOVE *)
  15,                                  (* BACK UP A PLY *)
  16;                                  (* EXIT SEARCH *)

var jumpin: boolean; { added jumpin var [sam] }

  PROCEDURE NEWBST                     (* SAVE BEST MOVE INFORMATION *)
    (A:TK);                            (* PLY OF BEST MOVE *)

  VAR
    INTW : TW;                         (* MOVES INDEX *)
    INRM : RM;                         (* SCRATCH *)

  BEGIN
    BSTMV[A] := INDEX[A+1];            (* SAVE BEST MOVE *)
    IF A = AK THEN                     (* AT FIRST PLY *)
    BEGIN
      INRM := MOVES[BSTMV[A]];         (* SAVE BEST MOVE *)
      FOR INTW := BSTMV[A]-1 DOWNTO AW+1 DO
        MOVES[INTW+1] := MOVES[INTW];  (* MOVE OTHER MOVES DOWN *)
        MOVES[AW+1] := INRM;           (* PUT BEST AT BEGINNING *)
        BSTMV[AK] := AW+1;             (* POINTS TO BEST MOVE *)
    END
    ELSE
      IF NOT MOVES[BSTMV[A]].RMCA THEN
        KILLR[JNTK] := MOVES[BSTMV[A]];(* SAVE  KILLER MOVE *)
  END;  (* NEWBST *)


  FUNCTION MINMAX                      (* PERFORM MINIMAX OPERATION *)
    (A:TK)                             (* PLY TO MINIMAX AT *)
     : TB;                             (* TRUE IF REFUTATION *)

  BEGIN
    MINMAX := FALSE;                   (* DEFAULT IS NO PRUNING *)
    IF SWTR THEN
      WRITE(' MINMAX',A,-BSTVL[A-1],BSTVL[A],-BSTVL[A+1]);
    IF -BSTVL[A+1] > BSTVL[A] THEN
    BEGIN
      BSTVL[A] := -BSTVL[A+1];
      NEWBST(A);                       (* SAVE BEST MOVE *)
      MINMAX := BSTVL[A+1] <= BSTVL[A-1];
                                       (* RETURN TRUE IF REFUTATION *)
      IF SWTR THEN
        WRITE(' NEW BEST. PRUNE: ',BSTVL[A+1] <= BSTVL[A-1]);
    END;
    IF SWTR THEN
      WRITELN;                         (* PRINT TRACE LINE *)
  END;  (* MINMAX *)


  PROCEDURE SCOREM;                    (* SCORE MATE *)

  BEGIN
    MOVES[INDEX[JNTK]].RMMT := TRUE;   (* INDICATE MATE *)
    IF MOVES[INDEX[JNTK]].RMCH THEN    (* CHECK MATE *)
      VALUE[INDEX[JNTK]] :=  64*JNTK - ZV
    ELSE                               (* STALEMATE *)
      VALUE[INDEX[JNTK]] :=  0;
    IF SWTR THEN
      WRITELN(' SCOREM',JNTK,JNTW, INDEX[JNTK],VALUE[INDEX[JNTK]]);
  END;  (* SCOREM *)


  FUNCTION SELECT                      (* SELECT NEXT MOVE TO SEARCH *)
     : TB;                             (* TRUE IF MOVE RETURNED *)

  LABEL
    21,                                (* NEW SEARCH MODE *)
    22;                                (* EXIT SELECT *)

  VAR
    INTB : TB;                         (* RETURN VALUE *)
    INTK : TK;                         (* SCRATCH *)
    INTW : TW;                         (* MOVE INDEX *)
    IMTW : TW;                         (* SCRATCH *)
    INTV : TV;                         (* SCRATCH *)

    PROCEDURE SELDON;                  (* SELECT EXIT - DONE.
                                          CALLED WHEN NO FURTHER
                                          MOVES ARE TO BE SEARCHED
                                          FROM THIS POSITION.
                                          THE CURRENT POSITION MUST
                                          HAVE BEEN EVALUATED. *)

    BEGIN
      INTB := FALSE;                   (* RETURN NO MOVE SELECTED *)
      IF SWTR THEN
        WRITELN(' SELECT', JNTK, ' END.');
      GOTO 22;                         (* EXIT SELECT *)
    END;  (* SELDON *)


    PROCEDURE SELMOV                   (* SELECT EXIT - SEARCH.
                                          CALLED WHEN A MOVE TO
                                          BE SEARCHED HAS BEEN
                                          FOUND. *)
      (A:TW);                          (* INDEX TO SELECTED MOVE *)

    BEGIN
      INTB := TRUE;                    (* RETURN MOVE SELECTED *)
      INDEX[JNTK+1] := A;              (* POINT TO SELECTED MOVE *)
      MOVES[A].RMSU := TRUE;           (* FLAG MOVE AS SEARCHED *)
      IF SWTR THEN
      BEGIN
        WRITE(' SELECT',JNTK,ORD(SRCHM[JNTK]),A);
        PRIMOV(MOVES[A]);
      END;
      GOTO 22;                         (* EXIT SELECT *)
    END;  (* SELMOV *)


    PROCEDURE SELNXT                   (* SELECT EXIT - NEW MODE.
                                          CALLED WHEN A NEW SEARCH
                                          MODE IS TO BE SELECTED *)
      (A:TH);                          (* NEW SEARCH MODE *)

    BEGIN
      INDEX[JNTK+1] := LINDX[JNTK]-1;  (* RESET MOVES POINTER *)
      SRCHM[JNTK] := A;                (* CHANGE SEARCH MODE *)
      GOTO 21;                         (* EXECUTE NEXT MODE  *)
    END;  (* SELNXT *)


    PROCEDURE SELANY;                  (* SEARCH ALREADY GENERATED
                                          AND NOT ALREADV SEARCHED *)

    VAR
      INTW : TW;                       (* MOVES INDEX *)

    BEGIN
      FOR INTW := INDEX[JNTK+1]+1 TO JNTW-1 DO
        IF NOT MOVES[INTW].RMSU THEN
          SELMOV(INTW);
    END;  (* SELANY *)


  BEGIN
  21:  (* NEW SEARCH MOOE *)
    CASE SRCHM[JNTK] OF

      H0:  (* INITIALIZE FOR NEW MOVE *)
           BEGIN
             MVSEL[JNTK] := 0;         (* CLEAR MOVES SEARCHED *)
             INTV := BSTVL[JNTK-2];    (* SAVE ALPHA *)
             BSTVL[JNTK-2] := -ZV;     (* INHIBIT PRUNING IN EVALU8 *)
             MAXPS := 0;               (* INITIALIZE NAXIMUM POSITIONAL
                                          SCORE *)
             GENALL;                   (* GENERATE ALL MOVES *)
             FOR  INTW :=  AW+1  TO  JNTW-1   DO
             BEGIN
               IF  UPDATE(MOVES[INTW])   THEN
               BEGIN
                 INDEX[JNTK] := INTW;  (* POINT TO CURRENT HOVE *)
                 EVALU8;               (* SCORE POSITION *)
               END;
               DNDATE(MOVES[INTW]);
             END;
             BSTVL[JNTK-2] := INTV;    (* RESTORE ALPHA *)
             SORTIT(VALUE,MOVES,JNTW-1);
                                       (* SORT PRELIMINARY SCORES *)
             FOR INTK := AK TO ZK DO
               KILLR[INTK] := NULMV;   (* CLEAR KILLER TABLE *)
             IF  SWTR  OR SWPS  THEN
               FOR INTW  :=   AW+1   TO  JNTW-1  DO
               BEGIN
                 WRITE(' PRELIM',INTW,VALUE[INTW]);
                 PRIMOV(MOVES[INTW]);  (* PRINT PRELIMINARY SCORES *)
                 IF INTW/LPP = INTW DIV LPP THEN
                   PAUSER;
               END;
             SELNXT(H6);               (* SEARCH ALL MOVES *)
            END;

      H1:  (*  INITIALIZE AT  NEW DEPTH *)
           BEGIN
             MVSEL[JNTK] := 0;         (* CLEAR MOVES SEARCHED *)
             IF JNTK > JMTK THEN
             BEGIN
               EVALU8;                 (* EVALUATE CURRENT POSITION *)
               INDEX[JNTK+1] := AW;
               BSTVL[JNTK+1] := -VALUE[INDEX[JNTK]];
               IF MINMAX(JNTK) OR (JNTK = ZK) THEN
                 SELDON;               (* THIS MOVE PRUNES *)
               SRCHM[JNTK] := H2;      (* CAPTURE SEARCH *)
             END
             ELSE
               SRCHM[JNTK] := H3;      (* CAPTURES IN FULL SEARCH *)
             GENCAP;                   (* GENERATE CAPTURES *)
             SELNXT(SRCHM[JNTK]);      (* CHANGE SEARCH MODE *)
           END;

      H2:  (* CAPTURE SEARCH *)
           BEGIN
             INTW := AW;               (* BEST MOVE POINTER *)
             INTV := AV;               (* BEST VALUE *)
             FOR IMTW := LINDX[JNTK] TO JNTW-1 DO
               WITH MOVES[IMTW] DO
                 IF NOT RMSU THEN
                   IF ABS(XTPV[RMCP]) > INTV THEN
                   BEGIN
                     INTV := ABS(XTPV[RMCP]);
                     INTW   :=   IMTW;
                   END;
             IF INTW <> AW THEN        (* MOVE FOUND *)
               SELMOV(INTW)            (* SELECT BIGGEST CAPTURE *)
             ELSE
               SELDON;                 (* QUIT *)
           END;

      H3:  (* FULL WIDTH SEARCH - CAPTURES *)
           BEGIN
             INTW := AW;               (* BEST MOVE POINTER *)
             INTV := AV;               (* BEST VALUE *)
             FOR IMTW := LINDX[JNTK] TO JNTW-1 DO
               WITH MOVES[IMTW] DO
                 IF NOT RMSU THEN
                   IF ABS(XTPV[RMCP]) > INTV THEN
                   BEGIN
                     INTV := ABS(XTPV[RMCP]);
                     INTW := IMTW;
                   END;
             IF INTW <> AW THEN        (* MOVE FOUND *)
               SELMOV(INTW)            (* SELECT BIGGEST CAPTURE *)
             ELSE
               IF NOT NULMVB(KILLR[JNTK]) THEN
               BEGIN
                 IMTW := JNTW;         (* SAVE CURRENT MOVES INDEX *)
                 GENFSL(XRSS[KILLR[JNTK].RMFR]);
                                       (* GENERATE MOVE BY KILLER *)
                 SRCHM[JNTK] := H4;    (* SET NEXT SEARCH MODE *)
                 FOR INTW := IMTW TO JNTW-1 DO
                                       (* LOOK AT MOVES BY KILLER *)
                   IF KILLR[JNTK].RMTO = MOVES[INTW].RMTO THEN
                     SELMOV(INTW);     (* SELECT KILLER MOVE *)
               END;
             SELNXT(H4);               (* GO TO NEXT STATE *)
           END;

      H4:  (* INITIALIZE SCAN OF CASTLE MOVES AND OTHER MOVES BY KILLER
              PIECE *)
           BEGIN
             GENCAS;                   (* GENERATE CASTLE MOVES *)
             SELNXT(H5);               (* GO TO NEXT STATE *)
           END;

      H5:  (* FULL WIDTH SEARCH - CASTLES AND OTHER MOVES BY KILLER
              PIECE *)
           BEGIN
             SELANY;                   (* SELECT ANY MOVE *)
             GENFSL(ALLOC[JNTK]);      (* GENERATE REMAINING MOVES *)
             SELNXT(H6);               (* NEXT SEARCH MODE *)
           END;

      H6:  (* FULL MIOTH SEARCH - REMAINING MOVES *)
           BEGIN
             SELANY;                   (* SELECT ANYTHING ON LIST *)
             IF MVSEL[JNTK] = 0 THEN
               SCOREM;                 (* SCORE MATE *)
             SELDON;                   (* EXIT SELECT *)
           END;

      H7:  (* RESEARCH FIRST PLY *)
           BEGIN
             JNTW := LINDX[AK+1];      (* POINT TO ALREADY GENERATED MOVES *)
             MVSEL[AK] := 0;           (* RESET MOVES SEARCHED *)
             FOR INTW := AW+1 TO JNTW-1 DO
               MOVES[INTW].RMSU := FALSE;
                                       (* CLEAR SEARCHED BIT *)
            IF SWTR THEN
              WRITELN(' REDO ',JNTK,BSTVL[AK-2],BSTVL[AK-1]);
            SELNXT(H6);                (* SEARCH ALL MOVES *)
           END;
      END;

  22:  (* SELECT EXIT *)
    SELECT := INTB;                    (* RETURN VALUE *)
  END;  (* SELECT *)

BEGIN  (* SEARCH *)
  jumpin := false; { set no jumpin [sam] }
  BSTMV[AK] := AW;                     (* INITIALIZE MOVE *)
  INDEX[JNTK] := AW;                   (* INITIALIZE TREE *)
  MOVES[AW]  := LSTMV;                 (* INITIALIZE MOVE *)
  EVALU8;                              (* INITIAL GUESS AT SCORE *)
  BSTVL[AK-2] := VALUE[AW] - WINDOW;   (* INITIALIZE ALPHA-BETA WINDON *)
  BSTVL[AK-1] := -VALUE[AW] - WINDOW;
  JMTK := AK+1;                        (* INITIALIZE ITERATION NUMBER *)
  WHILE (NODES < FNODEL) AND (JNTK < MAX(ZK DIV 2, ZK-8)) DO
  BEGIN

11:  (* START NEW PLY *)
    BSTVL[JNTK] :=  BSTVL[JNTK-2];     (* INITIALIZE ALPHA *)

12:  (* DIFFERENT  FIRST MOVE  *)
    IF NOT SELECT and not jumpin THEN
    BEGIN
      BSTVL[JNTK] := VALUE[INDEX[JNTK]];
      NEWBST(JNTK);
      END
    ELSE
    BEGIN
      if jumpin then goto 13; { go jumpin location }
      IF UPDATE(MOVES[INDEX[JNTK+1]]) THEN
        GOTO 11                        (* START NEW PLY *)
      ELSE
        BEGIN
          DNDATE(MOVES[INDEX[JNTK]]);
          GOTO 12;                     (* FIND ANDTHER MOVE *)
        END;

13:  (* FLOAT   VALUE   BACK  *)
      jumpin := false; { set no jumpin [sam] }
      IF   MINMAX(JNTK)   THEN
        GOTO 15;                       (* PRUNE *)

14:  (* FIND ANOTHER MOVE AT THIS PLY *)
      IF SELECT THEN
        IF UPDATE(MOVES[INDEX[JNTK+1]]) THEN
          GOTO  11                     (* START NEW PLY *)
        ELSE
          BEGIN
            DNDATE(MOVES[INDEX[JNTK]]);
            GOTO 14;                   (* FIND ANOTHER MOVE *)
          END;
    END;

15:  (* BACK UP A PLY *)
    IF JNTK > AK THEN
    BEGIN (* NOT DONE WITH ITERATION *)
      DNDATE(MOVES[INDEX[JNTK]]);      (* RETRACT MOVE *)
      jumpin := true; { set jumpin active }
      GOTO 12 {13};
    END;

    (* DONE WITH ITERATION *)
    IF (BSTVL[AK] <= BSTVL[AK-2]) OR (BSTVL[AK] >= -BSTVL[AK-1]) THEN
    BEGIN (* NO MOVE FOUND *)
      IF MVSEL[AK] = 0 THEN
      BEGIN (* NO LEGAL MOVES *)
        GOTO 16; (* GIVE UP *)
      END;
    BSTVL[AK-2] := -ZV;                (* SET ALPHA-BETA WINDOW LARGE *)
    BSTVL[AK-1] := -ZV;
    SRCHM[AK] := H7;
    JNTW := AK+1;
    GOTO 11;                           (* TRY AGAIN *)
    END;
    BSTVL[AK-2] := BSTVL[AK] - WINDOW; (* SET ALPHA BETA WINOOW *)
    BSTVL[AK-1] := -BSTVL[AK] - WINDOW;
    JMTK := JMTK+1;                    (* ADVANCE ITERATION NUMBER *)
    SRCHM[AK] := H7;
  END;

16:  (* EXIT SEARCH *)
  SEARCH := BSTMV[AK];                 (* RETURN BEST MOVE *)
END;  (* SEARCH *)


PROCEDURE READER;                      (* READ INPUT FROM USER *)

LABEL 
  11;                                  (* COMMAND FINISHED EXIT *)

VAR 
  INRA : RA;                           (* SCRATCH TOKEN *)
  INTJ : TJ;                           (* ECHO COMMAND INDEX *)

  PROCEDURE RDRERR(A:RN);              (* PRINT DIAGNOSTIC AND EXIT *)

  VAR
    INTJ : TJ;                         (* STRING INDEX *)
    INTN : TN;                         (* HESSAGE INDEX *)

  BEGIN
    IF NOT SWEC THEN                   (* ECHO LINE IF NOT ALREADY
                                           DONE *)
    BEGIN
      WRITE(' ');
      FOR INTJ := AJ TO ZJ-1 DO
        WRITE(ILINE[INTJ]);            (* WRITE INPUT LINE *)
      WRITELN(' ');
    END;
    FOR INTJ := AJ TO JNTJ DO
      WRITE(' ');                      (* LEADING BLANKS BEFORE ARROW *)
    WRITELN('^');                      (* POINTER TO ERROR *)
    FOR INTN := AN TO ZN DO
      WRITE(A[INTN]);                  (* WRITE DIAGNOSTIC *)
    WRITELN;
    GOTO 11;                           (* COMMAND EXIT *)
  END;  (* RDRERR *)


  FUNCTION RDRGNT(VAR A:RA):TB;        (* GET NEXT TOKEN FROM COMMAND
                                          RETURNS TOKEN IN A.
                                          RETURNS TRUE IF NON-EMPTY
                                          TOKEN.
                                          A TOKEN IS ANY CONSECUTIVE
                                          COLLECTION OF ALPHANUMERIC
                                          CHARACTERS.
                                          LEADING SPECIAL CHARACTERS
                                          IGNORED. *)

  VAR
    INTJ : TJ;                         (* STRING INDEX *)

  BEGIN
    WHILE (JNTJ < ZJ) AND (ORD(ILINE[JNTJ]) >= ORD('+')) DO
      JNTJ := JNTJ+1;
    A := '          ';
    INTJ := AA;
    WHILE (JNTJ < ZJ) AND (INTJ < ZA) AND (ILINE[JNTJ] IN ['A'..'Z', '0'..'9']) DO
    BEGIN
      A[INTJ] := ILINE[JNTJ];          (* COPY CHARACTER TO TOKEN *)
      INTJ := INTJ+1;                  (* ADVANCE POINTERS *)
      JNTJ := JNTJ+1;
    END;
    RDRGNT := INTJ <> AA;              (* RETURN TRUE IF ANYTHING MOVED *)
    WHILE (INTJ < ZJ) AND (JNTJ < ZJ) AND (ILINE[JNTJ] IN ['A'..'Z', '0'..'9']) DO
      JNTJ := JNTJ+1;                  (* SKIP REST OF TOKEN *)
  END;  (* RDRGNT *)


  PROCEDURE RDRSFT;                    (* SKIP FIRST TOKEN IN COMMAND
                                         LINE *)

  VAR
    INRA : RA;                         (* SCRATCH *)
    INTB : TB;                         (* SCRATCH *)

  BEGIN
    JNTJ := AJ;                        (* INITIALIZE SCAN *)
    INTB := RDRGNT(INRA);              (* THROW AWAY FIRST TOKEN *)
  END;  (* RDRSFT *)


  PROCEDURE RDRCMD                     (* TEST FOR AND EXECUTE COMMAND
                                          EXITS TO COMMAND EXIT IF
                                          COMMAND IS PROCESSED. *)
    (A:RA;                             (* POTENTIAL COMMAND KEYWORD *)
     PROCEDURE  XXXCMD);               (* PROCEDURE TO EXECUTE COMNAND *)

  BEGIN
    IF INRA = A THEN
    BEGIN
      XXXCMD;                          (* EXECUTE COMMAND *)
      GOTO 11;                         (* EXIT  *)
    END;
  END;  (* RDRCMD *)


  PROCEDURE RDLINE;                    (* GET NEXT INPUT LINE FROM
                                          USER *)

  VAR
    INTC : TC;                         (* SCRATCH *)
    INTJ : TJ;                         (* STRING INDEX *)

  BEGIN
    READLN;                            (* ADVANCE TO NEXT LINE *)
    INTJ := AJ;
    WHILE NOT EOLN AND (INTJ < ZJ) DO
    BEGIN
      READ(ICARD[INTJ]);               (* COPY INPUT LINE *)
      INTJ := INTJ+1;
    END;
    WHILE NOT EOLN DO
      READ(INTC);                      (* SKIP REST OF INPUT LINE *)
    WHILE INTJ < ZJ DO
    BEGIN
      ICARD[INTJ] := ' ';              (* BLANK REST OF LINE *)
      INTJ := INTJ+1;
    END;
    ICARD[ZJ] := ';';                  (* SET END OF COMMAND *)
    JMTJ := AJ;                        (* RESET INPUT LINE POINTER *)
  END;  (* RDLINE *)


  FUNCTION RDRMOV: TB;                 (* EXTRACT NEXT COMMAND
                                          FROM INPUT LINE.
                                          RETURNS TRUE IF NON-EMPTY
                                          COMMAND. *)

  VAR
    IMTJ : TJ;                         (* STORING POINTER *)

  BEGIN
    WHILE (JMTJ < ZJ) AND (ICARD[JMTJ] = ' ') DO
      JMTJ := JMTJ+1;                  (* SKIP LEADING BLANKS *)
    IMTJ := AJ;
    WHILE (JMTJ < ZJ) AND (ICARD[JMTJ] <> ';') DO
    BEGIN
      ILINE[IMTJ] := ICARD[JMTJ];
      IMTJ := IMTJ+1;
      JMTJ := JMTJ+1;
    END;
    IF (ICARD[JMTJ] = ';') AND (JMTJ <  ZJ) THEN
      JMTJ := JMTJ+1;                  (* SKIP SEMI-COLON *)
    RDRMOV := IMTJ <>  AJ;             (* RETURN TRUE IF NON-EMPTY *)
    WHILE   IMTJ   <   ZJ   DO
    BEGIN
      ILINE[IMTJ] := ' ';              (* BLANK FILL LINE *)
      IMTJ := IMTJ+1;
    END;
    ILINE[ZJ] := ';';                  (* STORE COMMAND TERMINATOR *)
    JNTJ := AJ;                        (* PRESET COMNAND SCAN *)
  END;  (* RDRMOV *)


  FUNCTION RDRNUM: TI;                 (* CRACK NUMBER FROM COMMAND
                                          LINE.  RETURNS NUMBER IF NO
                                          ERROR.  EXITS TO COMMAND EXIT
                                          IF ERROR. *)

  VAR
    INTB : TB;                         (* SIGN *)
    INTI : TI;                         (* VALUE *)

  BEGIN
    WHILE (JNTJ < ZJ) AND (ILINE[JNTJ] = ' ') DO
      JNTJ := JNTJ+1;                  (* SKIP LEADING BLANKS *)
    IF ILINE[JNTJ] = '-' THEN
    BEGIN
      INTB := TRUE;                    (* NUMBER IS NEGATIVE *)
      JNTJ := JNTJ+1;                  (* ADVANCE CHARACTER POINTER *)
    END
    ELSE
    BEGIN
      INTB := FALSE;                   (* NUMBER IS POSITIVE *)
      IF ILINE[JNTJ] = '+' THEN
        JNTJ := JNTJ+1;                (* SKIP LEADING + *)
    END;
    INTI := 0;
    WHILE ILINE[JNTJ] IN ['0'..'9'] DO
    BEGIN
      IF INTI < MAXINT/10 THEN
        INTI := 10*INTI+ORD(ILINE[JNTJ])-ORD('0')
      ELSE
        RDRERR(' NUMBER TOO LARGE             ');
      JNTJ := JNTJ+1;                  (* ADVANCE *)
    END;
    IF ILINE[JNTJ] IN ['A'..'Z'] THEN
      RDRERR(' DIGIT EXPECTED               ');
    IF INTB THEN
      INTI := -INTI;                   (* COMPLEMENT IF NEGATIVE *)
    RDRNUM := INTI;                    (* RETURN NUMBER *)
  END;  (* RDRNUM *)


  PROCEDURE BOACMD;                    (* COMMAND - SET UP POSITION *)

  VAR
    INTM  : TM;                         (* COLOR *)
    INTS  : TS;                         (*  POSITION ON  BOARD *)
    INTS1 : TS;                         (*  POSITION ON  BOARD added to avoid
                                            threat [sam] *)

    PROCEDURE BOAADV(A:TI);            (* ADVANCE IN FILES *)

    BEGIN
      IF INTS+A < ZS THEN
        INTS := INTS+A
      ELSE
      INTS := ZS;
    END;  (* BOAADV *)


    PROCEDURE BOASTO(A:TP);            (* STORE PIECE ON BOARD *)

    BEGIN
      BOARD.RBIS[INTS] := A;
      IF INTS < ZS THEN INTS := INTS+1;
    END;  (* BOASTO *)

  BEGIN  (* BOACMD *)
    CLSTAT;                            (* CLEAR STATUS FLAGS *)
    LSTMV := NULMV;                    (* CLEAR PREVIOUS MOVE *)
    FOR INTS1 := AS TO ZS DO
      BOARD.RBIS[INTS1] := MT;          (* CLEAR BOARD *)
    INTM := LITE;
    INTS := 0;
    REPEAT
      IF ILINE[JNTJ] IN ['P','R','N','B','Q','K','L','D','1'..'8'] THEN
      CASE ILINE[JNTJ] OF
        'P': BOASTO(XTUMP[EP,INTM]);
        'R': BOASTO(XTUMP[ER,INTM]);
        'N': BOASTO(XTUMP[EN,INTM]);
        'B': BOASTO(XTUMP[EB,INTM]);
        'Q': BOASTO(XTUMP[EQ,INTM]);
        'K': BOASTO(XTUMP[EK,INTM]);
        'L': INTM := LITE;
        'D': INTM := DARK;
        '1','2','3','4','5','6','7','8': BOAADV(ORD(ILINE[JNTJ])-ORD('0'));
      END
      ELSE
       IF ILINE[JNTJ] IN ['A'..'Z', '0'..'9'] THEN
       BEGIN
         FOR INTS1 := AS TO ZS DO
           BOARD.RBIS[INTS1] := MT;
         CLSTAT;                       (* CLEAR STATUS *)
         RDRERR(' ILLEGAL BOARD OPTION         ');
       END;
       JNTJ := JNTJ+1;
    UNTIL JNTJ = ZJ;
  END;  (* BOACMD *)


  PROCEDURE ENDCMD;                    (* COMMAND - END PROGRAM *)

  BEGIN
    GOTO 9;                            (* END PROGRAM *)
  END;  (* ENDCMD *)


  PROCEDURE GONCMD;                    (* COMMAMO - GO N MOVES *)

  BEGIN
    GOING := RDRNUM;                   (* CRACK NUMBER *)
    IF GOING <= 0 THEN GOING := 1;

    jumpin := true; { [sam] set jumpin flag }

    GOTO 2;                            (* EXECUTE MACHINES MOVE *)
  END;  (* GONCMD *)


  PROCEDURE INICMD;                    (* COMMAND - INITIALIZE FOR A NEW
                                          GAME *)
  BEGIN
    GOTO 1;                            (* INITIALIZE FOR A NEW GAME *)
  END;  (* INICMD *)


  PROCEDURE LETCMD;                    (* COMMAND - CHANGE VARIABLE *)

  LABEL
    21;                                (* LET COMMAND EXIT *)

    PROCEDURE LETONE                   (* TEST FOR AND SET ONE VARIABLE *)
     (A:RA;                            (* VARIABLE NAME *)
      VAR B:TI);                       (* VARIABLE *)

    BEGIN
      IF A = INRA THEN
      BEGIN
        B := RDRNUM;                   (* GET VALUE *)
        GOTO 21;                       (* EXIT *)
      END;
    END;  (* LETONE *)


  BEGIN
    IF RDRGNT(INRA) THEN
    BEGIN
      LETONE('FKPSHD    ',FKPSHD);
      LETONE('FKSANQ    ',FKSANQ);
      LETONE('FMAXMT    ',FMAXMT);
      LETONE('FNODEL    ',FNODEL);
      LETONE('FPADQR    ',FPADCR[F1]);
      LETONE('FPADQN    ',FPADCR[F2]);
      LETONE('FPADQB    ',FPADCR[F3]);
      LETONE('FPADQF    ',FPADCR[F4]);
      LETONE('FPADKF    ',FPADCR[F5]);
      LETONE('FPADKB    ',FPADCR[F6]);
      LETONE('FPADKN    ',FPADCR[F7]);
      LETONE('FPADWR    ',FPADCR[F8]);
      LETONE('FPBLOK    ',FPBLOK);
      LETONE('FPCONN    ',FPCONN);
      LETONE('FPFLNX    ',FPFLNX);
      LETONE('FRDUBL    ',FRDUBL);
      LETONE('FRK7TH    ',FRK7TH);
      LETONE('FTRADE    ',FTRADE);
      LETONE('FTRDSL    ',FTRDSL);
      LETONE('FTRPDK    ',FTRPDK);
      LETONE('FTRPWN    ',FTRPWN);
      LETONE('FWKING    ',FWKING);
      LETONE('FWMAJM    ',FWMAJM);
      LETONE('FWMINM    ',FWMINM);
      LETONE('FWPAWN    ',FWPAWN);
      LETONE('FWROOK    ',FWROOK);
      LETONE('WINDOW    ',WINDOW);
      RDRERR('ILLEGAL LET VARIABLE NAME     ');
    END;
  21:  (* LET COMMAND EXIT  *)
  END;  (* LETCMD *)


  PROCEDURE PLECMD;                    (* COMMAND - PRINT VARIABLE  *)

  LABEL
    21;                                (* PRINT LET COMMAND EXIT *)

  PROCEDURE PRIONE                     (* TEST FOR AND PRINT VARIABLE *)
    (A:RA;                             (* TEST VARIABLE NAME *)
     B:TI);                            (* VARIABLE *)

  BEGIN
    IF INRA = A THEN
    BEGIN
      WRITELN(A,B);
      GOTO 21;                         (* EXIT *)
    END;
  END;  (* PRIONE *)


  BEGIN (* PLECMD  *)
  21: (* PRINT LET CCNMAND EXIT *)
    WHILE RDRGNT(INRA) DO
    BEGIN
      PRIONE('FKPSHD    ',FKPSHD);
      PRIONE('FKSANQ    ',FKSANQ);
      PRIONE('FMAXMT    ',FMAXMT);
      PRIONE('FNODEL    ',FNODEL);
      PRIONE('FPADQR    ',FPADCR[F1]);
      PRIONE('FPADQN    ',FPADCR[F2]);
      PRIONE('FPADQB    ',FPADCR[F3]);
      PRIONE('FPADQF    ',FPADCR[F4]);
      PRIONE('FPADKF    ',FPADCR[F5]);
      PRIONE('FPADKB    ',FPADCR[F6]);
      PRIONE('FPADKN    ',FPADCR[F7]);
      PRIONE('FPADKR    ',FPADCR[F8]);
      PRIONE('FPBLOK    ',FPBLOK);
      PRIONE('FPCONN    ',FPCONN);
      PRIONE('FPFLNX    ',FPFLNX);
      PRIONE('FRDUBL    ',FRDUBL);
      PRIONE('FRK7TH    ',FRK7TH);
      PRIONE('FTRADE    ',FTRADE);
      PRIONE('FTRDSL    ',FTRDSL);
      PRIONE('FTRPDK    ',FTRPDK);
      PRIONE('FTRPWN    ',FTRPWN);
      PRIONE('FWKING    ',FWKING);
      PRIONE('FWMAJM    ',FWMAJM);
      PRIONE('FWMINM    ',FWMINM);
      PRIONE('FWPAWN    ',FWPAWN);
      PRIONE('FWROOK    ',FWROOK);
      PRIONE('WINDOW    ',WINDOW);
      RDRERR(' ILLEGAL  VARIABLE NAME       ');

      END;
  END;  (* PLECMD *)


  PROCEDURE PRICMD;                   (* COMMAND - PRINT BOARD *)

  BEGIN
    IF  RDRGNT(INRA)   THEN
      PRINTB(MBORD)
    ELSE
      PRINTB(BOARD.RBIS);
  END;  (* PRICMD *)


  PROCEDURE PAMCMD;                   (* COMMAND - PRINT ATTACK MAP *)

  BEGIN
    WHILE RDRGNT(INRA) DO
      IF INRA[AA] = 'T' THEN
        PRINAM(ATKTO)
      ELSE
        IF INRA[AA] = 'F' THEN
          PRINAM(ATKFR)
        ELSE
          RDRERR(' ATTACK MAP NOT TO OR FROM    ');
  END;  (* PAMCMD *)


  PROCEDURE POPCMD;                    (* COMMAND - PRINT OTHER STUFF *)

  VAR
    INTQ : TQ;                         (* CASTLE TYPE INDEX *)

  BEGIN
    WITH BOARD DO
    BEGIN
      WRITELN(XTMA[RBTM],' TO MOVE.');
      WRITELN(RBTS,' ENPASSANT.');
      WRITELN('MOVE NUMBER ',RBTI);
      FOR  INTQ := LS  TO DL DO
        IF   INTQ IN RBSQ   THEN
          WRITELN(XTQA[INTQ],' SIDE CASTLE LEGAL.');
    END;
  END;  (* POPCMD *)


  PROCEDURE PMVCMD;                    (* COMMAND - PRINT MOVE LIST *)

  VAR
    INTW : TW;                         (* MOVES LIST INDEX *)

  BEGIN
    LSTMOV;                            (* LIST LEGAL MOVES *)
    FOR INTW := AW TO JNTW-1 DO
    BEGIN
      WRITE(INTW:4,'   ');
      PRIMOV(MOVES[INTW]);
      IF INTW/LPP = INTW DIV LPP THEN
        PAUSER;
    END;
  END;  (* PMVCMD  *)


  PROCEDURE SWICMD;                    (* COMMAND - FLIP SWITCH *)

  LABEL
    21;                                (* SWITCH OPTION EXIT *)

    PROCEDURE SWIONE                   (* PROCESS ONE SWITCH *)
      (A:RA;                           (* SWITCH NAME *)
       VAR B:TB);                      (* SWITCH *)

    VAR
      IMTJ : TJ;                       (* SAVE COMMAND INDEX *)

    BEGIN
      IF INRA = A THEN
      BEGIN
        IMTJ := JNTJ;                  (* SAVE CURRENT POSITION *)
        IF RDRGNT(INRA) THEN
        BEGIN
          IF INRA = 'ON        ' THEN
            B := TRUE                  (* TURN SWITCH ON *)
          ELSE
            IF INRA = 'OFF       ' THEN
              B := FALSE               (* TURN SWITCH OFF *)
            ELSE
              JNTJ := IMTJ;            (* RESTORE CURRENT POSITION *)
          PRISWI(A,B);                 (* PRINT SWITCH VALUE *)
          END
        ELSE
        BEGIN
          PRISWI(A,B);
        END;
      GOTO 21;                         (* SWITCH OPTION EXIT *)
      END;
    END;  (* SWIONE *)


  BEGIN (* SWICMD *)
  21:  (* SWITCH OPTION EXIT *)
    WHILE RDRGNT(INRA) DO
    BEGIN
      SWIONE('EC        ',SWEC);
      SWIONE('PA        ',SWPA);
      SWIONE('PS        ',SWPS);
      SWIONE('RE        ',SWRE);
      SWIONE('SU        ',SWSU);
      SWIONE('TR        ',SWTR);
      RDRERR(' INVALID SWITCH OPTION        ');
    END;
  END;  (* SWICMD *)


  PROCEDURE STACMD;                    (* COMMAND - STATUS CHANGES *)

  LABEL
    21;                                (* STATUS COMMAND OPTION EXIT *)

  VAR
    INRA : RA;                         (* CURRENT TOKEN *)
    INTM : TM;                         (* SIDE BEING PROCESSED *)

      PROCEDURE STAEPF                 (* PROCESS EP FILE *)
        (A:RA;                         (* TEST TOKEN *)
         B:TF);                        (* EQUIVALENT FILE *)

      BEGIN
        IF A = INRA THEN
        BEGIN
          IF INTM = LITE THEN
            BOARD.RBTS := XTRFS[R6,B]
          ELSE
            BOARD.RBTS := XTRFS[R3,B];
          GOTO 21;                     (* EXIT STATUS OPTION *)
        END;
    END;  (* STAEPF *)


    PROCEDURE STACAK;                  (* ALLOW CASTLE KING SIDE *)

    BEGIN
      IF INTM = LITE THEN
        BOARD.RBSQ := BOARD.RBSQ + [LS]
      ELSE
        BOARD.RBSQ := BOARD.RBSQ + [DS];
    END;  (* STACAK *)


    PROCEDURE STACAQ;                  (* ALLOW CASTLE QUEEN SIDE *)

    BEGIN
      IF   INTM  = LITE   THEN
        BOARD.RBSQ  := BOARD.RBSQ  +   [LL]
      ELSE
        BOARD.RBSQ  := BOARD.RBSQ  +   [DL];
    END;  (* STACAQ *)


    PROCEDURE STADRK;                  (* SET BLACK OPTIONS *)

    BEGIN
      INTM := DARK;
    END;  (* STADRK *)


    PROCEDURE STAENP;                  (* SET ENPASSANT FILE *)

    BEGIN
      IF NOT RDRGNT(INRA) THEN
      BEGIN
        CLSTAT;                        (* CLEAR STATUS *)
        RDRERR(' ENPASSANT FILE OMITTED       ');
      END;
      STAEPF('QR        ',F1);
      STAEPF('QN        ',F2);
      STAEPF('QB        ',F3);
      STAEPF('Q         ',F4);
      STAEPF('K         ',F5);
      STAEPF('KB        ',F6);
      STAEPF('KN        ',F7);
      STAEPF('KR        ',F8);
      CLSTAT;                          (* CLEAR STATUS *)
      RDRERR(' ILLEGAL ENPASSANT FILE       ');
    END;  (* STAENP *)


    PROCEDURE STAGOS;                  (* SET SIDE TO MOVE *)

    BEGIN
      BOARD.RBTM := INTM;
      JNTM := INTM;
    END;  (* STAGOS *)


    PROCEDURE STALIT;                  (* SET WHITE OPTIONS *)

    BEGIN
      INTM := LITE;
    END;  (* STALIT *)


    PROCEDURE STANUM;                  (* SET MOVE NUMBER *)

    BEGIN
      BOARD.RBTI := RDRNUM;
    END;  (* STANUM *)


    PROCEDURE STAOPT                   (* TEST STATUS OPTION *)
      (A:RA;                           (* TEST OPTION *)
       PROCEDURE STAXXX);              (* PROCEDURE TO EXECUTE IF EQUAL *)

    BEGIN
      IF INRA = A THEN
      BEGIN
        STAXXX;                        (* EXECUTE PROCEDURE *)
        GOTO 21;                       (* EXIT STATUS OPTION *)
      END;
    END;  (* STAOPT *)


  BEGIN (* STACMD *)
    CLSTAT;                            (* CLEAR STATUS *)
    INTM := LITE;                      (* DEFAULT SIDE WHITE *)
21: (* STATUS OPTION EXIT *)
    WHILE RDRGNT(INRA) DO
    BEGIN
      STAOPT('D         ',STADRK);
      STAOPT('EP        ',STAENP);
      STAOPT('G         ',STAGOS);
      STAOPT('L         ',STALIT);
      STAOPT('N         ',STANUM);
      STAOPT('OO        ',STACAK);
      STAOPT('OOO       ',STACAQ);
      CLSTAT;
      RDRERR(' INVALID STATUS OPTION        ');
    END;
  END;  (* STACMD *)


  PROCEDURE WHACMD;                    (* COMMAND - WHAT *)

  BEGIN
    WRITELN(MOVMS);                    (* PRINT LAST MESSAGE *)
  END;  (* WHACMD *)


BEGIN  (* READER *)
11: (* COMMAND EXIT *)
  WHILE NOT RDRMOV DO
    RDLINE;
  IF SWEC THEN
  BEGIN                                (* ECHO LINE *)
    WRITE(' ');
    FOR INTJ := AJ TO ZJ-1 DO
      WRITE(ILINE[INTJ]);
    WRITELN(' ');
    END;
  IF ILINE[AJ+1] IN  ['A'..'W','Y','Z'] THEN
  BEGIN
    INRA :=  '          ';             (* EXTRACT KEYWORD *)
    INRA[AA] := ILINE[AJ];
    INRA[AA+1] := ILINE[AJ+1];
    RDRSFT;                            (* SKIP FIRST TOKEN *)
    RDRCMD('BO        ',BOACMD);
    RDRCMD('EN        ',ENDCMD);
    RDRCMD('GO        ',GONCMD);
    RDRCMD('IN        ',INICMD);
    RDRCMD('LE        ',LETCMD);
    RDRCMD('PB        ',PAMCMD);
    RDRCMD('PO        ',POPCMD);
    RDRCMD('PL        ',PLECMD);
    RDRCMD('PM        ',PMVCMD);
    RDRCMD('PR        ',PRICMD);
    RDRCMD('ST        ',STACMD);
    RDRCMD('SW        ',SWICMD);
    RDRCMD('WH        ',WHACMD);
    RDRERR('* IMWALID COMMAND             ');
  END;
END;  (* READER *)


PROCEDURE MINENG                       (* GENERATE MINIMUM
                                          ENGLISH NOTATION *)
  (A:RM;                               (* MOVE TO NOTATE *)
   B:RA);                              (* LEADING COMMENT *)

VAR 
 INTN : TN;                            (* MESSAGE INDEX *)

  PROCEDURE ADDCHR                     (* ADD CHARACTER TO MESSAGE *)
    (A:TC);                            (* CHARACTER *)

  BEGIN
    MOVMS[INTN] := A;                  (* ADD CHARACTER *)
    IF INTN < ZN THEN
      INTN := INTN+1;                  (* ADVANCE POINTER *)
  END;  (* ADDCHR *)


  PROCEDURE ADDSQR                     (* ADD SQUARE TO MESSAGE *)
  (A:TS;                               (* SQUARE TO ADD *)
   B:RD);                              (* SQUARE SYNTAX *)

  BEGIN
    WITH B DO
    BEGIN
      IF RDPC THEN
        ADDCHR(XTUC[XTPU[MBORD[A]]]);
      IF RDSL THEN
        ADDCHR('/');
      IF RDKQ THEN
        IF XTSF[A] IN [F1..F4] THEN
          ADDCHR('Q')
        ELSE ADDCHR('K');
      IF RDNB THEN
        CASE XTSF[A] OF
          F1,F8: ADDCHR('R');
          F2,F7: ADDCHR('N');
          F3,F6: ADDCHR('B');
          F4   : ADDCHR('Q');
          F5   : ADDCHR('K');
        END;
      IF RDRK THEN
        IF JNTM = LITE THEN
          CASE XTSR[A] OF
            R1: ADDCHR('1');
            R2: ADDCHR('2');
            R3: ADDCHR('3');
            R4: ADDCHR('4');
            R5: ADDCHR('5');
            R6: ADDCHR('6');
            R7: ADDCHR('7');
            R8: ADDCHR('8');
          END
        ELSE
          CASE XTSR[A] OF
            R1: ADDCHR('8');
            R2: ADDCHR('7');
            R3: ADDCHR('6');
            R4: ADDCHR('5');
            R5: ADDCHR('4');
            R6: ADDCHR('3');
            R7: ADDCHR('2');
            R8: ADDCHR('1');
          END;
    END;
  END;  (* ADSQR *)


  PROCEDURE ADDWRD                     (* ADD WORD TO MESSAGE *)
    (A:RA;                             (* TEXT OF WORD *)
     B:TA);                            (* LENGTH OF WORD *)

  VAR
    INTA : TA;                         (* CHARACTER INDEX *)

  BEGIN
    FOR INTA := AA TO B DO
      ADDCHR(A[INTA]);
  END;  (* ADDWRD *)


  FUNCTION DIFFER                      (* COMPARE MOVES *)
    (A,B:RM)                           (* MOVES TO COMPARE *)
     : TB;                             (* TRUE IF MOVES ARE DIFFERENT *)

  VAR
    INTB : TB;                         (* SCRATCH *)

  BEGIN
    INTB := (A.RMFR <> B.RMFR) OR (A.RMTO <> B.RMTO) OR (A.RMCP <> B.RMCP);
    IF A.RMPR = B.RMPR THEN
      IF A.RMPR THEN
        DIFFER := INTB OR (A.RMPP <> B.RMPP)
      ELSE
        IF A.RMOO = B.RMOO THEN
          IF A.RMOO THEN
            DIFFER := INTB OR (A.RMQS <> B.RMQS)
          ELSE
            DIFFER := INTB
        ELSE
          DIFFER := TRUE
    ELSE
      DIFFER := TRUE;
  END;  (* DIFFER *)


  PROCEDURE SETSQD                     (* DEFINE SPECIFIC SQUARE
                                          DESCRIPTOR *)
    (A:TS;                             (* SQUARE TO DESCRIBE *)
     B:RD;                             (* SYNTAX TO USE *)
     VAR C:SR;                         (* SET OF POSSIBLE RANKS *)
     VAR O:SF);                        (* SET OF POSSIBLE FILES *)

  BEGIN
    C := [R1..R8];                     (* INITIALIZE TO DEFAULTS *)
    O := [F1..F8];
    WITH B DO
    BEGIN
      IF RDKQ AND RDNB THEN
        O := [XTSF[A]];
      IF (NOT RDKQ) AND RDNB THEN
        CASE XTSF[A] OF
          F1,F8: O := [F1,F8];
          F2,F7: O := [F2,F7];
          F3,F6: O := [F3,F6];
          F4   : O := [F4];
          F5   : O := [F5];
        END;
      IF RDRK THEN
        C := [XTSR[A]];
    END;
  END;  (* SETSQD *)


  PROCEDURE MINGEN                     (* PRODUCE MINIMUM
                                          ENGLISH NOTATION FOR
                                          MOVES AND CAPTURES *)
    (A:RM;                             (* MOVE OR CAPTURE *)
     B:TI;                             (* FIRST SYNTAX TABLE ENTRY *)
     C:TI);                            (* LAST SYNTAX TABLE ENTRY *)

  LABEL
    21,                                (* EXIT AMBIGUOUS MOVE SCAN *)
    22;                                (* EXIT MINGEN *)

  VAR
    INTG : TG;                         (* PROMOTION PIECE *)
    INTI : TI;                         (* SYNTAX TABLE INDEX *)
    INTW : TW;                         (* MOVES INDEX *)
    INLR : SR;                         (* RANKS DEFINED OH LEFT *)
    INRR : SR;                         (* RANKS DEFINED ON RIGHT *)
    INLF : SF;                         (* FILES DEFINED OH LEFT *)
    INRF : SF;                         (* FILES DEFINED ON RIGHT *)

  BEGIN
    FOR INTI := B TO C DO              (* FOR EACH SYNTAX ENTRY *)
      WITH SYNTX[INTI] DO
      BEGIN
        IF A.RMPR THEN
          INTG := A.RMPP
        ELSE
          INTG := PB;
        SETSQD(A.RMFR,RYLS,INLR,INLF); (* SET SQUARE SETS *)
        SETSQD(A.RMTO,RYRS,INRR,INRF);
        FOR INTW := AW+1 TO JNTW-1 DO
          IF DIFFER(MOVES[INTW],A) THEN
            IF (MBORD[A.RMFR] = MBORD[MOVES[INTW].RMFR]) AND
               (A.RMCP = MOVES[INTW].RMCP) THEN
              WITH MOVES[INTW] DO
                IF (XTSR[RMFR] IN INLR) AND
                   (XTSR[RMTO] IN INRR) AND
                   (XTSF[RMFR] IN INLF) AND
                   (XTSF[RMTO] IN INRF) AND
                  ((RMPR AND (INTG = RMPP)) OR (NOT RMPR)) THEN
                  GOTO 21;             (* ANOTHER MOVE LOOKS THE SAME *)

        (* NO OTHER MOVE LOOKS THE SAME *)
        ADDSQR(A.RMFR,RYLS);           (* ADD FROM SQUARE *)
        ADDCHR(RYCH);                  (* ADD MOVE OR CAPTURE *)
        ADDSQR(A.RMTO,RYRS);           (* AD TO SQUARE *)
        GOTO 22;                       (* EXIT MINGEN *)
  21:  (* TRY NEXT SYNTAX *)
      END;
  22: (* EXIT MINGEN *)
  END;  (* MINGEN *)

BEGIN  (* MINENG *)
  MOVMS := '                              ';
                                       (* CLEAR MESSAGE *)
  INTN := AN+1;                        (* INITIALIZE MESSAGE INDEX *)
  ADDWRD(B,ZA);                        (* ADD INITIAL COMMENT *)
  ADDWRD('-         ',2);
  WITH A DO
  BEGIN
    IF RMOO THEN                       (* CASTLE *)
       BEGIN
       ADDWRD('O-O       ',3);
       IF RMQS THEN
          ADDWRD('-O        ',2);
       END
    ELSE                               (* NOT CASTLE *)
      IF RMCA THEN                     (* CAPTURE *)
        MINGEN(A,SYNCF,SYNCL)
      ELSE                             (* SIMPLE MOVE *)
        MINGEN(A,SYNMF,SYNML);
    IF RMPR THEN                       (* PROMOTION *)
    BEGIN
      ADDCHR('=');
      ADDCHR(XTGC[RMPP]);
    END;
    ADDWRD('.         ',3);
    IF RMCH THEN                       (* CHECK *)
    BEGIN
      ADDWRD('CHECK     ',5);
      IF RMMT THEN                     (* CHECKMATE *)
        ADDWRD('MATE      ',4);
      ADDCHR('.');
    END
    ELSE
      IF RMMT THEN                     (* STALEMATE *)
        ADDWRD('STALEMATE.',10);
  END;
END;  (* MINENG *)


PROCEDURE MYMOVE;                      (* MAKE MACHINES MOVE *)

VAR 
  INRM : RM;                           (* THE MOVE *)

BEGIN
  CREATE;                              (* INITIALIZE DATA BASE *)
  INRM := MOVES[SEARCH];               (* FLND THE BEST MOVE *)
  IF INRM.RMIL THEN
  BEGIN                                (* NO MOVE FOUND *)
    GOING := 0;
    IF LSTMV.RMCH THEN                 (* CHECKMATE *)
      WRITELN(' CONGRATULATIONS.')
    ELSE                               (* STALEMATE *)
      WRITELN(' DRAWN. ');
  END
  ELSE
  BEGIN
    MINENG(INRM,'  MY MOVE ');         (* TRANSLATE MOVE TO ENGLISH *)
    WRITELN(MOVMS);                    (* TELL THE PLAYER *)
    THEMOV(INRM);                      (* MAKE THE MOVE *)
    IF SWSU THEN
      WRITELN(BOARD.RBTI,'.',NODES,' NODES,', BSTVL[AK]);
  END;
END;  (* MYMOVE *)


PROCEDURE YRMOVE;                      (* MAKE PLAYERS MOVE *)

LABEL 
  11, 12, 13, 14, 15,                  (* SYNTAX NODES *)
  16,                                  (* SYNTAX ERROR *)
  17,                                  (* AMBIGUOUS MOVE *)
  18,                                  (* NORMAL EXIT *)
  { [sam] added one more jump to simulate jumpins }
  19;

VAR 
  INTB : TB;                           (* VALID MOVE FOUND *)
  INTC : TC;                           (* CURRENT CHARACTER *)
  INTW : TJ;                           (* MOVES INDEX *)
  INTP : TP;                           (* MOVING PIECE *)
  INCP : TP;                           (* CAPTURED PIECE *)
  IFCA : TB;                           (* CAPTURE *)
  IFPR : TB;                           (* PROMOTION *)
  IFOO : TB;                           (* CASTLE *)
  IFQS : TB;                           (* QUEEN SIDE CASTLE *)
  INTG : TG;                           (* PROMOTION TYPE *)
  IFMV : TB;                           (* MOVE FOUND *)
  IFLD : TB;                           (* R, N, OR B ON LEFT *)
  IFLF : TB;                           (* K OR Q ON LEFT *)
  IFRD : TB;                           (* R, N, OR B ON RIGHT *)
  IFRF : TB;                           (* K OR Q ON RIGHT *)
  INLF : SF;                           (* FILES ON LEFT *)
  INLR : SR;                           (* RANKS ON LEFT *)
  INRF : SF;                           (* FILES ON RIGHT *)
  INRR : SR;                           (* RANKS ON RIGHT *)
  INRM : RM;                           (* THE MOVE *)
  { used to simulate a inside structural jump in }
  jumpin: boolean;

  PROCEDURE  YRMHIT;                   (* FOUND A MOVE.  EXITS
                                          TO AMBIGUOUS MOVE IF THIS
                                          IS THE SECOND POSSIBLE MOVE.
                                          SAVES THE MOVE IN INRM
                                          OTHERWISE. *)

  BEGIN
    IF IFMV THEN begin

       WRITELN('   AMBIGUOUS MOVE.');
       GOTO 17;              (* SECOND POSSIBLE MOVE *)

    end;
    IFMV := TRUE;                      (* FIRT POSSIBLE MOVE *)
    INRM := MOVES[INTW];               (* SAVE MOVE *)
  END;  (* YRMHIT *)


  PROCEDURE YRMCOM;                    (* COMPARE SQUARES.  CALLS YRHMIT
                                          IF MOVES[INTW] MOVES THE
                                          RIGHT TYPE OF PIECE, CAPTURES
                                          THE RIGHT TYPE OF PIECE, AND
                                          MOVES TO AND FROM POSSIBLE
                                          SQUARES *)

  BEGIN
    WITH MOVES[INTW] DO
      IF (XTSR[RMFR] IN INLR) AND
         (XTSF[RMFR] IN INLF) AND
         (XTSR[RMTO] IN INRR) AND
         (XTSF[RMTO] IN INRF) AND
         (NOT RMIL) AND (BOARD.RBIS[RMFR] = INTP) THEN
        IF RMCA = IFCA THEN
          IF RMCA THEN
            IF RMCP = INCP THEN
              YRMHIT
            ELSE
          ELSE
            YRMHIT;
  END;  (* YRMCOM *)


  PROCEDURE YRMCAP;                    (* SEMANTICS - CAPTURE *)

  BEGIN
    IFCA := TRUE;
  END;  (* YRMCAP *)


  PROCEDURE YRMCAS;                    (* SEMANTICS - CASTLE *)

  BEGIN
    IFOO := TRUE;
  END;  (* YRMCAS *)


  PROCEDURE YRMCPC;                    (* SEMANTICS - CAPTURED PIECE *)

  BEGIN
    CASE INTC OF
     'P': INCP := XTUMP[EP,OTHER[JNTM]];
     'R': INCP := XTUMP[ER,OTHER[JNTM]];
     'N': INCP := XTUMP[EN,OTHER[JNTM]];
     'B': INCP := XTUMP[EB,OTHER[JNTM]];
     'Q': INCP := XTUMP[EQ,OTHER[JNTM]];
    END;
  END;  (* YRMCPC *)


  PROCEDURE YRMCQS;                    (* SEMANTICS - CASTLE LONG *)

  BEGIN
    IFQS := TRUE;
  END;  (* YRMCQS *)


  PROCEDURE YRMLKQ;                    (* SEMANTICS - K OR Q ON LEFT *)

  BEGIN
    CASE INTC OF
     'K': INLF := [F5..F8] * INLF;     (* KING SIDE *)
     'Q': INLF := [F1..F4] * INLF;     (* QUEEN SIDE *)
    END;
    IFLF := TRUE;
  END;  (* YRMLKQ *)


  PROCEDURE YRMLRB;                    (* SEMANTICS - R, N, OR B ON LEFT *)

  BEGIN
    CASE INTC OF
     'R': INLF := [F1,F8] * INLF;      (* ROOK FILE *)
     'N': INLF := [F2,F7] * INLF;      (* KNIGHT FILE *)
     'B': INLF := [F3,F6] * INLF;      (* BISHOP FILE *)
    END;
    IFLD := TRUE;
  END;  (* YRMLRB *)


  PROCEDURE YRMLRK;                    (* SEMANTICS - RANK ON LEFT *)

  BEGIN
    IF JNTM = LITE THEN
      CASE INTC OF
       '1': INLR := [R1];
       '2': INLR := [R2];
       '3': INLR := [R3];
       '4': INLR := [R4];
       '5': INLR := [R5];
       '6': INLR := [R6];
       '7': INLR := [R7];
       '8': INLR := [R8];
      END
    ELSE
      CASE INTC OF
       '1': INLR := [R8];
       '2': INLR := [R7];
       '3': INLR := [R6];
       '4': INLR := [R5];
       '5': INLR := [R4];
       '6': INLR := [R3];
       '7': INLR := [R2];
       '8': INLR := [R1];
     END;
  END;  (* YRMLRK *)


  PROCEDURE YRMNUL;                    (* SEMANTICS - NULL *)

  BEGIN
  END;(* YRMNUL *)


  PROCEDURE YRMPCM;                    (* SEMANTICS - PIECE MOVED *)

  BEGIN
    CASE INTC OF
     'P': INTP := XTUMP[EP,JNTM];      (* PAWN *)
     'R': INTP := XTUMP[ER,JNTM];      (* ROOK *)
     'N': INTP := XTUMP[EN,JNTM];      (* KNIGNT *)
     'B': INTP := XTUMP[EB,JNTM];      (* BISHOP *)
     'Q': INTP := XTUMP[EQ,JNTM];      (* QUEEN *)
     'K': INTP := XTUMP[EK,JNTM];      (* KING *)
    END;
  END;  (* YRMPCM  *)

  PROCEDURE YRMPRO;                    (* SEMANTICS - PROMOTION *)

  BEGIN
    CASE INTC OF
     'R': INTG := PR;                  (* ROOK *)
     'N': INTG := PN;                  (* KNIGHT *)
     'B': INTG := PB;                  (* BISHOP *)
     'Q': INTG := PQ;                  (* QUEEN *)
    END;
   IFPR := TRUE;
  END;  (* YRMPRO *)


  PROCEDURE YRMRKQ;                    (* SEMANTICS - K OR Q ON RIGHT *)

  BEGIN
    CASE INTC OF
     'K': INRF := [F5..F8] * INRF;     (* KING SIDE *)
     'Q': INRF := [F1..F4] * INRF;     (* QUEEN SIDE *)
    END;
    IFRF := TRUE;
  END;  (* YRMRKQ *)


  PROCEDURE YRMRRB;                    (* SEMANTICS - R, N, OR 8 ON RIGHT *)

  BEGIN
    CASE INTC OF
     'R':  INRF := [F1,F8] * INRF;     (* ROOK FILE *)
     'N':  INRF := [F2,F7] * INRF;     (* KNIGHT FILE *)
     'B':  INRF := [F3,F6] * INRF;     (* BISHOP FILE *)
    END;
    IFRD := TRUE;
  END;  (* YRMRRB *)


  PROCEDURE YRMRRK;                    (* SEMANTICS - RANK ON RIGHT *)

  BEGIN
    IF JNTM = LITE THEN
      CASE INTC OF
       '1': INRR := [R1];
       '2': INRR := [R2];
       '3': INRR := [R3];
       '4': INRR := [R4];
       '5': INRR := [R5];
       '6': INRR := [R6];
       '7': INRR := [R7];
       '8': INRR := [R8];
      END
    ELSE
      CASE INTC OF
       '1': INRR := [R8];
       '2': INRR := [R7];
       '3': INRR := [R6];
       '4': INRR := [R5];
       '5': INRR := [R4];
       '6': INRR := [R3];
       '7': INRR := [R2];
       '8': INRR := [R1];
      END;
  END;  (* YRMRRK *)


  FUNCTION NCHIN                       (* DETERMLNE IF NEXT INPUT
                                          CHARACTER IS NOT IN A GIVEN
                                          SET *)
    (A:SC;                             (* SET OF CHARACTERS TO CHECK *)
     PROCEDURE YRMXXX)                 (* SEMANTICS ROUTINE TO CALL
                                          IF NEXT CHARACTER IS IN SET *)
    : TB;                              (* TRUE IF CHARACTER IS NOT IN SET *)

  VAR
    INTB : TB;                         (* SCRATCH *)

  BEGIN
    INTB := NOT (INTC IN A);
    IF NOT INTB THEN
    BEGIN                              (* EXECUTE SEMANTICS ROUTINE *)
      YRMXXX;
      JNTJ := JNTJ+1;                  (* ADVANCE PAST CHARACTER *)
      WHILE (JNTJ < ZJ)
         AND ((ILINE[JNTJ]=  ' ') OR (ORD(ILINE[JNTJ]) > ORD(ZC))) DO
        JNTJ  := JNTJ+1;               (* SKIP BLANKS *)
      INTC := ILINE[JNTJ];             (* NEXT  CHARACTER *)
      IF (INTC = '.') OR (INTC = ';') THEN begin

        jumpin := true; { [sam] set execute jumpin }
        GOTO 19;                       (* EXIT SCAN *)

      end
    END;
    NCHIN := INTB;                     (* RETURN TRUE IF CHARACTER IS NOT
                                          IN STRING *)
  END;  (* NCHIN  *)


BEGIN  (* YRMOVE *)
  jumpin := false; { set no jumpin }
  INTB := FALSE;
  19: { perform jumpin }
  WHILE NOT INTB or jumpin DO
  BEGIN

    if jumpin then goto 15; { [sam] perform the jumpin }

    READER;                            (* READ NEXT MOVE *)
    LSTMOV;                            (* LIST LEGAL MOVES *)

    IFCA := FALSE;
    IFPR := FALSE;
    IFOO := FALSE;
    IFQS := FALSE;
    IFLD := FALSE;
    IFLF := FALSE;
    IFRD := FALSE;
    IFRF := FALSE;
    INTP := MT;
    INCP := MT;
    INLF := [F1..F8];
    INRF := [F1..F8];
    INLR := [R1..R8];
    INRR := [R1..R8];
    INTC := ILINE[JNTJ];

    IF     NCHIN(['P','R','N','B','Q','K'],YRMPCM) THEN GOTO 14;
    IF     NCHIN(['/']                    ,YRMNUL) THEN GOTO 11;
    IF     NCHIN(['K','Q']                ,YRMLKQ) THEN;
    IF     NCHIN(['R','N','B']            ,YRMLRB) THEN;
    IF     NCHIN(['1'..'8']               ,YRMLRK) THEN;
11:  (* LEFT SIDE DONE *)
    IF NOT NCHIN(['-']                    ,YRMNUL) THEN GOTO 12;
    IF     NCHIN(['+','X']                ,YRMCAP) THEN GOTO 16;
    IF     NCHIN(['P','R','N','B','Q']    ,YRMCPC) THEN GOTO 16;
    IF     NCHIN(['/']                    ,YRMNUL) THEN GOTO 13;
12:  (* RIGHT SIDE SQUARE *)
    IF     NCHIN(['K','Q']                ,YRMRKQ) THEN;
    IF     NCHIN(['R','N','B']            ,YRMRRB) THEN;
    IF     NCHIN(['1'..'8']               ,YRMRRK) THEN;
13:  (*  PROMOTION  *)
    IF     NCHIN(['=']                    ,YRMNUL) THEN  GOTO  15;
    IF     NCHIN(['R','N','B','Q']        ,YRMPRO) THEN  GOTO  16;
    GOTO  15;

14:  (*  CASTLING  *)
    IF     NCHIN(['O','0']                ,YRMNUL) THEN GOTO  16;
    IF     NCHIN(['-']                    ,YRMNUL) THEN GOTO  16;
    IF     NCHIN(['O','0']                ,YRMCAS) THEN GOTO  16;
    IF     NCHIN(['-']                    ,YRMCQS) THEN GOTO  15;
    IF     NCHIN(['O','0']                ,YRMNUL) THEN GOTO  16;
15:  (*  SYNTAX  CORRECT   *)
    jumpin := false; { [sam] make sure jumpin off }

    IF IFRF AND NOT IFRD THEN
      INRF := INRF * [F4,F5];          (* SELECT K OR Q FILE *)
    IF IFLF AND NOT IFLD THEN
      INLF := INLF * [F4,F5];          (* SELECT K OR Q FILE *)
    IFMV := FALSE;                     (* NO MOVE FOUND YET *)
    INTW := AW;                        (* INITIALIZE INDEX *)
    WHILE INTW < JNTW DO
      WITH MOVES[INTW] DO
      BEGIN
        IF RMPR = IFPR THEN
          IF RMPR THEN
            IF RMPP = INTG THEN        (* CORRECT PROMOTION TYPE *)
              YRMCOM                   (* COMPARE SQUARES AND PIECES *)
            ELSE
          ELSE                         (* NOT PROMOTION  *)
            IF RMOO = IFOO THEN
              IF RMOO THEN             (* CASTLING *)
                IF RMQS = IFQS THEN    (* CASTLING SAME WAY *)
                  YRMHIT
                ELSE
              ELSE                     (* NOT CASTLING *)
                YRMCOM;                (* COMPARE SQUARES AND PIECES *)
        INTW := INTW+1;                (* ADVANCE MOVES INDEX *)
      END;
    IF IFMV THEN                       (* ONE MOVE FOUND *)
    BEGIN
      MINENG(INRM,'YOUR MOVE ');       (* CONVERT TO OUR STYLE *)
      WRITELN(MOVMS);                  (* PRINT MOVE *)
      THEMOV(INRM);                    (* MAKE THE MOVE *)
      INTB := TRUE;                    (* EXIT YRMOVE *)
    END
    ELSE                               (* NO MOVES FOUND *)
      WRITELN('   ILLEGAL MOVE.');
    GOTO  18;                          (* EXIT *)
16:  (*  SYNTAX  ERROR  *)
    WRITELN(' SYNTAX ERROR.');
    GOTO  18;                          (* EXIT *)
{17:}  (* AMBIGUOUS MOVE *)
    {WRITELN('   AMBIGUOUS MOVE.');}
18:  (* EXIT *)
  END;
17:
END;  (* YRMOVE *)

BEGIN  (* THE PROGRAM *)
  
  jumpin := false; { [sam] set no jumpin }

  WRITELN(' HI.  THIS IS CHESS .5');
  INICON;                              (* INITIALIZE CONSTANTS *)
1:  (* INITIALIZE FOR A NEW GAME *)
  INITAL(BOARD);                       (* INITIALIZE FOR A NEW GAME *)
2:
  REPEAT

    if jumpin then goto 3; { [sam] execute jumpin }

    REPEAT
      YRMOVE;                           (* EXECUTE PLAYERS MOVE *)
    UNTIL SWRE;

3:  (* EXECUTE MACHINES MOVE *)

    jumpin := false; { [sam] clear jumpin flag }

    REPEAT
      MYMOVE;
      IF GOING > 0 THEN
        GOING := GOING-1
    UNTIL GOING = 0;
  UNTIL FALSE;

9:  (* END OF PROGRAM *)
END.


