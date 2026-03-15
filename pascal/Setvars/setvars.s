	.file "setvars.pas"
# Begin asmlist al_procedures

.section .text.n_main
	.balign 16,0x90
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
.Lc1:
	pushq	%rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-128(%rsp),%rsp
	movq	%rbx,-120(%rbp)
	call	fpc_initializeunits
	movq	$0,-112(%rbp)
	leaq	-24(%rbp),%rdx
	leaq	-88(%rbp),%rsi
	movl	$1,%edi
	call	fpc_pushexceptaddr
	movq	%rax,%rdi
	call	fpc_setjmp
	movslq	%eax,%rdx
	movq	%rdx,-96(%rbp)
	testl	%eax,%eax
	jne	.Lj4
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$SETVAR$_Ld1,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_write_end
	call	fpc_iocheck
	call	fpc_get_input
	movq	%rax,%rbx
	movq	$U_$P$SETVAR_$$_LETTER,%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_char
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	movq	$U_$P$SETVAR_$$_LETTER,%rax
	movq	%rax,U_$P$SETVAR_$$_LETTERPTR
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$SETVAR$_Ld2,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_write_end
	call	fpc_iocheck
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-104(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_sint
	call	fpc_iocheck
	movw	-104(%rbp),%ax
	movw	%ax,U_$P$SETVAR_$$_NUM1
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$SETVAR$_Ld3,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_write_end
	call	fpc_iocheck
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-104(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_sint
	call	fpc_iocheck
	movw	-104(%rbp),%ax
	movw	%ax,U_$P$SETVAR_$$_NUM2
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$SETVAR$_Ld4,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movzbl	U_$P$SETVAR_$$_LETTER,%edx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_char
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$SETVAR$_Ld5,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movswq	U_$P$SETVAR_$$_NUM1,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_sint
	call	fpc_iocheck
	movq	$_$SETVAR$_Ld6,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movswq	U_$P$SETVAR_$$_NUM2,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_sint
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$SETVAR$_Ld7,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movzbl	U_$P$SETVAR_$$_LETTER,%edx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_char
	call	fpc_iocheck
	movq	$_$SETVAR$_Ld8,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	U_$P$SETVAR_$$_LETTERPTR,%rax
	movl	(%rax),%eax
	movl	%eax,-100(%rbp)
	movl	$8,%edx
	movl	-100(%rbp),%esi
	leaq	-112(%rbp),%rdi
	call	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	movq	-112(%rbp),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_ansistr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
.Lj4:
	call	fpc_popaddrstack
	leaq	-112(%rbp),%rdi
	call	fpc_ansistr_decr_ref
	movq	-96(%rbp),%rax
	testq	%rax,%rax
	je	.Lj3
	call	fpc_reraise
.Lj3:
	call	fpc_do_exit
	movq	-120(%rbp),%rbx
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc2:
.Le0:
	.size	main, .Le0 - main

.section .text
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.type U_$P$SETVAR_$$_LETTER,@object
	.size U_$P$SETVAR_$$_LETTER,1
U_$P$SETVAR_$$_LETTER:
	.zero 1

.section .bss
	.balign 2
	.type U_$P$SETVAR_$$_NUM1,@object
	.size U_$P$SETVAR_$$_NUM1,2
U_$P$SETVAR_$$_NUM1:
	.zero 2

.section .bss
	.balign 2
	.type U_$P$SETVAR_$$_NUM2,@object
	.size U_$P$SETVAR_$$_NUM2,2
U_$P$SETVAR_$$_NUM2:
	.zero 2

.section .bss
	.balign 8
	.type U_$P$SETVAR_$$_LETTERPTR,@object
	.size U_$P$SETVAR_$$_LETTERPTR,8
U_$P$SETVAR_$$_LETTERPTR:
	.zero 8

.section .data.n_INITFINAL
	.balign 8
.globl	INITFINAL
	.type	INITFINAL,@object
INITFINAL:
	.quad	4,0
	.quad	INIT$_$SYSTEM
	.quad	0,0
	.quad	FINALIZE$_$OBJPAS
	.quad	INIT$_$UNIX
	.quad	FINALIZE$_$UNIX
	.quad	INIT$_$SYSUTILS
	.quad	FINALIZE$_$SYSUTILS
.Le1:
	.size	INITFINAL, .Le1 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 8
.globl	FPC_THREADVARTABLES
	.type	FPC_THREADVARTABLES,@object
FPC_THREADVARTABLES:
	.long	1
	.quad	THREADVARLIST_$SYSTEM$indirect
.Le2:
	.size	FPC_THREADVARTABLES, .Le2 - FPC_THREADVARTABLES

.section .data.n_FPC_RESOURCESTRINGTABLES
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
	.type	FPC_RESOURCESTRINGTABLES,@object
FPC_RESOURCESTRINGTABLES:
	.quad	1
	.quad	RESSTR_$SYSCONST_$$_START$indirect
	.quad	RESSTR_$SYSCONST_$$_END$indirect
.Le3:
	.size	FPC_RESOURCESTRINGTABLES, .Le3 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 8
.globl	FPC_WIDEINITTABLES
	.type	FPC_WIDEINITTABLES,@object
FPC_WIDEINITTABLES:
	.quad	0
.Le4:
	.size	FPC_WIDEINITTABLES, .Le4 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 8
.globl	FPC_RESSTRINITTABLES
	.type	FPC_RESSTRINITTABLES,@object
FPC_RESSTRINITTABLES:
	.quad	0
.Le5:
	.size	FPC_RESSTRINITTABLES, .Le5 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 16
	.type	__fpc_ident,@object
__fpc_ident:
	.ascii	"FPC 3.2.2+dfsg-32 [2024/01/05] for x86_64 - Linux"
.Le6:
	.size	__fpc_ident, .Le6 - __fpc_ident

.section .data.n___stklen
	.balign 8
.globl	__stklen
	.type	__stklen,@object
__stklen:
	.quad	8388608
.Le7:
	.size	__stklen, .Le7 - __stklen

.section .data.n___heapsize
	.balign 8
.globl	__heapsize
	.type	__heapsize,@object
__heapsize:
	.quad	0
.Le8:
	.size	__heapsize, .Le8 - __heapsize

.section .data.n___fpc_valgrind
	.balign 8
.globl	__fpc_valgrind
	.type	__fpc_valgrind,@object
__fpc_valgrind:
	.byte	0
.Le9:
	.size	__fpc_valgrind, .Le9 - __fpc_valgrind

.section .data.n_FPC_RESLOCATION
	.balign 8
.globl	FPC_RESLOCATION
	.type	FPC_RESLOCATION,@object
FPC_RESLOCATION:
	.quad	0
.Le10:
	.size	FPC_RESLOCATION, .Le10 - FPC_RESLOCATION
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n__$SETVAR$_Ld1
	.balign 8
.globl	_$SETVAR$_Ld1
_$SETVAR$_Ld1:
	.ascii	"\020Enter a letter: \000"
.Le11:
	.size	_$SETVAR$_Ld1, .Le11 - _$SETVAR$_Ld1

.section .rodata.n__$SETVAR$_Ld2
	.balign 8
.globl	_$SETVAR$_Ld2
_$SETVAR$_Ld2:
	.ascii	"\024Enter first number: \000"
.Le12:
	.size	_$SETVAR$_Ld2, .Le12 - _$SETVAR$_Ld2

.section .rodata.n__$SETVAR$_Ld3
	.balign 8
.globl	_$SETVAR$_Ld3
_$SETVAR$_Ld3:
	.ascii	"\025Enter second number: \000"
.Le13:
	.size	_$SETVAR$_Ld3, .Le13 - _$SETVAR$_Ld3

.section .rodata.n__$SETVAR$_Ld4
	.balign 8
.globl	_$SETVAR$_Ld4
_$SETVAR$_Ld4:
	.ascii	"\024You entered letter: \000"
.Le14:
	.size	_$SETVAR$_Ld4, .Le14 - _$SETVAR$_Ld4

.section .rodata.n__$SETVAR$_Ld5
	.balign 8
.globl	_$SETVAR$_Ld5
_$SETVAR$_Ld5:
	.ascii	"\025You entered numbers: \000"
.Le15:
	.size	_$SETVAR$_Ld5, .Le15 - _$SETVAR$_Ld5

.section .rodata.n__$SETVAR$_Ld6
	.balign 8
.globl	_$SETVAR$_Ld6
_$SETVAR$_Ld6:
	.ascii	"\005 and \000"
.Le16:
	.size	_$SETVAR$_Ld6, .Le16 - _$SETVAR$_Ld6

.section .rodata.n__$SETVAR$_Ld7
	.balign 8
.globl	_$SETVAR$_Ld7
_$SETVAR$_Ld7:
	.ascii	"\010Letter: \000"
.Le17:
	.size	_$SETVAR$_Ld7, .Le17 - _$SETVAR$_Ld7

.section .rodata.n__$SETVAR$_Ld8
	.balign 8
.globl	_$SETVAR$_Ld8
_$SETVAR$_Ld8:
	.ascii	"\014 Stored at: \000"
.Le18:
	.size	_$SETVAR$_Ld8, .Le18 - _$SETVAR$_Ld8
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc6:
	.long	.Lc8-.Lc7
.Lc7:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc8:
	.long	.Lc10-.Lc9
.Lc9:
	.quad	.Lc6
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc4-.Lc3
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc5-.Lc4
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc10:
# End asmlist al_dwarf_frame
.section .note.GNU-stack,"",%progbits

