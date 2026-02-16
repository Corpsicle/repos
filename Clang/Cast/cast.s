	.file	"cast.c"
	.text
	.section	.rodata
.LC2:
	.string	"Float cast to int: %d\n"
.LC3:
	.string	"Char cast to int: %d\n"
.LC4:
	.string	"Int cast to char: %c\n"
.LC5:
	.string	"Float arithmatic: %f\n"
.LC6:
	.string	"Double cast to float: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movb	$65, -25(%rbp)
	movl	$90, -20(%rbp)
	movl	$7, -16(%rbp)
	movl	$5, -12(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movss	-24(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movsbl	-25(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-20(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm0, %xmm0
	cvtsd2ss	-8(%rbp), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1085800448
	.align 8
.LC1:
	.long	277989525
	.long	1069521629
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
