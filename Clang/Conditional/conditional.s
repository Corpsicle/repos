	.file	"conditional.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d is odd\n"
.LC1:
	.string	"%d is even\n"
.LC2:
	.string	"is"
.LC3:
	.string	"are"
.LC4:
	.string	"There %s "
.LC5:
	.string	"apple"
.LC6:
	.string	"apples"
.LC7:
	.string	"%d %s\n"
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
	movl	$7, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L3
.L2:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L3:
	cmpl	$1, -4(%rbp)
	jne	.L4
	leaq	.LC2(%rip), %rax
	jmp	.L5
.L4:
	leaq	.LC3(%rip), %rax
.L5:
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$1, -4(%rbp)
	jne	.L6
	leaq	.LC5(%rip), %rax
	jmp	.L7
.L6:
	leaq	.LC6(%rip), %rax
.L7:
	movl	-4(%rbp), %ecx
	movq	%rax, %rdx
	movl	%ecx, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L8
	leaq	.LC2(%rip), %rax
	jmp	.L9
.L8:
	leaq	.LC3(%rip), %rax
.L9:
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$1, -4(%rbp)
	jne	.L10
	leaq	.LC5(%rip), %rax
	jmp	.L11
.L10:
	leaq	.LC6(%rip), %rax
.L11:
	movl	-4(%rbp), %ecx
	movq	%rax, %rdx
	movl	%ecx, %esi
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
