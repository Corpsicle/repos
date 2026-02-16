	.file "vars.pas"
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
	leaq	-48(%rsp),%rsp
	movq	%rbx,-24(%rbp)
	call	fpc_initializeunits
	movw	$100,U_$P$VARS_$$_NUMBER
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$VARS$_Ld1,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movswq	U_$P$VARS_$$_NUMBER,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_sint
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$VARS$_Ld2,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movswq	U_$P$VARS_$$_NUMBER,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_sint
	call	fpc_iocheck
	movq	$_$VARS$_Ld3,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	_$VARS$_Ld4,%rax
	movq	%rax,(%rsp)
	movw	_$VARS$_Ld4+8,%ax
	movw	%ax,8(%rsp)
	movq	%rbx,%rcx
	movl	$0,%edx
	movl	$10,%esi
	movl	$2,%edi
	call	fpc_write_text_float
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$VARS$_Ld5,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	_$VARS$_Ld4,%rax
	movq	%rax,(%rsp)
	movw	_$VARS$_Ld4+8,%ax
	movw	%ax,8(%rsp)
	movq	%rbx,%rcx
	movl	$0,%edx
	movl	$7,%esi
	movl	$2,%edi
	call	fpc_write_text_float
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$VARS$_Ld6,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movswq	U_$P$VARS_$$_NUMBER,%rdx
	movq	%rbx,%rsi
	movl	$7,%edi
	call	fpc_write_text_sint
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$VARS$_Ld7,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movswq	U_$P$VARS_$$_NUMBER,%rdx
	movq	%rbx,%rsi
	movl	$10,%edi
	call	fpc_write_text_sint
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$VARS$_Ld8,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	_$VARS$_Ld4,%rax
	movq	%rax,(%rsp)
	movw	_$VARS$_Ld4+8,%ax
	movw	%ax,8(%rsp)
	movq	%rbx,%rcx
	movl	$1,%edx
	movl	$10,%esi
	movl	$2,%edi
	call	fpc_write_text_float
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$VARS$_Ld9,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	_$VARS$_Ld4,%rax
	movq	%rax,(%rsp)
	movw	_$VARS$_Ld4+8,%ax
	movw	%ax,8(%rsp)
	movq	%rbx,%rcx
	movl	$20,%edx
	movl	$3,%esi
	movl	$2,%edi
	call	fpc_write_text_float
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	movq	$_$VARS$_Ld10,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	_$VARS$_Ld4,%rax
	movq	%rax,(%rsp)
	movw	_$VARS$_Ld4+8,%ax
	movw	%ax,8(%rsp)
	movq	%rbx,%rcx
	movl	$-20,%edx
	movl	$3,%esi
	movl	$2,%edi
	call	fpc_write_text_float
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_do_exit
	movq	-24(%rbp),%rbx
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
	.balign 2
	.type U_$P$VARS_$$_NUMBER,@object
	.size U_$P$VARS_$$_NUMBER,2
U_$P$VARS_$$_NUMBER:
	.zero 2

.section .data.n_INITFINAL
	.balign 8
.globl	INITFINAL
	.type	INITFINAL,@object
INITFINAL:
	.quad	1,0
	.quad	INIT$_$SYSTEM
	.quad	0
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
	.quad	0
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

.section .rodata.n__$VARS$_Ld1
	.balign 8
.globl	_$VARS$_Ld1
_$VARS$_Ld1:
	.ascii	"\014Integer is: \000"
.Le11:
	.size	_$VARS$_Ld1, .Le11 - _$VARS$_Ld1

.section .rodata.n__$VARS$_Ld2
	.balign 8
.globl	_$VARS$_Ld2
_$VARS$_Ld2:
	.ascii	"\013Values are \000"
.Le12:
	.size	_$VARS$_Ld2, .Le12 - _$VARS$_Ld2

.section .rodata.n__$VARS$_Ld3
	.balign 8
.globl	_$VARS$_Ld3
_$VARS$_Ld3:
	.ascii	"\005 and \000"
.Le13:
	.size	_$VARS$_Ld3, .Le13 - _$VARS$_Ld3

.section .rodata.n__$VARS$_Ld4
	.balign 16
.globl	_$VARS$_Ld4
_$VARS$_Ld4:
	.byte	224,254,54,36,162,218,15,201,0,64

.section .rodata.n__$VARS$_Ld5
	.balign 8
.globl	_$VARS$_Ld5
_$VARS$_Ld5:
	.ascii	"\024The value of pi is: \000"
.Le14:
	.size	_$VARS$_Ld5, .Le14 - _$VARS$_Ld5

.section .rodata.n__$VARS$_Ld6
	.balign 8
.globl	_$VARS$_Ld6
_$VARS$_Ld6:
	.ascii	"\025number:0:7 displays: \000"
.Le15:
	.size	_$VARS$_Ld6, .Le15 - _$VARS$_Ld6

.section .rodata.n__$VARS$_Ld7
	.balign 8
.globl	_$VARS$_Ld7
_$VARS$_Ld7:
	.ascii	"\026number:10:0 displays: \000"
.Le16:
	.size	_$VARS$_Ld7, .Le16 - _$VARS$_Ld7

.section .rodata.n__$VARS$_Ld8
	.balign 8
.globl	_$VARS$_Ld8
_$VARS$_Ld8:
	.ascii	"\025Pi is approximately: \000"
.Le17:
	.size	_$VARS$_Ld8, .Le17 - _$VARS$_Ld8

.section .rodata.n__$VARS$_Ld9
	.balign 8
.globl	_$VARS$_Ld9
_$VARS$_Ld9:
	.ascii	"\032Right aligned rounded pi: \000"
.Le18:
	.size	_$VARS$_Ld9, .Le18 - _$VARS$_Ld9

.section .rodata.n__$VARS$_Ld10
	.balign 8
.globl	_$VARS$_Ld10
_$VARS$_Ld10:
	.ascii	"\031Left aligned rounded pi: \000"
.Le19:
	.size	_$VARS$_Ld10, .Le19 - _$VARS$_Ld10
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

