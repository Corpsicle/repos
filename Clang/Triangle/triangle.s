	.file	"triangle.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number of rows between 1 and 20: "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Invalid choice. Please enter a number between 1 & 20."
.LC3:
	.string	"* "
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	testl	%eax, %eax
	jle	.L2
	movl	-20(%rbp), %eax
	cmpl	$20, %eax
	jle	.L3
.L2:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L9
.L3:
	movl	$1, -16(%rbp)
	jmp	.L5
.L8:
	movl	$1, -12(%rbp)
	jmp	.L6
.L7:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -12(%rbp)
.L6:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L7
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -16(%rbp)
.L5:
	movl	-20(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L8
	movl	$0, %eax
.L9:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
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
