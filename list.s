start		clr.l d0
		move.l #list,a0
		move (a0),d0
		move 1(a0,d0),d1 ; a0 + 2 + 1
		rts

list		dc.w 2	; number of entries
		dc.w 1,2,3
