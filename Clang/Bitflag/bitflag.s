	.file	"bitflag.c"
	.text
	.section	.rodata
.LC0:
	.string	"ON"
.LC1:
	.string	"OFF"
.LC2:
	.string	"Flag 1: %s\n"
.LC3:
	.string	"Flag 2: %s\n"
.LC4:
	.string	"Flag 3: %s\n"
.LC5:
	.string	"Flag 4: %s\n\n"
.LC6:
	.string	"Flags decimal value is %d\n"
	.align 8
.LC7:
	.string	"Flags decimal value is now %d\n"
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
	movl	$8, -4(%rbp)
	orl	$2, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jle	.L2
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L2:
	leaq	.LC1(%rip), %rax
.L3:
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jle	.L4
	leaq	.LC0(%rip), %rax
	jmp	.L5
.L4:
	leaq	.LC1(%rip), %rax
.L5:
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jle	.L6
	leaq	.LC0(%rip), %rax
	jmp	.L7
.L6:
	leaq	.LC1(%rip), %rax
.L7:
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jle	.L8
	leaq	.LC0(%rip), %rax
	jmp	.L9
.L8:
	leaq	.LC1(%rip), %rax
.L9:
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movb	$15, -5(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movsbl	-5(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jle	.L10
	leaq	.LC0(%rip), %rax
	jmp	.L11
.L10:
	leaq	.LC1(%rip), %rax
.L11:
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jle	.L12
	leaq	.LC0(%rip), %rax
	jmp	.L13
.L12:
	leaq	.LC1(%rip), %rax
.L13:
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jle	.L14
	leaq	.LC0(%rip), %rax
	jmp	.L15
.L14:
	leaq	.LC1(%rip), %rax
.L15:
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jle	.L16
	leaq	.LC0(%rip), %rax
	jmp	.L17
.L16:
	leaq	.LC1(%rip), %rax
.L17:
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	sall	-4(%rbp)
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
