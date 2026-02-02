	.file	"fahr.c"
	.text
	.section	.rodata
.LC0:
	.string	"Fahrenheit    Celsius"
.LC3:
	.string	"%6.0f %13.1f\n"
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
	movl	$0, -16(%rbp)
	movl	$300, -12(%rbp)
	movl	$20, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.L2
.L3:
	pxor	%xmm0, %xmm0
	cvtss2sd	-20(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-4(%rbp), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	-20(%rbp), %xmm3
	movq	%xmm3, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
.L2:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-12(%rbp), %xmm0
	comiss	-20(%rbp), %xmm0
	jnb	.L3
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1077936128
	.align 8
.LC2:
	.long	1908874354
	.long	1071761180
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
