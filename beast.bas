12 DATA 00,00,0F,01,01,01,03,03,07,06,07,00,00,06,07,00, 00,00,C0,80,C0,80,80,80,E0,E0,00,00,00,C0,C0,00, 00,00,00,00,00,00,00,00,00,00,00,07,07,00,00,06, 00,00,00,40,00,00,00,00,00,00,00,80,80,00,00,00, 00,00,0F,01,01,01,03,07,07,05,07,00,00,1C,18,00
21 DATA 00,00,C0,80,C0,80,80,80,C0,C0,00,00,40,60,60,00, 00,00,00,00,00,00,00,00,00,00,00,07,07,00,00,00, 00,00,00,40,00,00,00,00,00,00,00,80,80,00,00,60, 00,00,07,03,07,03,03,03,0F,0E,01,00,00,06,07,00, 00,00,E0,00,00,00,80,80,C0,C0,C0,00,00,C0,C0,00
31 DATA 00,00,00,04,00,00,00,00,00,00,00,03,03,00,00,00, 00,00,00,00,00,00,00,00,00,00,00,C0,C0,00,00,C0, 00,00,07,03,07,03,03,03,07,07,01,00,04,0C,0C,00, 00,00,E0,00,00,00,80,C0,C0,40,C0,00,00,70,30,00, 00,00,00,04,00,00,00,00,00,00,00,03,03,00,00,0C
40 DATA 00,00,00,00,00,00,00,00,00,00,00,C0,C0,00,00,00, 00,00,00,00,00,00,03,02,05,02,03,00,00,00,00,00, 00,00,00,00,00,00,00,C0,60,C0,00,00,00,00,00,00, 
75 color 8,6,1:SCREEN 5,3,0:: cls : :KEYOFF:DEFINTA-Z: :open"grp:"as#1:S=&h7800 : :forI=0 to (4*64-1+32): READ R$: VPOKE S+I,VAL("&H"+R$):NEXTI:X=100:Y=150 :  H =0: F=0 : E=0 : DX=0 :  PUT SPRITE 2,(220,0),6,8
90  pset(0,30): color 9:  for i=0to61  :print#1,chr$(&hc0+RND(1)*6); : next i : pset(0,80): color 8  : for i=0to124:  :print#1,chr$(&hdb+RND(1)*4); : next i : LINE(00,120)-(300,182),8,BF: PUT SPRITE 0,(X,Y),6,0:PUT SPRITE 1,(X,Y),9,1:   
100 if A=1 then Y= Y+DY : DY=DY-SY: vpoke30208,Y : vpoke30212,Y: : if (Y>=150) thenDY=0:SY=0 :Y=150:A=0
108 if E=1 then vpoke30217,XX:  XX=XX+DX: if (XX<5 or XX >250) then E = 0: vpoke30216, 0 : else if XX>95 and XX<105 and Y>120 then E=0: YY =0 : XX = 0 : vpoke30216, YY : vpoke30217,XX : beep
110 k=0:K$=inkey$: :  IFK$=""then100:elsek=asc(k$): if k=28 then  : H=H+6:F=F+1: FR=0: else if k=29 then   : H=H-6:F=F+1:FR=4: else if k=32andSY=0 then DY = -8: SY=-1:A=1
196 if E=0 and RND(1)>.8 then E=1: S=SGN(RND(1)-.5) : DX = S* (RND(1)+.5) * 5 :XX=(220-S*200)/2: :vpoke30216, 150 : vpoke30217,XX
200  h=(H+255)mod255: SET SCROLL H,0,1,1 : if (Fmod4)=0 then FR = FR+2*(F/4mod2) : : vpoke30210, FR*4: vpoke30214, (FR+1)*4: goto 100 : else 100
