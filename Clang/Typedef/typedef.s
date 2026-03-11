	.file	"typedef.c"
	.text
	.globl	top
	.data
	.align 8
	.type	top, @object
	.size	top, 8
top:
	.long	15
	.long	24
	.globl	btm
	.bss
	.align 8
	.type	btm, @object
	.size	btm, 8
btm:
	.zero	8
	.globl	rect
	.data
	.align 16
	.type	rect, @object
	.size	rect, 16
rect:
	.long	6
	.long	12
	.long	30
	.long	20
	.section	.rodata
.LC0:
	.string	"\nTop x: %d, y: %d\n"
.LC1:
	.string	"Bottom x: %d, y: %d\n"
.LC2:
	.string	"\nPoint a x: %d"
.LC3:
	.string	"\nPoint a y: %d"
.LC4:
	.string	"\nPoint b x: %d"
.LC5:
	.string	"\nPoint b y: %d\n"
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
	movl	$5, btm(%rip)
	movl	$8, 4+btm(%rip)
	movl	4+top(%rip), %edx
	movl	top(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	4+btm(%rip), %edx
	movl	btm(%rip), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	rect(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	4+rect(%rip), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	8+rect(%rip), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	12+rect(%rip), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
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
