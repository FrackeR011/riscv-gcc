	.file	"invalid.c"
	.option nopic
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	fmv.s.x	fa4,zero
	fmv.s.x	fa5,zero
	fdiv.s	fa5,fa4,fa5
   frcsr a3
   beqz a3, 3f
   ebreak
3:
	fsw	fa5,-20(s0)
	li	a5,0
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
