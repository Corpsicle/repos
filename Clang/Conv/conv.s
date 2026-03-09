	.file	"conv.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\nString %s converts to integer: %d\n"
	.align 8
.LC1:
	.string	"String %s converts to integer: %d\n"
	.align 8
.LC2:
	.string	"string %s converts to integer: %d\n\n"
.LC3:
	.string	"Decimal %d is Binary: %s\n"
.LC4:
	.string	"%o"
	.align 8
.LC5:
	.string	"Decimal %d is Octal: %s chars: %d\n"
.LC6:
	.string	"%x"
	.align 8
.LC7:
	.string	"Decimal %d is Hexadecimal: %s chars: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
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
	movabsq	$32765890657595953, %rax
	movq	%rax, -38(%rbp)
	movw	$0, -30(%rbp)
	movabsq	$241293407789, %rax
	movq	%rax, -28(%rbp)
	movw	$0, -20(%rbp)
	movq	$3355000, -18(%rbp)
	movw	$0, -10(%rbp)
	leaq	-38(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	leaq	-38(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %edx
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-18(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edx
	leaq	-18(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-38(%rbp), %rcx
	movl	-52(%rbp), %eax
	movl	$2, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	_itoa@PLT
	leaq	-38(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %edx
	leaq	-18(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %ecx
	leaq	-18(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %edx
	leaq	-18(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %ecx
	leaq	-18(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
