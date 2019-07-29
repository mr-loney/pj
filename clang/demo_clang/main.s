	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	callq	_objc_autoreleasePoolPush
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rcx
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	movq	%rcx, %rdi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	_objc_msgSend
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-16(%rbp), %rcx
	movq	%rax, -16(%rbp)
	movq	%rcx, %rdi
	callq	_objc_storeStrong
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	_objc_autoreleasePoolPop
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_"
L_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_BBB

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_:                  ## @OBJC_METH_VAR_NAME_
	.asciz	"new"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_
L_OBJC_SELECTOR_REFERENCES_:
	.quad	L_OBJC_METH_VAR_NAME_

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64


.subsections_via_symbols
