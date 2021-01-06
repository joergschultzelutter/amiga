ExecBase	= 4

OpenLibrary	= -552
CloseLibrary	= -414
PutStr		= -948


			lea.l dosname,a1
			move.l ExecBase,a6
			jsr OpenLibrary(a6)
			move.l d0,dosbase

			tst.l d0
			beq.s nolib

			lea.l helloworld,d1
			move.l d0,a6
			jsr PutStr(a6)

			move.l dosbase,a1
			move.l ExecBase,a6
			jsr CloseLibrary(a6)

nolib		clr.l d0
		rts

dosbase 	dc.l 0
dosname		dc.b "dos.library",0
HelloWorld 	dc.b "Hello World",0
