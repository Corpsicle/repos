	.file	"assign.c"
	.text
	.section	.rodata
.LC0:
	.string	"Assigned: "
.LC1:
	.string	"\tVariable a = %d \n"
.LC2:
	.string	"\tVariable b = %d \n"
.LC3:
	.string	"Added & Assigned: "
	.align 8
.LC4:
	.string	"\tVariable a += b ( 8 += 4 ) a = %d \n"
.LC5:
	.string	"Subtracted & assigned: "
	.align 8
.LC6:
	.string	"\tVariable a -= b ( 12 -= 4 ) a = %d \n"
.LC7:
	.string	"Multiplied & assigned: "
	.align 8
.LC8:
	.string	"\tVariable a *= b ( 8 *= 4 ) a= %d \n"
.LC9:
	.string	"Divided & assigned: "
	.align 8
.LC10:
	.string	"\tVariable a /= b ( 32 /= 4 ) a = %d \n"
.LC11:
	.string	"Modulated & assigned: "
	.align 8
.LC12:
	.string	"\tVariable a %%= b ( 8 %%= 4 ) a = %d \n"
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
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$8, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$4, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-4(%rbp), %eax
	addl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-4(%rbp), %eax
	subl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-8(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-8(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
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
