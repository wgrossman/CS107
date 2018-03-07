	.file	"stack.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"address of a in add_double is %p and b in add_double is %p\n"
	.text
	.globl	add_double
	.type	add_double, @function
add_double:
.LFB38:
	.file 1 "stack.c"
	.loc 1 4 0
	.cfi_startproc
.LVL0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 12(%rsp)
	movl	%esi, 8(%rsp)
.LVL1:
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	8(%rsp), %rcx
	leaq	12(%rsp), %rdx
	movl	$.LC0, %esi
.LVL2:
	movl	$1, %edi
.LVL3:
	movl	$0, %eax
	call	__printf_chk
.LVL4:
.LBE13:
.LBE12:
	.loc 1 6 0
	movl	8(%rsp), %eax
	addl	12(%rsp), %eax
	addl	%eax, %eax
	.loc 1 7 0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	add_double, .-add_double
	.globl	func1
	.type	func1, @function
func1:
.LFB39:
	.loc 1 9 0
	.cfi_startproc
.LVL5:
	.loc 1 10 0
	movsbl	(%rsi), %ecx
	movl	%edi, %eax
	cltd
	idivl	%ecx
	.loc 1 11 0
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE39:
	.size	func1, .-func1
	.globl	swap
	.type	swap, @function
swap:
.LFB40:
	.loc 1 13 0
	.cfi_startproc
.LVL6:
	.loc 1 15 0
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	.loc 1 16 0
	movl	%eax, (%rsi)
	ret
	.cfi_endproc
.LFE40:
	.size	swap, .-swap
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"address of a in main is %p and b is %p\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"value of m is %d\n"
.LC3:
	.string	"v1 = %i, v2 = %i\n"
.LC4:
	.string	"function output is %i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB41:
	.loc 1 19 0
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 19 0
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 20 0
	movl	$5, 4(%rsp)
	movl	$10, 8(%rsp)
.LVL7:
.LBB14:
.LBB15:
	.loc 2 104 0
	leaq	8(%rsp), %rcx
	leaq	4(%rsp), %rdx
	movl	$.LC1, %esi
	movl	$1, %edi
	call	__printf_chk
.LVL8:
.LBE15:
.LBE14:
	.loc 1 22 0
	movl	8(%rsp), %esi
	movl	4(%rsp), %edi
	call	add_double
.LVL9:
	movl	%eax, 12(%rsp)
.LVL10:
.LBB16:
.LBB17:
	.loc 2 104 0
	movl	%eax, %edx
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL11:
.LBE17:
.LBE16:
	.loc 1 31 0
	movl	$45, 16(%rsp)
	movl	$33, 20(%rsp)
	.loc 1 33 0
	leaq	20(%rsp), %rsi
	leaq	16(%rsp), %rdi
	call	swap
.LVL12:
.LBB18:
.LBB19:
	.loc 2 104 0
	movl	20(%rsp), %ecx
	movl	16(%rsp), %edx
	movl	$.LC3, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL13:
.LBE19:
.LBE18:
	.loc 1 37 0
	leaq	12(%rsp), %rsi
	movl	$246, %edi
	call	func1
.LVL14:
.LBB20:
.LBB21:
	.loc 2 104 0
	movl	%eax, %edx
	movl	$.LC4, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL15:
.LBE21:
.LBE20:
	.loc 1 38 0
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail
.LVL16:
.L6:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x61b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0xc
	.long	.LASF57
	.long	.LASF58
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x6
	.byte	0x8
	.long	0x3f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.byte	0xf1
	.long	0x22d
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xf2
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xf7
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xf8
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xf9
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xfa
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xfb
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x104
	.long	0x265
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x106
	.long	0x26b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x108
	.long	0x3f
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x10c
	.long	0x3f
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x10e
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x112
	.long	0x54
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x113
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x114
	.long	0x271
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x118
	.long	0x281
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x121
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x129
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x12a
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x12b
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x12c
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x12e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x12f
	.long	0x3f
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x131
	.long	0x287
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x5
	.byte	0x96
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x5
	.byte	0x9c
	.long	0x265
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0x9d
	.long	0x265
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0x9e
	.long	0x26b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa2
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x234
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0xb
	.long	0x95
	.long	0x281
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22d
	.uleb128 0xb
	.long	0x95
	.long	0x297
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29d
	.uleb128 0xd
	.long	0x95
	.uleb128 0xe
	.long	.LASF60
	.byte	0x2
	.byte	0x66
	.long	0x3f
	.byte	0x3
	.long	0x2bf
	.uleb128 0xf
	.long	.LASF61
	.byte	0x2
	.byte	0x66
	.long	0x2bf
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	0x297
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.byte	0x4
	.long	0x3f
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x34d
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.byte	0x4
	.long	0x3f
	.long	.LLST0
	.uleb128 0x13
	.string	"b"
	.byte	0x1
	.byte	0x4
	.long	0x3f
	.long	.LLST1
	.uleb128 0x14
	.long	0x2a2
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.long	0x2b2
	.long	.LLST2
	.uleb128 0x16
	.quad	.LVL4
	.long	0x60a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF49
	.byte	0x1
	.byte	0x9
	.long	0x3f
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x385
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.byte	0x9
	.long	0x3f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0x9
	.long	0x8f
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.byte	0xd
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c6
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.byte	0xd
	.long	0x9c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0xd
	.long	0x9c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0xe
	.long	0x9c
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x19
	.long	.LASF51
	.byte	0x1
	.byte	0x13
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c4
	.uleb128 0x1a
	.string	"a"
	.byte	0x1
	.byte	0x14
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.string	"b"
	.byte	0x1
	.byte	0x14
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"m"
	.byte	0x1
	.byte	0x16
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF52
	.byte	0x1
	.byte	0x19
	.long	0x5d8
	.uleb128 0xa
	.byte	0x3
	.quad	func1
	.byte	0x9f
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.byte	0x1a
	.long	0x5ee
	.uleb128 0xa
	.byte	0x3
	.quad	swap
	.byte	0x9f
	.uleb128 0x1a
	.string	"v1"
	.byte	0x1
	.byte	0x1f
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"v2"
	.byte	0x1
	.byte	0x1f
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	0x2a2
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0x1
	.byte	0x15
	.long	0x49e
	.uleb128 0x15
	.long	0x2b2
	.long	.LLST3
	.uleb128 0x16
	.quad	.LVL8
	.long	0x60a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2a2
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x17
	.long	0x4e3
	.uleb128 0x15
	.long	0x2b2
	.long	.LLST4
	.uleb128 0x16
	.quad	.LVL11
	.long	0x60a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2a2
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x23
	.long	0x528
	.uleb128 0x15
	.long	0x2b2
	.long	.LLST5
	.uleb128 0x16
	.quad	.LVL13
	.long	0x60a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2a2
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.byte	0x25
	.long	0x56d
	.uleb128 0x15
	.long	0x2b2
	.long	.LLST6
	.uleb128 0x16
	.quad	.LVL15
	.long	0x60a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL9
	.long	0x2c4
	.uleb128 0x1e
	.quad	.LVL12
	.long	0x385
	.long	0x598
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.quad	.LVL14
	.long	0x34d
	.long	0x5b6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xf6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.quad	.LVL16
	.long	0x615
	.byte	0
	.uleb128 0x1f
	.long	0x3f
	.long	0x5d8
	.uleb128 0x20
	.long	0x3f
	.uleb128 0x20
	.long	0x8f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c4
	.uleb128 0x21
	.long	0x5ee
	.uleb128 0x20
	.long	0x9c
	.uleb128 0x20
	.long	0x9c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5de
	.uleb128 0x22
	.long	.LASF54
	.byte	0x6
	.byte	0xa8
	.long	0x26b
	.uleb128 0x22
	.long	.LASF55
	.byte	0x6
	.byte	0xa9
	.long	0x26b
	.uleb128 0x23
	.long	.LASF62
	.long	.LASF62
	.byte	0x2
	.byte	0x57
	.uleb128 0x24
	.long	.LASF63
	.long	.LASF63
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x2
	.byte	0x71
	.sleb128 0
	.quad	.LVL4-1-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -20
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x2
	.byte	0x72
	.sleb128 0
	.quad	.LVL4-1-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF60:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF33:
	.string	"_shortbuf"
.LASF21:
	.string	"_IO_buf_base"
.LASF13:
	.string	"long long unsigned int"
.LASF57:
	.string	"stack.c"
.LASF12:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF28:
	.string	"_fileno"
.LASF56:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -Og -fstack-protector-strong"
.LASF16:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF62:
	.string	"__printf_chk"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF38:
	.string	"__pad3"
.LASF44:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF52:
	.string	"f_ptr"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF46:
	.string	"_sbuf"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"_IO_save_base"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF55:
	.string	"stdout"
.LASF53:
	.string	"void_f_ptr"
.LASF10:
	.string	"sizetype"
.LASF20:
	.string	"_IO_write_end"
.LASF59:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF50:
	.string	"swap"
.LASF48:
	.string	"add_double"
.LASF47:
	.string	"_pos"
.LASF26:
	.string	"_markers"
.LASF2:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF63:
	.string	"__stack_chk_fail"
.LASF11:
	.string	"char"
.LASF45:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF61:
	.string	"__fmt"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF58:
	.string	"/home/wgrossman/Desktop/CS107/general"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF42:
	.string	"_unused2"
.LASF24:
	.string	"_IO_backup_base"
.LASF49:
	.string	"func1"
.LASF51:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
