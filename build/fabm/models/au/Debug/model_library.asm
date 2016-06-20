; mark_description "Intel(R) Visual Fortran Compiler XE for applications running on IA-32, Version 15.0.4.221 Build 20150407";
; mark_description "-nologo -debug:full -Od -fpp -Ie:\\gotm-git\\extras\\netcdf\\win32\\3.6.3\\include -Ie:\\gotm-git\\extras\\n";
; mark_description "etcdf\\win32\\3.6.3\\include\\Debug -Ie:\\Users\\EYA\\GMD\\Sleipner_final\\fabm-git\\src\\drivers\\brom -Ie:";
; mark_description "\\Users\\EYA\\GMD\\Sleipner_final\\fabm-git\\src\\drivers\\brom\\Debug -Ie:\\Users\\EYA\\GMD\\Sleipner_final";
; mark_description "\\fabm-git\\src\\..\\include -Ie:\\Users\\EYA\\GMD\\Sleipner_final\\fabm-git\\src\\..\\include\\Debug -Ie:\\";
; mark_description "Users\\EYA\\GMD\\Sleipner_final\\brom\\build\\fabm\\modules -Ie:\\Users\\EYA\\GMD\\Sleipner_final\\brom\\bui";
; mark_description "ld\\fabm\\modules\\Debug -Ie:\\Users\\EYA\\GMD\\Sleipner_final\\brom\\build\\fabm\\models\\au -Ie:\\Users\\E";
; mark_description "YA\\GMD\\Sleipner_final\\brom\\build\\fabm\\models\\au\\Debug -Ie:\\Users\\EYA\\GMD\\Sleipner_final\\brom\\b";
; mark_description "uild\\fabm\\modules\\Debug -DCMAKE_INTDIR=\"Debug\" -module:.\\Debug -object:fabm_models_au.dir\\Debug/model";
; mark_description "_library.F90.obj -Fdfabm_models_au.dir\\Debug\\vc120.pdb -FaDebug/ -libs:static -threads -dbglibs -c -W1 -Qv";
; mark_description "c12 -Qlocation,link,C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\\\bin";
	.686P
 	.387
	OPTION DOTNAME
	ASSUME	CS:FLAT,DS:FLAT,SS:FLAT
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
TXTST0:
_2__routine_start__AU_MODEL_LIBRARY$_0:
; -- Begin  _AU_MODEL_LIBRARY$
_TEXT	ENDS
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
; mark_begin;
IF @Version GE 800
  .MMX
ELSEIF @Version GE 612
  .MMX
  MMWORD TEXTEQU <QWORD>
ENDIF
IF @Version GE 800
  .XMM
ELSEIF @Version GE 614
  .XMM
  XMMWORD TEXTEQU <OWORD>
ENDIF

	PUBLIC _AU_MODEL_LIBRARY$
_AU_MODEL_LIBRARY$	PROC NEAR 
.B1.1:                          ; Preds .B1.0
L2::
                                                           ;1.8
$LN0:
        push      ebp                                           ;1.8
$LN1:
        mov       ebp, esp                                      ;1.8
$LN2:
        leave                                                   ;1.8
$LN3:
        ret                                                     ;1.8
$LN4:
                                ; LOE
$LN5:
; mark_end;
_AU_MODEL_LIBRARY$ ENDP
$LN_AU_MODEL_LIBRARY$$6:
$LN_AU_MODEL_LIBRARY$$7:
_TEXT	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
; -- End  _AU_MODEL_LIBRARY$
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
_2__routine_start__AU_MODEL_LIBRARY_mp_INITIALIZE_1:
; -- Begin  _AU_MODEL_LIBRARY_mp_INITIALIZE
_TEXT	ENDS
_RDATA	SEGMENT  DWORD PUBLIC FLAT READ  'DATA'
	ALIGN 004H
_INFO_LIST_PACK_0	DD	000000001H
	DD	000000000H
	DD	OFFSET FLAT: _AU_MODEL_LIBRARY_mp_INITIALIZE$BLK..T1767_
	DD	000000000H
__STRLITPACK_23	DD	1634493296
	DW	25963
	DB	0
	DB 1 DUP ( 0H)	; pad
_INFO_LIST_PACK_1	DD	000000001H
	DD	000000000H
	DD	OFFSET FLAT: _AU_MODEL_LIBRARY_mp_INITIALIZE$BLK..T1781_
	DD	000000000H
_RDATA	ENDS
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
; mark_begin;

	PUBLIC _AU_MODEL_LIBRARY_mp_INITIALIZE
_AU_MODEL_LIBRARY_mp_INITIALIZE	PROC NEAR 
; parameter 1(SELF): 8 + ebp
.B2.1:                          ; Preds .B2.0
L8::
                                                           ;23.15
$LN8:
        push      ebp                                           ;23.15
$LN9:
        mov       ebp, esp                                      ;23.15
$LN10:
        sub       esp, 156                                      ;23.15
$LN11:
        mov       eax, DWORD PTR [8+ebp]                        ;26.12
$LN12:
        mov       eax, DWORD PTR [4+eax]                        ;26.12
$LN13:
        mov       DWORD PTR [-140+ebp], eax                     ;26.12
$LN14:
        mov       DWORD PTR [-116+ebp], 0                       ;26.12
$LN15:
        mov       DWORD PTR [-124+ebp], 8                       ;26.12
$LN16:
        mov       DWORD PTR [-112+ebp], 0                       ;26.12
$LN17:
        mov       DWORD PTR [-120+ebp], 0                       ;26.12
$LN18:
        mov       DWORD PTR [-128+ebp], OFFSET FLAT: _AU_PCLAKE_MODEL_LIBRARY_mp_PCLAKE_FACTORY ;26.12
$LN19:
        mov       eax, DWORD PTR [-116+ebp]                     ;26.12
$LN20:
        or        eax, 1                                        ;26.12
$LN21:
        mov       DWORD PTR [-116+ebp], eax                     ;26.12
$LN22:
        mov       DWORD PTR [-120+ebp], 0                       ;26.12
$LN23:
        mov       DWORD PTR [-104+ebp], OFFSET FLAT: _DYNTYPE_PACK_0 ;26.12
$LN24:
        mov       DWORD PTR [-100+ebp], OFFSET FLAT: _TBPLIST_PACK_0 ;26.12
$LN25:
        mov       DWORD PTR [-96+ebp], 0                        ;26.12
$LN26:
        mov       eax, DWORD PTR [-116+ebp]                     ;26.12
$LN27:
        or        eax, 2                                        ;26.12
$LN28:
        mov       DWORD PTR [-116+ebp], eax                     ;26.12
$LN29:
        mov       DWORD PTR [-88+ebp], 0                        ;26.12
$LN30:
        mov       DWORD PTR [-80+ebp], 0                        ;26.12
$LN31:
        mov       DWORD PTR [-84+ebp], 0                        ;26.12
$LN32:
        mov       DWORD PTR [-92+ebp], 0                        ;26.12
$LN33:
        mov       DWORD PTR [-76+ebp], OFFSET FLAT: _INFO_LIST_PACK_0 ;26.12
$LN34:
        mov       DWORD PTR [-72+ebp], 0                        ;26.12
$LN35:
        mov       eax, DWORD PTR [-116+ebp]                     ;26.12
$LN36:
        and       eax, -129                                     ;26.12
$LN37:
        mov       DWORD PTR [-116+ebp], eax                     ;26.12
$LN38:
        mov       eax, DWORD PTR [-116+ebp]                     ;26.12
$LN39:
        or        eax, 2                                        ;26.12
$LN40:
        mov       DWORD PTR [-116+ebp], eax                     ;26.12
$LN41:
        mov       eax, 28                                       ;26.12
$LN42:
        add       eax, DWORD PTR [8+ebp]                        ;26.12
$LN43:
        mov       edx, 4                                        ;26.12
$LN44:
        add       edx, DWORD PTR [eax]                          ;26.12
$LN45:
        mov       eax, DWORD PTR [edx]                          ;26.12
$LN46:
        mov       edx, DWORD PTR [8+ebp]                        ;26.12
$LN47:
        mov       DWORD PTR [esp], edx                          ;26.12
$LN48:
        lea       edx, DWORD PTR [-128+ebp]                     ;26.12
$LN49:
        mov       DWORD PTR [4+esp], edx                        ;26.12
$LN50:
        mov       DWORD PTR [8+esp], OFFSET FLAT: __STRLITPACK_23 ;26.12
$LN51:
        mov       DWORD PTR [12+esp], 6                         ;26.12
$LN52:
        call      eax                                           ;26.12
$LN53:
                                ; LOE ebx ebp esi edi esp
.B2.6:                          ; Preds .B2.1
$LN54:
        add       esp, 16                                       ;26.12
$LN55:
                                ; LOE ebx ebp esi edi esp
.B2.2:                          ; Preds .B2.6
$LN56:
        mov       eax, DWORD PTR [8+ebp]                        ;31.12
$LN57:
        mov       eax, DWORD PTR [4+eax]                        ;31.12
$LN58:
        mov       DWORD PTR [-136+ebp], eax                     ;31.12
$LN59:
        mov       eax, DWORD PTR [8+ebp]                        ;31.12
$LN60:
        mov       eax, DWORD PTR [4+eax]                        ;31.12
$LN61:
        mov       DWORD PTR [-132+ebp], eax                     ;31.12
$LN62:
        mov       DWORD PTR [-52+ebp], 0                        ;31.12
$LN63:
        mov       DWORD PTR [-60+ebp], 8                        ;31.12
$LN64:
        mov       DWORD PTR [-48+ebp], 0                        ;31.12
$LN65:
        mov       DWORD PTR [-56+ebp], 0                        ;31.12
$LN66:
        mov       eax, DWORD PTR [8+ebp]                        ;31.12
$LN67:
        mov       eax, DWORD PTR [eax]                          ;31.12
$LN68:
        mov       DWORD PTR [-64+ebp], eax                      ;31.12
$LN69:
        mov       eax, DWORD PTR [-52+ebp]                      ;31.12
$LN70:
        or        eax, 1                                        ;31.12
$LN71:
        mov       DWORD PTR [-52+ebp], eax                      ;31.12
$LN72:
        mov       DWORD PTR [-56+ebp], 0                        ;31.12
$LN73:
        mov       DWORD PTR [-40+ebp], OFFSET FLAT: _DYNTYPE_PACK_2 ;31.12
$LN74:
        mov       DWORD PTR [-36+ebp], OFFSET FLAT: _TBPLIST_PACK_1 ;31.12
$LN75:
        mov       DWORD PTR [-32+ebp], 0                        ;31.12
$LN76:
        mov       eax, DWORD PTR [-52+ebp]                      ;31.12
$LN77:
        or        eax, 2                                        ;31.12
$LN78:
        mov       DWORD PTR [-52+ebp], eax                      ;31.12
$LN79:
        mov       DWORD PTR [-24+ebp], 0                        ;31.12
$LN80:
        mov       DWORD PTR [-16+ebp], 0                        ;31.12
$LN81:
        mov       DWORD PTR [-20+ebp], 0                        ;31.12
$LN82:
        mov       DWORD PTR [-28+ebp], 0                        ;31.12
$LN83:
        mov       DWORD PTR [-12+ebp], OFFSET FLAT: _INFO_LIST_PACK_1 ;31.12
$LN84:
        mov       DWORD PTR [-8+ebp], 0                         ;31.12
$LN85:
        mov       eax, DWORD PTR [-52+ebp]                      ;31.12
$LN86:
        and       eax, -129                                     ;31.12
$LN87:
        mov       DWORD PTR [-52+ebp], eax                      ;31.12
$LN88:
        mov       eax, DWORD PTR [-52+ebp]                      ;31.12
$LN89:
        or        eax, 2                                        ;31.12
$LN90:
        mov       DWORD PTR [-52+ebp], eax                      ;31.12
$LN91:
        push      eax                                           ;31.12
$LN92:
        lea       eax, DWORD PTR [-64+ebp]                      ;31.12
$LN93:
        mov       DWORD PTR [esp], eax                          ;31.12
$LN94:
        call      _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_INITIALIZE ;31.12
$LN95:
                                ; LOE ebx ebp esi edi esp
.B2.7:                          ; Preds .B2.2
$LN96:
        add       esp, 4                                        ;31.12
$LN97:
                                ; LOE ebx ebp esi edi esp
.B2.3:                          ; Preds .B2.7
$LN98:
        leave                                                   ;32.4
$LN99:
        ret                                                     ;32.4
$LN100:
                                ; LOE
$LN101:
; mark_end;
_AU_MODEL_LIBRARY_mp_INITIALIZE ENDP
$LN_AU_MODEL_LIBRARY_mp_INITIALIZE$102:
$LN_AU_MODEL_LIBRARY_mp_INITIALIZE$103:
_TEXT	ENDS
_RDATA	SEGMENT  DWORD PUBLIC FLAT READ  'DATA'
_DYNTYPE_PACK_0	DD	OFFSET FLAT: __STRLITPACK_24
	DD	OFFSET FLAT: _DYNTYPE_PACK_1
_DYNTYPE_PACK_1	DD	OFFSET FLAT: __STRLITPACK_25
	DD	000000000H
_DYNTYPE_PACK_2	DD	OFFSET FLAT: __STRLITPACK_26
	DD	000000000H
__STRLITPACK_24	DD	1348425025
	DD	1262570563
	DD	1330470725
	DD	1598833988
	DD	1380075852
	DD	593056321
	DD	1162893652
	DD	1128351327
	DD	1498566484
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_25	DD	1296187718
	DD	1348031583
	DD	1411601221
	DD	1598378073
	DD	1163084098
	DD	1146047839
	DD	1180650565
	DD	1330922305
	DW	22866
	DB	0
	DB 1 DUP ( 0H)	; pad
_TBPLIST_PACK_0	DD	OFFSET FLAT: _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_INITIALIZE
	DD	OFFSET FLAT: _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_ADD
	DD	OFFSET FLAT: _AU_PCLAKE_MODEL_LIBRARY_mp_CREATE
__STRLITPACK_26	DD	1296187718
	DD	1348031583
	DD	1411601221
	DD	1598378073
	DD	1163084098
	DD	1146047839
	DD	1180650565
	DD	1330922305
	DW	22866
	DB	0
	DB 1 DUP ( 0H)	; pad
_TBPLIST_PACK_1	DD	OFFSET FLAT: _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_INITIALIZE
	DD	OFFSET FLAT: _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_ADD
	DD	OFFSET FLAT: _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_CREATE
_RDATA	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
; -- End  _AU_MODEL_LIBRARY_mp_INITIALIZE
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
_2__routine_start__AU_MODEL_LIBRARY_mp_CREATE_2:
; -- Begin  _AU_MODEL_LIBRARY_mp_CREATE
_TEXT	ENDS
_BSS	SEGMENT  DWORD PUBLIC FLAT  'BSS'
.T1822_	DB ?	; pad
	ORG $+74	; pad
	DB ?	; pad
	DD 5 DUP (0H)	; pad
.T1836_	DB ?	; pad
	ORG $+74	; pad
	DB ?	; pad
_BSS	ENDS
_RDATA	SEGMENT  DWORD PUBLIC FLAT READ  'DATA'
__STRLITPACK_22	DD	1802792812
	DD	1870028641
	DD	1919251564
	DW	24946
	DB	0
	DB 1 DUP ( 0H)	; pad
_INFO_LIST_PACK_2	DD	000000001H
	DD	000000000H
	DD	OFFSET FLAT: _AU_MODEL_LIBRARY_mp_CREATE$BLK..T1838_
	DD	000000000H
__STRLITPACK_21	DD	1868783978
	DD	1869438818
	DD	6582126
_INFO_LIST_PACK_3	DD	000000001H
	DD	000000000H
	DD	OFFSET FLAT: _AU_MODEL_LIBRARY_mp_CREATE$BLK..T1848_
	DD	000000000H
_RDATA	ENDS
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
; mark_begin;

	PUBLIC _AU_MODEL_LIBRARY_mp_CREATE
_AU_MODEL_LIBRARY_mp_CREATE	PROC NEAR 
; parameter 1(SELF): 8 + ebp
; parameter 2(NAME): 12 + ebp
; parameter 3(MODEL): 16 + ebp
; parameter 4(.tmp..T1786__V$1f43): 20 + ebp
.B3.1:                          ; Preds .B3.0
L13::
                                                          ;34.15
$LN104:
        push      ebp                                           ;34.15
$LN105:
        mov       ebp, esp                                      ;34.15
$LN106:
        sub       esp, 180                                      ;34.15
$LN107:
        mov       DWORD PTR [-84+ebp], edi                      ;34.15
$LN108:
        mov       DWORD PTR [-88+ebp], esi                      ;34.15
$LN109:
        mov       eax, DWORD PTR [20+ebp]                       ;34.27
$LN110:
        mov       DWORD PTR [-148+ebp], eax                     ;34.27
$LN111:
        mov       eax, DWORD PTR [-148+ebp]                     ;34.27
$LN112:
        mov       DWORD PTR [-144+ebp], eax                     ;34.27
$LN113:
        mov       DWORD PTR [.T1822_+12], 224                   ;34.15
$LN114:
        mov       DWORD PTR [.T1822_+16], 1                     ;34.15
$LN115:
        mov       DWORD PTR [.T1822_+8], 0                      ;34.15
$LN116:
        mov       DWORD PTR [.T1822_+36], OFFSET FLAT: _DYNTYPE_PACK_5 ;34.15
$LN117:
        mov       DWORD PTR [.T1822_+40], 0                     ;34.15
$LN118:
        mov       DWORD PTR [.T1822_+52], 0                     ;34.15
$LN119:
        mov       DWORD PTR [.T1822_+60], 0                     ;34.15
$LN120:
        mov       DWORD PTR [.T1822_+56], 0                     ;34.15
$LN121:
        mov       DWORD PTR [.T1822_+48], 0                     ;34.15
$LN122:
        mov       DWORD PTR [.T1822_+64], 0                     ;34.15
$LN123:
        mov       DWORD PTR [.T1822_+68], 0                     ;34.15
$LN124:
        mov       DWORD PTR [.T1836_+12], 224                   ;34.15
$LN125:
        mov       DWORD PTR [.T1836_+16], 1                     ;34.15
$LN126:
        mov       DWORD PTR [.T1836_+8], 0                      ;34.15
$LN127:
        mov       DWORD PTR [.T1836_+36], OFFSET FLAT: _DYNTYPE_PACK_5 ;34.15
$LN128:
        mov       DWORD PTR [.T1836_+40], 0                     ;34.15
$LN129:
        mov       DWORD PTR [.T1836_+52], 0                     ;34.15
$LN130:
        mov       DWORD PTR [.T1836_+60], 0                     ;34.15
$LN131:
        mov       DWORD PTR [.T1836_+56], 0                     ;34.15
$LN132:
        mov       DWORD PTR [.T1836_+48], 0                     ;34.15
$LN133:
        mov       DWORD PTR [.T1836_+64], 0                     ;34.15
$LN134:
        mov       DWORD PTR [.T1836_+68], 0                     ;34.15
$LN135:
        mov       eax, DWORD PTR [20+ebp]                       ;39.20
$LN136:
        mov       DWORD PTR [-140+ebp], eax                     ;39.20
$LN137:
        mov       eax, DWORD PTR [-140+ebp]                     ;39.20
$LN138:
        mov       DWORD PTR [-136+ebp], eax                     ;39.20
$LN139:
        mov       eax, DWORD PTR [12+ebp]                       ;40.16
$LN140:
        mov       DWORD PTR [esp], eax                          ;40.16
$LN141:
        mov       eax, DWORD PTR [-136+ebp]                     ;40.16
$LN142:
        mov       DWORD PTR [-96+ebp], eax                      ;40.16
$LN143:
        cdq                                                     ;40.16
$LN144:
        mov       eax, DWORD PTR [-96+ebp]                      ;40.16
$LN145:
        mov       DWORD PTR [4+esp], eax                        ;40.16
$LN146:
        mov       DWORD PTR [8+esp], edx                        ;40.16
$LN147:
        mov       DWORD PTR [12+esp], OFFSET FLAT: __STRLITPACK_22 ;40.16
$LN148:
        mov       DWORD PTR [16+esp], 14                        ;40.16
$LN149:
        mov       DWORD PTR [20+esp], 0                         ;40.16
$LN150:
        mov       DWORD PTR [24+esp], 2                         ;40.16
$LN151:
        mov       DWORD PTR [28+esp], 0                         ;40.16
$LN152:
        call      _for_cpstr                                    ;40.16
$LN153:
                                ; LOE eax edx ebx ebp esp
.B3.11:                         ; Preds .B3.1
$LN154:
        mov       DWORD PTR [-80+ebp], eax                      ;40.16
$LN155:
        mov       DWORD PTR [-76+ebp], edx                      ;40.16
$LN156:
        add       esp, 32                                       ;40.16
$LN157:
        mov       eax, DWORD PTR [-80+ebp]                      ;40.16
$LN158:
        test      eax, eax                                      ;40.16
$LN159:
        je        .B3.4         ; Prob 50%                      ;40.16
$LN160:
                                ; LOE ebx ebp esp
.B3.2:                          ; Preds .B3.11
$LN161:
        mov       eax, DWORD PTR [16+ebp]                       ;40.71
$LN162:
        mov       eax, DWORD PTR [4+eax]                        ;40.71
$LN163:
        mov       DWORD PTR [-132+ebp], eax                     ;40.71
$LN164:
        mov       eax, DWORD PTR [16+ebp]                       ;40.35
$LN165:
        mov       DWORD PTR [12+eax], 5                         ;40.35
$LN166:
        mov       eax, DWORD PTR [16+ebp]                       ;40.35
$LN167:
        mov       DWORD PTR [4+eax], 1968                       ;40.35
$LN168:
        mov       eax, DWORD PTR [16+ebp]                       ;40.35
$LN169:
        mov       DWORD PTR [16+eax], 0                         ;40.35
$LN170:
        mov       eax, DWORD PTR [16+ebp]                       ;40.35
$LN171:
        mov       DWORD PTR [8+eax], 0                          ;40.35
$LN172:
        mov       eax, 24                                       ;40.35
$LN173:
        add       eax, DWORD PTR [16+ebp]                       ;40.71
$LN174:
        mov       DWORD PTR [eax], OFFSET FLAT: _DYNTYPE_PACK_3 ;40.35
$LN175:
        mov       eax, 28                                       ;40.35
$LN176:
        add       eax, DWORD PTR [16+ebp]                       ;40.35
$LN177:
        mov       DWORD PTR [eax], OFFSET FLAT: _TBPLIST_PACK_2 ;40.35
$LN178:
        mov       eax, 40                                       ;40.35
$LN179:
        add       eax, DWORD PTR [16+ebp]                       ;40.35
$LN180:
        mov       DWORD PTR [eax], 0                            ;40.35
$LN181:
        mov       eax, 48                                       ;40.35
$LN182:
        add       eax, DWORD PTR [16+ebp]                       ;40.35
$LN183:
        mov       DWORD PTR [eax], 0                            ;40.35
$LN184:
        mov       eax, 44                                       ;40.35
$LN185:
        add       eax, DWORD PTR [16+ebp]                       ;40.35
$LN186:
        mov       DWORD PTR [eax], 0                            ;40.35
$LN187:
        mov       eax, 36                                       ;40.35
$LN188:
        add       eax, DWORD PTR [16+ebp]                       ;40.35
$LN189:
        mov       DWORD PTR [eax], OFFSET FLAT: _ALLOC_RECORD_LIST_PACK_0 ;40.35
$LN190:
        mov       eax, 52                                       ;40.35
$LN191:
        add       eax, DWORD PTR [16+ebp]                       ;40.35
$LN192:
        mov       DWORD PTR [eax], OFFSET FLAT: _INFO_LIST_PACK_2 ;40.35
$LN193:
        mov       eax, 56                                       ;40.35
$LN194:
        add       eax, DWORD PTR [16+ebp]                       ;40.35
$LN195:
        mov       DWORD PTR [eax], 0                            ;40.35
$LN196:
        add       esp, -12                                      ;40.35
$LN197:
        mov       DWORD PTR [esp], 1968                         ;40.35
$LN198:
        mov       eax, DWORD PTR [16+ebp]                       ;40.35
$LN199:
        mov       DWORD PTR [4+esp], eax                        ;40.35
$LN200:
        mov       DWORD PTR [8+esp], 262144                     ;40.35
$LN201:
        call      _for_allocate                                 ;40.35
$LN202:
                                ; LOE eax ebx ebp esp
.B3.12:                         ; Preds .B3.2
$LN203:
        mov       DWORD PTR [-128+ebp], eax                     ;40.35
$LN204:
        add       esp, 12                                       ;40.35
$LN205:
                                ; LOE ebx ebp esp
.B3.3:                          ; Preds .B3.12
$LN206:
        mov       eax, DWORD PTR [16+ebp]                       ;40.71
$LN207:
        mov       eax, DWORD PTR [eax]                          ;40.35
$LN208:
        mov       DWORD PTR [-124+ebp], eax                     ;40.35
$LN209:
        mov       eax, DWORD PTR [-124+ebp]                     ;40.35
$LN210:
        mov       edx, OFFSET FLAT: _AU_MODEL_LIBRARY_mp_CREATE$BLK..T1840_ ;40.35
$LN211:
        mov       ecx, 1968                                     ;40.35
$LN212:
        mov       edi, eax                                      ;40.35
$LN213:
        mov       esi, edx                                      ;40.35
$LN214:
        mov       eax, ecx                                      ;40.35
$LN215:
        shr       ecx, 2                                        ;40.35
$LN216:
        rep   movsd                                             ;40.35
$LN217:
        mov       ecx, eax                                      ;40.35
$LN218:
        and       ecx, 3                                        ;40.35
$LN219:
        rep   movsb                                             ;40.35
$LN220:
        jmp       .B3.8         ; Prob 100%                     ;40.35
$LN221:
                                ; LOE ebx ebp esp
.B3.4:                          ; Preds .B3.11
$LN222:
        add       esp, -32                                      ;41.16
$LN223:
        mov       eax, DWORD PTR [12+ebp]                       ;41.16
$LN224:
        mov       DWORD PTR [esp], eax                          ;41.16
$LN225:
        mov       eax, DWORD PTR [-136+ebp]                     ;41.16
$LN226:
        mov       DWORD PTR [-92+ebp], eax                      ;41.16
$LN227:
        cdq                                                     ;41.16
$LN228:
        mov       eax, DWORD PTR [-92+ebp]                      ;41.16
$LN229:
        mov       DWORD PTR [4+esp], eax                        ;41.16
$LN230:
        mov       DWORD PTR [8+esp], edx                        ;41.16
$LN231:
        mov       DWORD PTR [12+esp], OFFSET FLAT: __STRLITPACK_21 ;41.16
$LN232:
        mov       DWORD PTR [16+esp], 11                        ;41.16
$LN233:
        mov       DWORD PTR [20+esp], 0                         ;41.16
$LN234:
        mov       DWORD PTR [24+esp], 2                         ;41.16
$LN235:
        mov       DWORD PTR [28+esp], 0                         ;41.16
$LN236:
        call      _for_cpstr                                    ;41.16
$LN237:
                                ; LOE eax edx ebx ebp esp
.B3.13:                         ; Preds .B3.4
$LN238:
        mov       DWORD PTR [-72+ebp], eax                      ;41.16
$LN239:
        mov       DWORD PTR [-68+ebp], edx                      ;41.16
$LN240:
        add       esp, 32                                       ;41.16
$LN241:
        mov       eax, DWORD PTR [-72+ebp]                      ;41.16
$LN242:
        test      eax, eax                                      ;41.16
$LN243:
        je        .B3.7         ; Prob 50%                      ;41.16
$LN244:
                                ; LOE ebx ebp esp
.B3.5:                          ; Preds .B3.13
$LN245:
        mov       eax, DWORD PTR [16+ebp]                       ;41.68
$LN246:
        mov       eax, DWORD PTR [4+eax]                        ;41.68
$LN247:
        mov       DWORD PTR [-120+ebp], eax                     ;41.68
$LN248:
        mov       eax, DWORD PTR [16+ebp]                       ;41.35
$LN249:
        mov       DWORD PTR [12+eax], 5                         ;41.35
$LN250:
        mov       eax, DWORD PTR [16+ebp]                       ;41.35
$LN251:
        mov       DWORD PTR [4+eax], 1960                       ;41.35
$LN252:
        mov       eax, DWORD PTR [16+ebp]                       ;41.35
$LN253:
        mov       DWORD PTR [16+eax], 0                         ;41.35
$LN254:
        mov       eax, DWORD PTR [16+ebp]                       ;41.35
$LN255:
        mov       DWORD PTR [8+eax], 0                          ;41.35
$LN256:
        mov       eax, 24                                       ;41.35
$LN257:
        add       eax, DWORD PTR [16+ebp]                       ;41.68
$LN258:
        mov       DWORD PTR [eax], OFFSET FLAT: _DYNTYPE_PACK_6 ;41.35
$LN259:
        mov       eax, 28                                       ;41.35
$LN260:
        add       eax, DWORD PTR [16+ebp]                       ;41.35
$LN261:
        mov       DWORD PTR [eax], OFFSET FLAT: _TBPLIST_PACK_3 ;41.35
$LN262:
        mov       eax, 40                                       ;41.35
$LN263:
        add       eax, DWORD PTR [16+ebp]                       ;41.35
$LN264:
        mov       DWORD PTR [eax], 0                            ;41.35
$LN265:
        mov       eax, 48                                       ;41.35
$LN266:
        add       eax, DWORD PTR [16+ebp]                       ;41.35
$LN267:
        mov       DWORD PTR [eax], 0                            ;41.35
$LN268:
        mov       eax, 44                                       ;41.35
$LN269:
        add       eax, DWORD PTR [16+ebp]                       ;41.35
$LN270:
        mov       DWORD PTR [eax], 0                            ;41.35
$LN271:
        mov       eax, 36                                       ;41.35
$LN272:
        add       eax, DWORD PTR [16+ebp]                       ;41.35
$LN273:
        mov       DWORD PTR [eax], OFFSET FLAT: _ALLOC_RECORD_LIST_PACK_1 ;41.35
$LN274:
        mov       eax, 52                                       ;41.35
$LN275:
        add       eax, DWORD PTR [16+ebp]                       ;41.35
$LN276:
        mov       DWORD PTR [eax], OFFSET FLAT: _INFO_LIST_PACK_3 ;41.35
$LN277:
        mov       eax, 56                                       ;41.35
$LN278:
        add       eax, DWORD PTR [16+ebp]                       ;41.35
$LN279:
        mov       DWORD PTR [eax], 0                            ;41.35
$LN280:
        add       esp, -12                                      ;41.35
$LN281:
        mov       DWORD PTR [esp], 1960                         ;41.35
$LN282:
        mov       eax, DWORD PTR [16+ebp]                       ;41.35
$LN283:
        mov       DWORD PTR [4+esp], eax                        ;41.35
$LN284:
        mov       DWORD PTR [8+esp], 262144                     ;41.35
$LN285:
        call      _for_allocate                                 ;41.35
$LN286:
                                ; LOE eax ebx ebp esp
.B3.14:                         ; Preds .B3.5
$LN287:
        mov       DWORD PTR [-116+ebp], eax                     ;41.35
$LN288:
        add       esp, 12                                       ;41.35
$LN289:
                                ; LOE ebx ebp esp
.B3.6:                          ; Preds .B3.14
$LN290:
        mov       eax, DWORD PTR [16+ebp]                       ;41.68
$LN291:
        mov       eax, DWORD PTR [eax]                          ;41.35
$LN292:
        mov       DWORD PTR [-100+ebp], eax                     ;41.35
$LN293:
        mov       eax, DWORD PTR [-100+ebp]                     ;41.35
$LN294:
        mov       edx, OFFSET FLAT: _AU_MODEL_LIBRARY_mp_CREATE$BLK..T1850_ ;41.35
$LN295:
        mov       ecx, 1960                                     ;41.35
$LN296:
        mov       edi, eax                                      ;41.35
$LN297:
        mov       esi, edx                                      ;41.35
$LN298:
        mov       eax, ecx                                      ;41.35
$LN299:
        shr       ecx, 2                                        ;41.35
$LN300:
        rep   movsd                                             ;41.35
$LN301:
        mov       ecx, eax                                      ;41.35
$LN302:
        and       ecx, 3                                        ;41.35
$LN303:
        rep   movsb                                             ;41.35
$LN304:
        jmp       .B3.8         ; Prob 100%                     ;41.35
$LN305:
                                ; LOE ebx ebp esp
.B3.7:                          ; Preds .B3.13
$LN306:
        mov       eax, DWORD PTR [8+ebp]                        ;43.18
$LN307:
        mov       eax, DWORD PTR [4+eax]                        ;43.18
$LN308:
        mov       DWORD PTR [-112+ebp], eax                     ;43.18
$LN309:
        mov       eax, DWORD PTR [8+ebp]                        ;43.18
$LN310:
        mov       eax, DWORD PTR [4+eax]                        ;43.18
$LN311:
        mov       DWORD PTR [-108+ebp], eax                     ;43.18
$LN312:
        mov       DWORD PTR [-52+ebp], 0                        ;43.18
$LN313:
        mov       DWORD PTR [-60+ebp], 8                        ;43.18
$LN314:
        mov       DWORD PTR [-48+ebp], 0                        ;43.18
$LN315:
        mov       DWORD PTR [-56+ebp], 0                        ;43.18
$LN316:
        mov       eax, DWORD PTR [8+ebp]                        ;43.18
$LN317:
        mov       eax, DWORD PTR [eax]                          ;43.18
$LN318:
        mov       DWORD PTR [-64+ebp], eax                      ;43.18
$LN319:
        mov       eax, DWORD PTR [-52+ebp]                      ;43.18
$LN320:
        or        eax, 1                                        ;43.18
$LN321:
        mov       DWORD PTR [-52+ebp], eax                      ;43.18
$LN322:
        mov       DWORD PTR [-56+ebp], 0                        ;43.18
$LN323:
        mov       DWORD PTR [-40+ebp], OFFSET FLAT: _DYNTYPE_PACK_7 ;43.18
$LN324:
        mov       DWORD PTR [-36+ebp], OFFSET FLAT: _TBPLIST_PACK_4 ;43.18
$LN325:
        mov       DWORD PTR [-32+ebp], 0                        ;43.18
$LN326:
        mov       eax, DWORD PTR [-52+ebp]                      ;43.18
$LN327:
        or        eax, 2                                        ;43.18
$LN328:
        mov       DWORD PTR [-52+ebp], eax                      ;43.18
$LN329:
        mov       DWORD PTR [-24+ebp], 0                        ;43.18
$LN330:
        mov       DWORD PTR [-16+ebp], 0                        ;43.18
$LN331:
        mov       DWORD PTR [-20+ebp], 0                        ;43.18
$LN332:
        mov       DWORD PTR [-28+ebp], 0                        ;43.18
$LN333:
        mov       DWORD PTR [-12+ebp], OFFSET FLAT: _INFO_LIST_PACK_1 ;43.18
$LN334:
        mov       DWORD PTR [-8+ebp], 0                         ;43.18
$LN335:
        mov       eax, DWORD PTR [-52+ebp]                      ;43.18
$LN336:
        and       eax, -129                                     ;43.18
$LN337:
        mov       DWORD PTR [-52+ebp], eax                      ;43.18
$LN338:
        mov       eax, DWORD PTR [-52+ebp]                      ;43.18
$LN339:
        or        eax, 2                                        ;43.18
$LN340:
        mov       DWORD PTR [-52+ebp], eax                      ;43.18
$LN341:
        mov       eax, DWORD PTR [20+ebp]                       ;43.54
$LN342:
        mov       DWORD PTR [-104+ebp], eax                     ;43.54
$LN343:
        add       esp, -16                                      ;43.18
$LN344:
        lea       eax, DWORD PTR [-64+ebp]                      ;43.18
$LN345:
        mov       DWORD PTR [esp], eax                          ;43.18
$LN346:
        mov       eax, DWORD PTR [12+ebp]                       ;43.18
$LN347:
        mov       DWORD PTR [4+esp], eax                        ;43.18
$LN348:
        mov       eax, DWORD PTR [16+ebp]                       ;43.18
$LN349:
        mov       DWORD PTR [8+esp], eax                        ;43.18
$LN350:
        mov       eax, DWORD PTR [-104+ebp]                     ;43.18
$LN351:
        mov       DWORD PTR [12+esp], eax                       ;43.18
$LN352:
        call      _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_CREATE  ;43.18
$LN353:
                                ; LOE ebx ebp esp
.B3.15:                         ; Preds .B3.7
$LN354:
        add       esp, 16                                       ;43.18
$LN355:
                                ; LOE ebx ebp esp
.B3.8:                          ; Preds .B3.6 .B3.3 .B3.15
$LN356:
        mov       esi, DWORD PTR [-88+ebp]                      ;47.4
$LN357:
        mov       edi, DWORD PTR [-84+ebp]                      ;47.4
$LN358:
        leave                                                   ;47.4
$LN359:
        ret                                                     ;47.4
$LN360:
                                ; LOE
$LN361:
; mark_end;
_AU_MODEL_LIBRARY_mp_CREATE ENDP
$LN_AU_MODEL_LIBRARY_mp_CREATE$362:
$LN_AU_MODEL_LIBRARY_mp_CREATE$363:
_TEXT	ENDS
_RDATA	SEGMENT  DWORD PUBLIC FLAT READ  'DATA'
	DD 7 DUP (0H)	; pad
_TBPLIST_PACK_2	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_CHILD
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_BULK_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_HORIZONTAL_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_SCALAR_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_OBJECT
	DD	OFFSET FLAT: _FABM_TYPES_mp_FIND_LINK
	DD	OFFSET FLAT: _FABM_TYPES_mp_FIND_OBJECT
	DD	OFFSET FLAT: _FABM_TYPES_mp_FIND_MODEL
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_COUPLING_FOR_LINK
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_COUPLING_FOR_NAME
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_COUPLING_FOR_ID
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_STANDARD_COUPLING_FOR_LINK
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_STANDARD_COUPLING_FOR_ID
	DD	OFFSET FLAT: _FABM_TYPES_mp_GET_REAL_PARAMETER
	DD	OFFSET FLAT: _FABM_TYPES_mp_GET_INTEGER_PARAMETER
	DD	OFFSET FLAT: _FABM_TYPES_mp_GET_LOGICAL_PARAMETER
	DD	OFFSET FLAT: _FABM_TYPES_mp_GET_STRING_PARAMETER
	DD	OFFSET FLAT: _FABM_TYPES_mp_SET_VARIABLE_PROPERTY_REAL
	DD	OFFSET FLAT: _FABM_TYPES_mp_SET_VARIABLE_PROPERTY_INTEGER
	DD	OFFSET FLAT: _FABM_TYPES_mp_SET_VARIABLE_PROPERTY_LOGICAL
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_TO_AGGREGATE_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_STATE_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BOTTOM_STATE_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_SURFACE_STATE_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_DIAGNOSTIC_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_HORIZONTAL_DIAGNOSTIC_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_BULK_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_BULK_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_HORIZONTAL_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_HORIZONTAL_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_INTERFACE_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_GLOBAL_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_GLOBAL_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_BULK_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_HORIZONTAL_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_GLOBAL_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_CONSERVED_QUANTITY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_CUSTOM_CONSERVED_QUANTITY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_STATE_DEPENDENCY_EX
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BOTTOM_STATE_DEPENDENCY_EX
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_SURFACE_STATE_DEPENDENCY_EX
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_BULK_STATE_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_BOTTOM_STATE_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_SURFACE_STATE_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_STATE_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BOTTOM_STATE_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_SURFACE_STATE_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_EXPRESSION_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_HORIZONTAL_EXPRESSION_DEPENDENCY
	DD	OFFSET FLAT: _AU_PP_LOTKA_VOLTERRA_mp_INITIALIZE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_INITIALIZE_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_INITIALIZE_HORIZONTAL_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_INITIALIZE_HORIZONTAL_STATE
	DD	OFFSET FLAT: _AU_PP_LOTKA_VOLTERRA_mp_DO
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_BOTTOM
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_SURFACE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_HORIZONTAL
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_PPDD
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_BOTTOM_PPDD
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_VERTICAL_MOVEMENT
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_LIGHT_EXTINCTION
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_DRAG
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_ALBEDO
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_LIGHT
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_CONSERVED_QUANTITIES
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_HORIZONTAL_CONSERVED_QUANTITIES
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_CHECK_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_CHECK_SURFACE_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_CHECK_BOTTOM_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_FATAL_ERROR
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_LOG_MESSAGE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_PATH
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_BENTHOS
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_BENTHOS_PPDD
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_SURFACE_EXCHANGE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_BEFORE_COUPLING
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_AFTER_COUPLING
	DD 3 DUP (0H)	; pad
_TBPLIST_PACK_3	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_CHILD
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_BULK_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_HORIZONTAL_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_SCALAR_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_OBJECT
	DD	OFFSET FLAT: _FABM_TYPES_mp_FIND_LINK
	DD	OFFSET FLAT: _FABM_TYPES_mp_FIND_OBJECT
	DD	OFFSET FLAT: _FABM_TYPES_mp_FIND_MODEL
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_COUPLING_FOR_LINK
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_COUPLING_FOR_NAME
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_COUPLING_FOR_ID
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_STANDARD_COUPLING_FOR_LINK
	DD	OFFSET FLAT: _FABM_TYPES_mp_REQUEST_STANDARD_COUPLING_FOR_ID
	DD	OFFSET FLAT: _FABM_TYPES_mp_GET_REAL_PARAMETER
	DD	OFFSET FLAT: _FABM_TYPES_mp_GET_INTEGER_PARAMETER
	DD	OFFSET FLAT: _FABM_TYPES_mp_GET_LOGICAL_PARAMETER
	DD	OFFSET FLAT: _FABM_TYPES_mp_GET_STRING_PARAMETER
	DD	OFFSET FLAT: _FABM_TYPES_mp_SET_VARIABLE_PROPERTY_REAL
	DD	OFFSET FLAT: _FABM_TYPES_mp_SET_VARIABLE_PROPERTY_INTEGER
	DD	OFFSET FLAT: _FABM_TYPES_mp_SET_VARIABLE_PROPERTY_LOGICAL
	DD	OFFSET FLAT: _FABM_TYPES_mp_ADD_TO_AGGREGATE_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_STATE_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BOTTOM_STATE_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_SURFACE_STATE_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_DIAGNOSTIC_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_HORIZONTAL_DIAGNOSTIC_VARIABLE
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_BULK_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_BULK_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_HORIZONTAL_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_HORIZONTAL_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_INTERFACE_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_GLOBAL_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_GLOBAL_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_BULK_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_HORIZONTAL_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_NAMED_GLOBAL_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_CONSERVED_QUANTITY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_CUSTOM_CONSERVED_QUANTITY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_STATE_DEPENDENCY_EX
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BOTTOM_STATE_DEPENDENCY_EX
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_SURFACE_STATE_DEPENDENCY_EX
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_BULK_STATE_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_BOTTOM_STATE_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_STANDARD_SURFACE_STATE_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_STATE_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BOTTOM_STATE_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_SURFACE_STATE_DEPENDENCY_OLD
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_BULK_EXPRESSION_DEPENDENCY
	DD	OFFSET FLAT: _FABM_TYPES_mp_REGISTER_HORIZONTAL_EXPRESSION_DEPENDENCY
	DD	OFFSET FLAT: _AU_PP_JACOB_MONOD_mp_INITIALIZE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_INITIALIZE_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_INITIALIZE_HORIZONTAL_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_INITIALIZE_HORIZONTAL_STATE
	DD	OFFSET FLAT: _AU_PP_JACOB_MONOD_mp_DO
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_BOTTOM
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_SURFACE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_HORIZONTAL
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_PPDD
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_BOTTOM_PPDD
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_VERTICAL_MOVEMENT
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_LIGHT_EXTINCTION
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_DRAG
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_ALBEDO
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_LIGHT
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_CONSERVED_QUANTITIES
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_HORIZONTAL_CONSERVED_QUANTITIES
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_CHECK_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_CHECK_SURFACE_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_CHECK_BOTTOM_STATE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_FATAL_ERROR
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_LOG_MESSAGE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_PATH
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_BENTHOS
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_DO_BENTHOS_PPDD
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_GET_SURFACE_EXCHANGE
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_BEFORE_COUPLING
	DD	OFFSET FLAT: _FABM_TYPES_mp_BASE_AFTER_COUPLING
	DD 1 DUP (0H)	; pad
_DYNTYPE_PACK_3	DD	OFFSET FLAT: __STRLITPACK_27
	DD	OFFSET FLAT: _DYNTYPE_PACK_4
_DYNTYPE_PACK_4	DD	OFFSET FLAT: __STRLITPACK_28
	DD	000000000H
_DYNTYPE_PACK_5	DD	OFFSET FLAT: __STRLITPACK_29
	DD	000000000H
_DYNTYPE_PACK_6	DD	OFFSET FLAT: __STRLITPACK_30
	DD	OFFSET FLAT: _DYNTYPE_PACK_4
_DYNTYPE_PACK_7	DD	OFFSET FLAT: __STRLITPACK_31
	DD	000000000H
__STRLITPACK_27	DD	1348425025
	DD	1330405200
	DD	1598114644
	DD	1414287190
	DD	1095914053
	DD	1348031523
	DD	1430347589
	DD	1599098975
	DD	1263816524
	DD	1331060545
	DD	1380275276
	DW	16722
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_28	DD	1296187718
	DD	1348031583
	DD	1411601221
	DD	1598378073
	DD	1163084098
	DD	1146047839
	DW	19525
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_29	DD	1296187718
	DD	1348031583
	DD	1411601221
	DD	1598378073
	DD	1398097234
	DD	1147094085
	DD	1313292617
	DD	1230263119
	DW	67
	DB 2 DUP ( 0H)	; pad
_ALLOC_RECORD_LIST_PACK_0	DD	000000002H
	DD	000000002H
	DD	0000006f4H
	DD	OFFSET FLAT: .T1822_
	DD	000000002H
	DD	000000718H
	DD	OFFSET FLAT: .T1836_
__STRLITPACK_30	DD	1348425025
	DD	1095393104
	DD	1598181187
	DD	1330532173
	DD	1498686276
	DD	1096762704
	DD	1347444565
	DD	1128352351
	DD	1298088527
	DD	1146048079
	DB	0
	DB 3 DUP ( 0H)	; pad
_ALLOC_RECORD_LIST_PACK_1	DD	000000002H
	DD	000000002H
	DD	0000006f4H
	DD	OFFSET FLAT: .T1822_
	DD	000000002H
	DD	000000718H
	DD	OFFSET FLAT: .T1836_
__STRLITPACK_31	DD	1296187718
	DD	1348031583
	DD	1411601221
	DD	1598378073
	DD	1163084098
	DD	1146047839
	DD	1180650565
	DD	1330922305
	DW	22866
	DB	0
	DB 1 DUP ( 0H)	; pad
_TBPLIST_PACK_4	DD	OFFSET FLAT: _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_INITIALIZE
	DD	OFFSET FLAT: _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_ADD
	DD	OFFSET FLAT: _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_CREATE
_RDATA	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
; -- End  _AU_MODEL_LIBRARY_mp_CREATE
_BSS	SEGMENT  DWORD PUBLIC FLAT  'BSS'
	DD 1 DUP (0H)	; pad
	PUBLIC _AU_MODEL_LIBRARY_mp_AU_MODEL_FACTORY
_AU_MODEL_LIBRARY_mp_AU_MODEL_FACTORY	DD 2 DUP (0H)	; pad
	PUBLIC _AU_MODEL_LIBRARY_mp_INITIALIZE$BLK..T1767_
_AU_MODEL_LIBRARY_mp_INITIALIZE$BLK..T1767_	DD 2 DUP (0H)	; pad
	PUBLIC _AU_MODEL_LIBRARY_mp_INITIALIZE$BLK..T1781_
_AU_MODEL_LIBRARY_mp_INITIALIZE$BLK..T1781_	DD 2 DUP (0H)	; pad
_BSS	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
	PUBLIC _AU_MODEL_LIBRARY_mp_CREATE$BLK..T1838_
_AU_MODEL_LIBRARY_mp_CREATE$BLK..T1838_	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD 1 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	000000000H,03ff00000H
	DD	0
	DD	0
	DD	0
	DD	0
	DD	128
	DD	1
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	128
	DD	1
	DD	0
	DD	0
	DD	0
	DD	0
	DD 2 DUP (0H)	; pad
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD 1 DUP (0H)	; pad
	DD	000000000H,000000000H
	DD 1 DUP (0H)	; pad
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD 1 DUP (0H)	; pad
	DD	000000000H,000000000H
	DD 8 DUP (0H)	; pad
	DD 4 DUP (0H)	; pad
	PUBLIC _AU_MODEL_LIBRARY_mp_CREATE$BLK..T1840_
_AU_MODEL_LIBRARY_mp_CREATE$BLK..T1840_	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD 1 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	000000000H,03ff00000H
	DD	0
	DD	0
	DD	0
	DD	0
	DD	128
	DD	1
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	128
	DD	1
	DD	0
	DD	0
	DD	0
	DD	0
	DD 2 DUP (0H)	; pad
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD 1 DUP (0H)	; pad
	DD	000000000H,000000000H
	DD 1 DUP (0H)	; pad
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD 1 DUP (0H)	; pad
	DD	000000000H,000000000H
	DD 8 DUP (0H)	; pad
	DD 4 DUP (0H)	; pad
	PUBLIC _AU_MODEL_LIBRARY_mp_CREATE$BLK..T1848_
_AU_MODEL_LIBRARY_mp_CREATE$BLK..T1848_	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD 1 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	000000000H,03ff00000H
	DD	0
	DD	0
	DD	0
	DD	0
	DD	128
	DD	1
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	128
	DD	1
	DD	0
	DD	0
	DD	0
	DD	0
	DD 2 DUP (0H)	; pad
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD 1 DUP (0H)	; pad
	DD	000000000H,000000000H
	DD 1 DUP (0H)	; pad
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD 1 DUP (0H)	; pad
	DD	000000000H,000000000H
	DD 6 DUP (0H)	; pad
	DD 6 DUP (0H)	; pad
	PUBLIC _AU_MODEL_LIBRARY_mp_CREATE$BLK..T1850_
_AU_MODEL_LIBRARY_mp_CREATE$BLK..T1850_	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD 1 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD 10 DUP (0H)	; pad
	DD	0
	DD	000000000H,03ff00000H
	DD	0
	DD	0
	DD	0
	DD	0
	DD	128
	DD	1
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	0
	DD	128
	DD	1
	DD	0
	DD	0
	DD	0
	DD	0
	DD 2 DUP (0H)	; pad
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD 1 DUP (0H)	; pad
	DD	000000000H,000000000H
	DD 1 DUP (0H)	; pad
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD	-1
	DD 1 DUP (0H)	; pad
	DD	000000000H,000000000H
	DD 6 DUP (0H)	; pad
_DATA	ENDS
_RDATA	SEGMENT  DWORD PUBLIC FLAT READ  'DATA'
	DD 7 DUP (0H)	; pad
__STRLITPACK_0	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_1	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_2	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_3	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_4	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_5	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_6	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_7	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_8	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_9	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_10	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_11	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_12	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_13	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_14	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_15	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_16	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_17	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_18	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_19	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 7 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_20	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
_RDATA	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
EXTRN	_AU_PCLAKE_MODEL_LIBRARY_mp_PCLAKE_FACTORY:BYTE
_DATA	ENDS
EXTRN	_for_allocate:PROC
EXTRN	_for_cpstr:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_INITIALIZE;
EXTRN	_FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_INITIALIZE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_ADD;
EXTRN	_FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_ADD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_ADD_CHILD;
EXTRN	_FABM_TYPES_mp_ADD_CHILD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_ADD_BULK_VARIABLE;
EXTRN	_FABM_TYPES_mp_ADD_BULK_VARIABLE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_ADD_HORIZONTAL_VARIABLE;
EXTRN	_FABM_TYPES_mp_ADD_HORIZONTAL_VARIABLE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_ADD_SCALAR_VARIABLE;
EXTRN	_FABM_TYPES_mp_ADD_SCALAR_VARIABLE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_ADD_OBJECT;
EXTRN	_FABM_TYPES_mp_ADD_OBJECT:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_FIND_LINK;
EXTRN	_FABM_TYPES_mp_FIND_LINK:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_FIND_OBJECT;
EXTRN	_FABM_TYPES_mp_FIND_OBJECT:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_FIND_MODEL;
EXTRN	_FABM_TYPES_mp_FIND_MODEL:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REQUEST_COUPLING_FOR_LINK;
EXTRN	_FABM_TYPES_mp_REQUEST_COUPLING_FOR_LINK:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REQUEST_COUPLING_FOR_NAME;
EXTRN	_FABM_TYPES_mp_REQUEST_COUPLING_FOR_NAME:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REQUEST_COUPLING_FOR_ID;
EXTRN	_FABM_TYPES_mp_REQUEST_COUPLING_FOR_ID:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REQUEST_STANDARD_COUPLING_FOR_LINK;
EXTRN	_FABM_TYPES_mp_REQUEST_STANDARD_COUPLING_FOR_LINK:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REQUEST_STANDARD_COUPLING_FOR_ID;
EXTRN	_FABM_TYPES_mp_REQUEST_STANDARD_COUPLING_FOR_ID:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_GET_REAL_PARAMETER;
EXTRN	_FABM_TYPES_mp_GET_REAL_PARAMETER:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_GET_INTEGER_PARAMETER;
EXTRN	_FABM_TYPES_mp_GET_INTEGER_PARAMETER:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_GET_LOGICAL_PARAMETER;
EXTRN	_FABM_TYPES_mp_GET_LOGICAL_PARAMETER:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_GET_STRING_PARAMETER;
EXTRN	_FABM_TYPES_mp_GET_STRING_PARAMETER:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_SET_VARIABLE_PROPERTY_REAL;
EXTRN	_FABM_TYPES_mp_SET_VARIABLE_PROPERTY_REAL:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_SET_VARIABLE_PROPERTY_INTEGER;
EXTRN	_FABM_TYPES_mp_SET_VARIABLE_PROPERTY_INTEGER:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_SET_VARIABLE_PROPERTY_LOGICAL;
EXTRN	_FABM_TYPES_mp_SET_VARIABLE_PROPERTY_LOGICAL:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_ADD_TO_AGGREGATE_VARIABLE;
EXTRN	_FABM_TYPES_mp_ADD_TO_AGGREGATE_VARIABLE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_BULK_STATE_VARIABLE;
EXTRN	_FABM_TYPES_mp_REGISTER_BULK_STATE_VARIABLE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_BOTTOM_STATE_VARIABLE;
EXTRN	_FABM_TYPES_mp_REGISTER_BOTTOM_STATE_VARIABLE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_SURFACE_STATE_VARIABLE;
EXTRN	_FABM_TYPES_mp_REGISTER_SURFACE_STATE_VARIABLE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_BULK_DIAGNOSTIC_VARIABLE;
EXTRN	_FABM_TYPES_mp_REGISTER_BULK_DIAGNOSTIC_VARIABLE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_HORIZONTAL_DIAGNOSTIC_VARIABLE;
EXTRN	_FABM_TYPES_mp_REGISTER_HORIZONTAL_DIAGNOSTIC_VARIABLE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_NAMED_BULK_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_NAMED_BULK_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_STANDARD_BULK_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_STANDARD_BULK_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_NAMED_HORIZONTAL_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_NAMED_HORIZONTAL_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_STANDARD_HORIZONTAL_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_STANDARD_HORIZONTAL_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_STANDARD_INTERFACE_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_STANDARD_INTERFACE_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_NAMED_GLOBAL_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_NAMED_GLOBAL_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_STANDARD_GLOBAL_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_STANDARD_GLOBAL_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_NAMED_BULK_DEPENDENCY_OLD;
EXTRN	_FABM_TYPES_mp_REGISTER_NAMED_BULK_DEPENDENCY_OLD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_NAMED_HORIZONTAL_DEPENDENCY_OLD;
EXTRN	_FABM_TYPES_mp_REGISTER_NAMED_HORIZONTAL_DEPENDENCY_OLD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_NAMED_GLOBAL_DEPENDENCY_OLD;
EXTRN	_FABM_TYPES_mp_REGISTER_NAMED_GLOBAL_DEPENDENCY_OLD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_STANDARD_CONSERVED_QUANTITY;
EXTRN	_FABM_TYPES_mp_REGISTER_STANDARD_CONSERVED_QUANTITY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_CUSTOM_CONSERVED_QUANTITY;
EXTRN	_FABM_TYPES_mp_REGISTER_CUSTOM_CONSERVED_QUANTITY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_BULK_STATE_DEPENDENCY_EX;
EXTRN	_FABM_TYPES_mp_REGISTER_BULK_STATE_DEPENDENCY_EX:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_BOTTOM_STATE_DEPENDENCY_EX;
EXTRN	_FABM_TYPES_mp_REGISTER_BOTTOM_STATE_DEPENDENCY_EX:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_SURFACE_STATE_DEPENDENCY_EX;
EXTRN	_FABM_TYPES_mp_REGISTER_SURFACE_STATE_DEPENDENCY_EX:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_STANDARD_BULK_STATE_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_STANDARD_BULK_STATE_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_STANDARD_BOTTOM_STATE_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_STANDARD_BOTTOM_STATE_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_STANDARD_SURFACE_STATE_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_STANDARD_SURFACE_STATE_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_BULK_STATE_DEPENDENCY_OLD;
EXTRN	_FABM_TYPES_mp_REGISTER_BULK_STATE_DEPENDENCY_OLD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_BOTTOM_STATE_DEPENDENCY_OLD;
EXTRN	_FABM_TYPES_mp_REGISTER_BOTTOM_STATE_DEPENDENCY_OLD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_SURFACE_STATE_DEPENDENCY_OLD;
EXTRN	_FABM_TYPES_mp_REGISTER_SURFACE_STATE_DEPENDENCY_OLD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_BULK_EXPRESSION_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_BULK_EXPRESSION_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_REGISTER_HORIZONTAL_EXPRESSION_DEPENDENCY;
EXTRN	_FABM_TYPES_mp_REGISTER_HORIZONTAL_EXPRESSION_DEPENDENCY:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_INITIALIZE_STATE;
EXTRN	_FABM_TYPES_mp_BASE_INITIALIZE_STATE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_INITIALIZE_HORIZONTAL_STATE;
EXTRN	_FABM_TYPES_mp_BASE_INITIALIZE_HORIZONTAL_STATE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_DO_BOTTOM;
EXTRN	_FABM_TYPES_mp_BASE_DO_BOTTOM:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_DO_SURFACE;
EXTRN	_FABM_TYPES_mp_BASE_DO_SURFACE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_DO_HORIZONTAL;
EXTRN	_FABM_TYPES_mp_BASE_DO_HORIZONTAL:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_DO_PPDD;
EXTRN	_FABM_TYPES_mp_BASE_DO_PPDD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_DO_BOTTOM_PPDD;
EXTRN	_FABM_TYPES_mp_BASE_DO_BOTTOM_PPDD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_GET_VERTICAL_MOVEMENT;
EXTRN	_FABM_TYPES_mp_BASE_GET_VERTICAL_MOVEMENT:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_GET_LIGHT_EXTINCTION;
EXTRN	_FABM_TYPES_mp_BASE_GET_LIGHT_EXTINCTION:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_GET_DRAG;
EXTRN	_FABM_TYPES_mp_BASE_GET_DRAG:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_GET_ALBEDO;
EXTRN	_FABM_TYPES_mp_BASE_GET_ALBEDO:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_GET_LIGHT;
EXTRN	_FABM_TYPES_mp_BASE_GET_LIGHT:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_GET_CONSERVED_QUANTITIES;
EXTRN	_FABM_TYPES_mp_BASE_GET_CONSERVED_QUANTITIES:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_GET_HORIZONTAL_CONSERVED_QUANTITIES;
EXTRN	_FABM_TYPES_mp_BASE_GET_HORIZONTAL_CONSERVED_QUANTITIES:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_CHECK_STATE;
EXTRN	_FABM_TYPES_mp_BASE_CHECK_STATE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_CHECK_SURFACE_STATE;
EXTRN	_FABM_TYPES_mp_BASE_CHECK_SURFACE_STATE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_CHECK_BOTTOM_STATE;
EXTRN	_FABM_TYPES_mp_BASE_CHECK_BOTTOM_STATE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_FATAL_ERROR;
EXTRN	_FABM_TYPES_mp_BASE_FATAL_ERROR:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_LOG_MESSAGE;
EXTRN	_FABM_TYPES_mp_BASE_LOG_MESSAGE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_GET_PATH;
EXTRN	_FABM_TYPES_mp_BASE_GET_PATH:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_DO_BENTHOS;
EXTRN	_FABM_TYPES_mp_BASE_DO_BENTHOS:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_DO_BENTHOS_PPDD;
EXTRN	_FABM_TYPES_mp_BASE_DO_BENTHOS_PPDD:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_GET_SURFACE_EXCHANGE;
EXTRN	_FABM_TYPES_mp_BASE_GET_SURFACE_EXCHANGE:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_BEFORE_COUPLING;
EXTRN	_FABM_TYPES_mp_BASE_BEFORE_COUPLING:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_BASE_AFTER_COUPLING;
EXTRN	_FABM_TYPES_mp_BASE_AFTER_COUPLING:PROC
; mark_proc_addr_taken _FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_CREATE;
EXTRN	_FABM_TYPES_mp_ABSTRACT_MODEL_FACTORY_CREATE:PROC
; mark_proc_addr_taken _AU_PCLAKE_MODEL_LIBRARY_mp_CREATE;
EXTRN	_AU_PCLAKE_MODEL_LIBRARY_mp_CREATE:PROC
; mark_proc_addr_taken _AU_PP_LOTKA_VOLTERRA_mp_INITIALIZE;
EXTRN	_AU_PP_LOTKA_VOLTERRA_mp_INITIALIZE:PROC
; mark_proc_addr_taken _AU_PP_LOTKA_VOLTERRA_mp_DO;
EXTRN	_AU_PP_LOTKA_VOLTERRA_mp_DO:PROC
; mark_proc_addr_taken _AU_PP_JACOB_MONOD_mp_INITIALIZE;
EXTRN	_AU_PP_JACOB_MONOD_mp_INITIALIZE:PROC
; mark_proc_addr_taken _AU_PP_JACOB_MONOD_mp_DO;
EXTRN	_AU_PP_JACOB_MONOD_mp_DO:PROC
	INCLUDELIB <ifconsol>
	INCLUDELIB <libifcoremt>
	INCLUDELIB <libifport>
	INCLUDELIB <libmmt>
	INCLUDELIB <LIBCMTD>
	INCLUDELIB <libirc>
	INCLUDELIB <svml_dispmt>
	INCLUDELIB <OLDNAMES>
	END
