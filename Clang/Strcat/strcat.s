	.file	"strcat.c"
	.text
	.section	.rodata
.LC0:
	.string	"\n%s\n"
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
	subq	$288, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$2334381251941638209, %rax
	movabsq	$8243124732240752486, %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movabsq	$9120923167257721, %rax
	movl	$0, %edx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -128(%rbp)
	movabsq	$8243124732239834721, %rax
	movabsq	$7575168297149691001, %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movabsq	$8388271439536482158, %rax
	movabsq	$28538242727944307, %rdx
	movq	%rax, -276(%rbp)
	movq	%rdx, -268(%rbp)
	movabsq	$8391739186321123412, %rax
	movabsq	$8241959092393418856, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$7310034132178398309, %rax
	movl	$32, %edx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	movabsq	$7311142431307886177, %rax
	movabsq	$7308339910536274034, %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movabsq	$7017579428052803630, %rax
	movabsq	$28539389434339442, %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	leaq	-288(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-256(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movl	$17, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-256(%rbp), %rax
	addq	$17, %rax
	leaq	-112(%rbp), %rcx
	movl	$14, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncat@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
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
