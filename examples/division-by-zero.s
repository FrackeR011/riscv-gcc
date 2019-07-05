	.file	"division-by-zero.c"
	.option nopic
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	fsw	fa5,-20(s0)
	sw	zero,-24(s0)
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fdiv.s	fa5,fa4,fa5
   frcsr a3
   beqz a3, 3f
   ebreak
3:
	fsw	fa5,-28(s0)
	li	a5,0
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
.LC0:
	.word	1082549862
	.ident	"GCC: (GNU) 8.2.0"
