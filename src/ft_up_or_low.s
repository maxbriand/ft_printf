	.text
	.file	"ft_up_or_low.c"
	.globl	ft_up_or_low                    # -- Begin function ft_up_or_low
	.p2align	4, 0x90
	.type	ft_up_or_low,@function
ft_up_or_low:                           # @ft_up_or_low
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%sil, %al
	movl	%edi, -4(%rbp)
	movb	%al, -5(%rbp)
	leaq	-32(%rbp), %rdi
	movabsq	$.L.str, %rsi
	movl	$17, %edx
	callq	ft_strlcpy
	leaq	-64(%rbp), %rdi
	movabsq	$.L.str.1, %rsi
	movl	$17, %edx
	callq	ft_strlcpy
	movsbl	-5(%rbp), %eax
	cmpl	$120, %eax
	jne	.LBB0_2
# %bb.1:
	movslq	-4(%rbp), %rax
	movsbl	-32(%rbp,%rax), %edi
	callq	ft_print_char
	jmp	.LBB0_5
.LBB0_2:
	movsbl	-5(%rbp), %eax
	cmpl	$88, %eax
	jne	.LBB0_4
# %bb.3:
	movslq	-4(%rbp), %rax
	movsbl	-64(%rbp,%rax), %edi
	callq	ft_print_char
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	ft_up_or_low, .Lfunc_end0-ft_up_or_low
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0123456789abcdef"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.1, 17

	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_strlcpy
	.addrsig_sym ft_print_char
