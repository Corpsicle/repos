	.file	"arrptr.c"
	.text
	.section	.rodata
.LC0:
	.string	"Alpha"
.LC1:
	.string	"Bravo"
.LC2:
	.string	"Charlie"
.LC3:
	.string	"The value at %p is: %d\n"
.LC4:
	.string	"\nString is: %s\n\n"
.LC5:
	.string	"String %d is %s\n"
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
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -128(%rbp)
	movl	$2, -124(%rbp)
	movl	$3, -120(%rbp)
	movl	$4, -116(%rbp)
	movl	$5, -112(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -168(%rbp)
	leaq	-128(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -160(%rbp)
	leaq	-128(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -152(%rbp)
	leaq	-128(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -144(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
	movabsq	$7959345021636386883, %rax
	movq	%rax, -17(%rbp)
	movb	$0, -9(%rbp)
	leaq	-17(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -180(%rbp)
	jmp	.L2
.L3:
	movl	-180(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -180(%rbp)
.L2:
	cmpl	$4, -180(%rbp)
	jle	.L3
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -180(%rbp)
	jmp	.L4
.L5:
	movl	-180(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rdx
	movl	-180(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -180(%rbp)
.L4:
	cmpl	$2, -180(%rbp)
	jle	.L5
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
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
