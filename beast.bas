10 ' --- Slot 0
11 ' color 8
12 DATA 00,00,0F,01,01,01,03,03,07,06,07,00,00,06,07,00
13 DATA 00,00,C0,80,C0,80,80,80,E0,E0,00,00,00,C0,C0,00
14 ' color 9
15 DATA 00,00,00,00,00,00,00,00,00,00,00,07,07,00,00,06
16 DATA 00,00,00,40,00,00,00,00,00,00,00,80,80,00,00,00
17 ' 
18 ' --- Slot 1
19 ' color 8
20 DATA 00,00,0F,01,01,01,03,07,07,05,07,00,00,1C,18,00
21 DATA 00,00,C0,80,C0,80,80,80,C0,C0,00,00,40,60,60,00
22 ' color 9
23 DATA 00,00,00,00,00,00,00,00,00,00,00,07,07,00,00,00
24 DATA 00,00,00,40,00,00,00,00,00,00,00,80,80,00,00,60
25 ' 
26 ' --- Slot 2
27 ' color 8
28 DATA 00,00,07,03,07,03,03,03,0F,0E,01,00,00,06,07,00
29 DATA 00,00,E0,00,00,00,80,80,C0,C0,C0,00,00,C0,C0,00
30 ' color 9
31 DATA 00,00,00,04,00,00,00,00,00,00,00,03,03,00,00,00
32 DATA 00,00,00,00,00,00,00,00,00,00,00,C0,C0,00,00,C0
33 ' 
34 ' --- Slot 3
35 ' color 8
36 DATA 00,00,07,03,07,03,03,03,07,07,01,00,04,0C,0C,00
37 DATA 00,00,E0,00,00,00,80,C0,C0,40,C0,00,00,70,30,00
38 ' color 9
39 DATA 00,00,00,04,00,00,00,00,00,00,00,03,03,00,00,0C
40 DATA 00,00,00,00,00,00,00,00,00,00,00,C0,C0,00,00,00


50 DATA 00,00,00,00,00,00,03,02,05,02,03,00,00,00,00,00
55 DATA 00,00,00,00,00,00,00,C0,60,C0,00,00,00,00,00,00


60 on sprite gosub 2000 : sprite on :

75 color 8,6,1:SCREEN 5,3,0:: cls : :KEYOFF:DEFINTA-Z: :open"grp:"as#1:S=&h7800 : :forI=0 to (4*64-1  +32): READ R$: VPOKE S+I,VAL("&H"+R$):NEXTI:
80 X=100:Y=150 : DX! = RND(1)
90 rem pset(0,30): color 9:  for i=0to61  :print#1,chr$(&hc0+RND(1)*6); : next i
92   pset(0,80): color 8  : for i=0to124:  :print#1,chr$(&hdb+RND(1)*4); : next i
93 LINE(00,120)-(300,182),8,BF: :    PUT SPRITE 0,(X,Y),6,2:PUT SPRITE 1,(X,Y),9,3   : put SPRITE 2,(220,150),6,8:  
99 H =0: F=0 : XX!=220 : YY = 150
100  K$=inkey$: :        vpoke30217,XX!:  K$=inkey$:    :                IFK$=""then100:elsek=asc(k$): 

180 if k=28 then : XX!=XX!-4  : H=H+6: FR=0
190 if k=29 then : XX!=XX!+4   : H=H-6: FR=4

300 F=F+1: h=(H+255)mod255: SET SCROLL H,0,1,1 : if (Fmod4)=0 then FR = FR+2*(F/4mod2) : : vpoke30210, FR*4: vpoke30214, (FR+1)*4:  rem


1000  goto 100

2000   return 






200 ifK=32then PUT SPRITE 0,(X,Y),6,0:PUT SPRITE 1,(X,Y),9,1 : rem LINE(260,160)-(300,182),11,BF: 


XX = XX - .4  :if XX<0 then XX=255 : goto 100 : else





vpoke30208,Y: vpoke30212,y :

:  rem PUT SPRITE 0,(X,Y),6,0:PUT SPRITE 1,(X,Y),9,1:  PUT SPRITE 2,(X+30,Y),6,2:PUT SPRITE 3,(X+30,Y),9,3:


 vpoke30208,

8 * 16 = 
---

/*
SCREEN 5 (256*212 Graphic mode, 16 colours):
Matrix                          0000-69FF
Sprite colours                  7400-75FF
Sprite attribute table          7600-767F
Palette                         7680-769F
Sprite character patterns       7800-7FFF
*/
#define SCR5_MATRIX				0x0000
#define SCR5_SPRCOLOR			0x7400
#define SCR5_SPRATTRIB			0x7600
#define SCR5_PALETTE			0x7680
#define SCR5_SPRPATTERN			0x7800


7	6	5	4	3	2	1	0	 	
Vertical Position	Byte 0
Horizontal Position	Byte 1
Pattern Number	Byte 2
EC	0	0	0	Colour Code	Byte 3






180 ifK=28andCC<MC-1thenCC=CC+1:elseifK=29andCC>0thenCC=CC-1
190 ifk=32 then preset(X+4,Y+7):    preset(X+2,Y+2): S=15 : draw HA$:preset(X,Y):






80 X=100:Y=150:PUT SPRITE 0,(X,Y),6,0:PUT SPRITE 1,(X,Y),14,1:

590 PUT SPRITE 4,(0,16),4,4:PUT SPRITE 5,(0,16),5,5:PUT SPRITE 6,(0,16),11,6:PUT SPRITE 7,(0,16),13,7
600 PUT SPRITE 8,(0,32),4,8:PUT SPRITE 9,(0,32),5,9:PUT SPRITE 10,(0,32),11,10:PUT SPRITE 11,(0,32),13,11
610 PUT SPRITE 12,(0,48),4,12:PUT SPRITE 13,(0,48),5,13:PUT SPRITE 14,(0,48),11,14:PUT SPRITE 15,(0,48),13,15


10 screen 1: cls : locate 10,10 : for i=0to31 : vpoke BASE(5)+i,&hc0+RND(1)*6 : nextI :rem 65
10 SCREEN 1,3,0: color 3,6,6:  vpoke base(6)+27,&hd5: cls : locate 10,10 : for i=32*10to32*15 : vpoke BASE(5)+32+i,&hdb :  nextI :rem 65


10 screen5,0:color 3,1,1:cls:keyoff:open"grp:"as#1:definta-z:R=rnd(-time):
20 :  for i=0to31 :  color 15  :print#1,chr$(&hc0); :color 13 :print#1,chr$(&hc0);: next i
1060 K$=inkey$:IFK$=""then1060:elsek=asc(k$)

20 vpoke base(6)+8,&hd5


10 SCREEN 5
20 CIRCLE(128,105),50,15
30 PAINT(128,95),12,15
40 SET PAGE 0,1
50 CLS
60 LINE(80,80)-(150,140),9,BF
70 LINE(80,80)-(150,140),15,B
80 SET PAGE 1,0
90 ' Inicia scroll
100 FOR X=0 TO 255
110 SET SCROLL X,0,1,1	
120 NEXT


30 DATA &00000000,&00000000,&00000706,&06000000,&00000000,&00000000,&0000F030,&30000000 
60 DATA &00000000,&00000000,&07070000,&00000000
70 DATA &00000000,&00000000,&C0C00000,&00000000
90 DATA &00000000,&00000000,&00000000,&00060000
100 DATA &00000000,&00000000,&00000000,&00300000
120 DATA &007F0F01,&06060607,&00000000,&00000600
130 DATA &00F8FEC0,&303030FC,&00000000,&00003C00
200 forJ=0to3:a$="": for i=0to7: READ L : A$=A$+CHR$(L): sprite$(j)=A$ : NEXTI,J

10 ' --- Slot 0
20 ' color 4
30 DATA 00,00,00,00,00,00,00,00,00,00,07,06,06,00,00,00
40 DATA 00,00,00,00,00,00,00,00,00,00,F0,30,30,00,00,00
50 ' color 5
60 DATA 00,00,00,00,00,00,00,00,07,07,00,00,00,00,00,00
70 DATA 00,00,00,00,00,00,00,00,C0,C0,00,00,00,00,00,00
80 ' color 11
90 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,06,00,00
100 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,30,00,00
110 ' color 13
120 DATA 00,7F,0F,01,06,06,06,07,00,00,00,00,00,00,06,00
130 DATA 00,F8,FE,C0,30,30,30,FC,00,00,00,00,00,00,3C,00
140 ' 
150 ' --- Slot 1
160 ' color 4
170 DATA 00,00,00,00,00,00,00,00,00,00,07,1E,70,00,00,00
180 DATA 00,00,00,00,00,00,00,00,00,00,FC,0C,0C,00,00,00
190 ' color 5
200 DATA 00,00,00,00,00,00,00,00,07,07,00,00,00,00,00,00
210 DATA 00,00,00,00,00,00,00,00,C0,C0,00,00,00,00,00,00
220 ' color 11
230 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,70,00,00
240 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,0C,00,00
250 ' color 13
260 DATA 00,7F,0F,01,3F,C7,C7,C7,00,00,00,00,00,00,7C,00
270 DATA 00,F8,FE,C0,F0,F0,D3,DE,00,00,00,00,00,00,0F,00
280 ' 
290 ' --- Slot 2
300 ' color 4
310 DATA 00,00,00,00,00,00,00,00,00,00,0F,0C,0C,00,00,00
320 DATA 00,00,00,00,00,00,00,00,00,00,E0,60,60,00,00,00
330 ' color 5
340 DATA 00,00,00,00,00,00,00,00,03,03,00,00,00,00,00,00
350 DATA 00,00,00,00,00,00,00,00,E0,E0,00,00,00,00,00,00
360 ' color 11
370 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,0C,00,00
380 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,60,00,00
390 ' color 13
400 DATA 00,1F,7F,03,0C,0C,0C,3F,00,00,00,00,00,00,3C,00
410 DATA 00,FE,F0,80,60,60,60,E0,00,00,00,00,00,00,60,00
420 ' 
430 ' --- Slot 3
440 ' color 4
450 DATA 00,00,00,00,00,00,00,00,00,00,3F,30,30,00,00,00
460 DATA 00,00,00,00,00,00,00,00,00,00,E0,78,0E,00,00,00
470 ' color 5
480 DATA 00,00,00,00,00,00,00,00,03,03,00,00,00,00,00,00
490 DATA 00,00,00,00,00,00,00,00,E0,E0,00,00,00,00,00,00
500 ' color 11
510 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,30,00,00
520 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,0E,00,00
530 ' color 13
540 DATA 00,1F,7F,03,0F,0F,CB,7B,00,00,00,00,00,00,F0,00
550 DATA 00,FE,F0,80,FC,E3,E3,E3,00,00,00,00,00,00,3E,00
560 DATA *
570 SCREEN 2,2,0: GOSUB 10000 :color 3,6,6: 
580 PUT SPRITE 0,(0,0),4,0:PUT SPRITE 1,(0,0),5,1:PUT SPRITE 2,(0,0),11,2:PUT SPRITE 3,(0,0),13,3
590 PUT SPRITE 4,(0,16),4,4:PUT SPRITE 5,(0,16),5,5:PUT SPRITE 6,(0,16),11,6:PUT SPRITE 7,(0,16),13,7
600 PUT SPRITE 8,(0,32),4,8:PUT SPRITE 9,(0,32),5,9:PUT SPRITE 10,(0,32),11,10:PUT SPRITE 11,(0,32),13,11
610 PUT SPRITE 12,(0,48),4,12:PUT SPRITE 13,(0,48),5,13:PUT SPRITE 14,(0,48),11,14:PUT SPRITE 15,(0,48),13,15
620 GOTO 620
10000 REM -- LOAD SPRITES
10010 S=BASE(9)
10020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 10020



