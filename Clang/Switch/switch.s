	.file	"switch.c"
	.text
	.section	.rodata
.LC0:
	.string	"Number is one"
.LC1:
	.string	"Number is two"
.LC2:
	.string	"Number is three"
.LC3:
	.string	"Number is unrecognized"
.LC4:
	.string	"Letter is %c\n"
.LC5:
	.string	"Letter is unrecognised"
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
	movl	$2, -4(%rbp)
	movb	$98, -5(%rbp)
	cmpl	$3, -4(%rbp)
	je	.L2
	cmpl	$3, -4(%rbp)
	jg	.L3
	cmpl	$1, -4(%rbp)
	je	.L4
	cmpl	$2, -4(%rbp)
	je	.L5
	jmp	.L3
.L4:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L6
.L5:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L6
.L2:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L6
.L3:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L6:
	movsbl	-5(%rbp), %eax
	subl	$97, %eax
	cmpl	$2, %eax
	ja	.L7
	movsbl	-5(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L7:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L8:
	movl	$0, %eax
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
