	.file	"comparison.c"
	.text
	.section	.rodata
.LC0:
	.string	"Equality ( 0 == 0 ): %d \n"
.LC1:
	.string	"Equality ( 0 == 1 ): %d \n"
.LC2:
	.string	"Equality ( A == a ): %d \n"
.LC3:
	.string	"Inequality ( A != a ): %d \n"
.LC4:
	.string	"Greater than ( 1 > 0 ): %d \n"
.LC5:
	.string	"Less than ( 1 < 0 ): %d \n"
	.align 8
.LC6:
	.string	"Greater or equal ( 0 >= 0 ): %d \n"
	.align 8
.LC7:
	.string	"less or equal ( 1 <= 0 ): %d \n"
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
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -4(%rbp)
	movb	$65, -14(%rbp)
	movb	$97, -13(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-14(%rbp), %eax
	cmpb	-13(%rbp), %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-14(%rbp), %eax
	cmpb	-13(%rbp), %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setl	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setge	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
