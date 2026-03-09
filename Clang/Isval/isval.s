	.file	"isval.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter six digits without any spaces..."
.LC1:
	.string	"Letter %c Found\n"
.LC2:
	.string	"Punctuation Found"
.LC3:
	.string	"Space Found"
.LC4:
	.string	"Entry Valid"
.LC5:
	.string	"Entry Invalid"
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
	movl	$1, -20(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-15(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	gets@PLT
	movl	$0, -24(%rbp)
	jmp	.L2
.L6:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	movzbl	-15(%rbp,%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L3
	movl	$0, -20(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	movzbl	-15(%rbp,%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L4
	movl	-24(%rbp), %eax
	cltq
	movzbl	-15(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L3
.L4:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	movzbl	-15(%rbp,%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L3
.L5:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	movzbl	-15(%rbp,%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L3
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L3:
	addl	$1, -24(%rbp)
.L2:
	cmpl	$5, -24(%rbp)
	jle	.L6
	cmpl	$0, -20(%rbp)
	je	.L7
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L8
.L7:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L8:
	movl	$0, %eax
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
