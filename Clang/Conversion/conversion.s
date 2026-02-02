	.file	"conversion.c"
	.text
	.globl	celsiusToFahrenheit
	.type	celsiusToFahrenheit, @function
celsiusToFahrenheit:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LC2(%rip), %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	celsiusToFahrenheit, .-celsiusToFahrenheit
	.globl	fahrenheitToCelsius
	.type	fahrenheitToCelsius, @function
fahrenheitToCelsius:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fahrenheitToCelsius, .-fahrenheitToCelsius
	.section	.rodata
	.align 8
.LC3:
	.string	"Temperature Conversion Program"
.LC4:
	.string	"1. Celsius to Fahrenheit"
.LC5:
	.string	"2. Fahrenheit to Celsius"
.LC6:
	.string	"Enter your choice (1 or 2): "
.LC7:
	.string	"%d"
	.align 8
.LC8:
	.string	"Invalid choice. Please enter 1 or 2."
.LC9:
	.string	"Enter temperature value: "
.LC10:
	.string	"%lf"
.LC11:
	.string	"Invalid temperature input."
.LC12:
	.string	"%.2lf \302\260C = %.2lf \302\260F\n"
.LC13:
	.string	"%.2lf \302\260F = %.2lf \302\260C\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
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
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	jne	.L6
	movl	-28(%rbp), %eax
	cmpl	$1, %eax
	je	.L7
	movl	-28(%rbp), %eax
	cmpl	$2, %eax
	je	.L7
.L6:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L12
.L7:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	je	.L9
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L12
.L9:
	movl	-28(%rbp), %eax
	cmpl	$1, %eax
	jne	.L10
	movq	-24(%rbp), %rax
	movq	%rax, %xmm0
	call	celsiusToFahrenheit
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	%rax, %xmm0
	call	fahrenheitToCelsius
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
.L11:
	movl	$0, %eax
.L12:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1075970048
	.align 8
.LC1:
	.long	0
	.long	1075052544
	.align 8
.LC2:
	.long	0
	.long	1077936128
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
