	.file	"precedence.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\nDefault precedence ( ( 2 * 3 ) + 4 ) - 5 : %d\n"
	.align 8
.LC1:
	.string	"Explicit precendence 2 * ( ( 3 + 5 ) - 5 ) : %d\n"
	.align 8
.LC2:
	.string	"\nDefault precedence ( 7 * 3 ) %% 2: %d\n"
	.align 8
.LC3:
	.string	"Explicit precedence 7 * ( 3 %% 2 ) : %d\n"
	.align 8
.LC4:
	.string	"\nDefault precedence ( 8 / 2 ) * 4: %d\n"
	.align 8
.LC5:
	.string	"Explicit precedence 8 / ( 2 * 4 ): %d\n"
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
	movl	$5, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$4, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$7, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$9, -4(%rbp)
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	salq	$2, %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$9, -4(%rbp)
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	shrq	$3, %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
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
