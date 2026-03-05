	.file	"movptr.c"
	.text
	.section	.rodata
.LC0:
	.string	"\nAt Address: %p is Value: %d\n"
.LC1:
	.string	"At Address: %p is Value: %d\n"
.LC2:
	.string	"At Address: %p is Value: %d\n\n"
	.align 8
.LC3:
	.string	"Element %d Contains Value: %d\n"
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$6, -28(%rbp)
	movl	$7, -24(%rbp)
	movl	$8, -20(%rbp)
	movl	$9, -16(%rbp)
	movl	$10, -12(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$4, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$4, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	$8, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -60(%rbp)
	jmp	.L2
.L3:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$4, -56(%rbp)
	addl	$1, -60(%rbp)
.L2:
	cmpl	$9, -60(%rbp)
	jle	.L3
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
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
