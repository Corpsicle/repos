	.file	"logic.c"
	.text
	.section	.rodata
.LC0:
	.string	"AND (no && no):\t\t %d\n"
.LC1:
	.string	"AND (yes && no):\t %d\n"
.LC2:
	.string	"AND (yes && yess):\t %d\n"
.LC3:
	.string	"OR (no || no):\t\t %d\n"
.LC4:
	.string	"OR (yes || no):\t\t %d\n"
.LC5:
	.string	"OR (yes || yes):\t %d\n"
.LC6:
	.string	"NOT (yes ! yes):\t %d %d\n"
.LC7:
	.string	"NOT (no ! no ):\t\t %d %d\n"
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
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L2
	cmpl	$0, -4(%rbp)
	je	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -8(%rbp)
	je	.L4
	cmpl	$0, -4(%rbp)
	je	.L4
	movl	$1, %eax
	jmp	.L5
.L4:
	movl	$0, %eax
.L5:
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -8(%rbp)
	je	.L6
	cmpl	$0, -8(%rbp)
	je	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -4(%rbp)
	jne	.L8
	cmpl	$0, -4(%rbp)
	je	.L9
.L8:
	movl	$1, %eax
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -8(%rbp)
	jne	.L11
	cmpl	$0, -4(%rbp)
	je	.L12
.L11:
	movl	$1, %eax
	jmp	.L13
.L12:
	movl	$0, %eax
.L13:
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -8(%rbp)
	jne	.L14
	cmpl	$0, -8(%rbp)
	je	.L15
.L14:
	movl	$1, %eax
	jmp	.L16
.L15:
	movl	$0, %eax
.L16:
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -8(%rbp)
	sete	%al
	movzbl	%al, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
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
