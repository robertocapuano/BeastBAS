1 DATA 00,00,00,00,00,00,00,00,00,00,07,06,06,00,00,00,00,00,00,00,00,00,00,00,00,00,F0,30,30,00,00,00,00,00,00,00,00,00,00,00,07,07,00,00,00,00,00,00,00,00,00,00,00,00,00,00,C0,C0,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,06,00,00,
2 data 00,00,00,00,00,00,00,00,00,00,00,00,00,30,00,00,00,7F,0F,01,06,06,06,07,00,00,00,00,00,00,06,00,00,F8,FE,C0,30,30,30,FC,00,00,00,00,00,00,3C,00,00,00,00,00,00,00,00,00,00,00,07,1E,70,00,00,00,00,00,00,00,00,00,00,00,00,00,FC,0C,0C,00,00,00
3 DATA 00,00,00,00,00,00,00,00,07,07,00,00,00,00,00,00,00,00,00,00,00,00,00,00,C0,C0,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,70,00,00, 00,00,00,00,00,00,00,00,00,00,00,00,00,0C,00,00, 00,7F,0F,01,3F,C7,C7,C7,00,00,00,00,00,00,7C,00
4 DATA 00,F8,FE,C0,F0,F0,D3,DE,00,00,00,00,00,00,0F,00,  00,00,00,00,00,00,00,00,00,00,0F,0C,0C,00,00,00,00,00,00,00,00,00,00,00,00,00,E0,60,60,00,00,00,00,00,00,00,00,00,00,00,03,03,00,00,00,00,00,00,00,00,00,00,00,00,00,00,E0,E0,00,00,00,00,00,00
5 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,0C,00,00, 00,00,00,00,00,00,00,00,00,00,00,00,00,60,00,00,00,1F,7F,03,0C,0C,0C,3F,00,00,00,00,00,00,3C,00,00,FE,F0,80,60,60,60,E0,00,00,00,00,00,00,60,00,00,00,00,00,00,00,00,00,00,00,3F,30,30,00,00,00
6 DATA 00,00,00,00,00,00,00,00,00,00,E0,78,0E,00,00,00,00,00,00,00,00,00,00,00,03,03,00,00,00,00,00,00,00,00,00,00,00,00,00,00,E0,E0,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,30,00,00, 00,00,00,00,00,00,00,00,00,00,00,00,00,0E,00,00
7 SCREEN 1,2,0: S=BASE(9):forI=0to127: READ R$: VPOKE S+I,VAL("&H"+R$):NEXTI: :color 3,6,6:    DATA 00,1F,7F,03,0F,0F,CB,7B,00,00,00,00,00,00,F0,00,00,FE,F0,80,FC,E3,E3,E3,00,00,00,00,00,00,3E,00 : rem , *, 
8 PUT SPRITE 0,(0,0),4,0:PUT SPRITE 1,(0,0),5,1:PUT SPRITE 2,(0,0),11,2:PUT SPRITE 3,(0,0),13,3
9 GOTO 9
10 '

forI=0to511

590 PUT SPRITE 4,(0,16),4,4:PUT SPRITE 5,(0,16),5,5:PUT SPRITE 6,(0,16),11,6:PUT SPRITE 7,(0,16),13,7
600 PUT SPRITE 8,(0,32),4,8:PUT SPRITE 9,(0,32),5,9:PUT SPRITE 10,(0,32),11,10:PUT SPRITE 11,(0,32),13,11
610 PUT SPRITE 12,(0,48),4,12:PUT SPRITE 13,(0,48),5,13:PUT SPRITE 14,(0,48),11,14:PUT SPRITE 15,(0,48),13,15




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



