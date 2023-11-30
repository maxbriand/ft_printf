	.text
	.file	"ft_print_nbr.c"
	.globl	ft_print_nbr                    # -- Begin function ft_print_nbr
	.p2align	4, 0x90
	.type	ft_print_nbr,@function
ft_print_nbr:                           # @ft_print_nbr
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movslq	-8(%rbp), %rax
	cmpq	$-2147483648, %rax              # imm = 0x80000000
	jne	.LBB0_2
# %bb.1:
	movabsq	$.L.str, %rdi
	callq	ft_print_str
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	cmpl	$0, -8(%rbp)
	jge	.LBB0_4
# %bb.3:
	movl	$45, %edi
	callq	ft_print_char
	imull	$-1, -8(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB0_4:
	cmpl	$9, -8(%rbp)
	jle	.LBB0_6
# %bb.5:
	movl	-8(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edi
	callq	ft_print_nbr
	movl	-8(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	addl	$48, %edx
	movb	%dl, %al
	movsbl	%al, %edi
	callq	ft_print_char
.LBB0_6:
	cmpl	$10, -8(%rbp)
	jge	.LBB0_9
# %bb.7:
	cmpl	$0, -8(%rbp)
	jl	.LBB0_9
# %bb.8:
	movl	-8(%rbp), %eax
	addl	$48, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %edi
	callq	ft_print_char
.LBB0_9:
	movl	$10, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	ft_print_nbr, .Lfunc_end0-ft_print_nbr
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-2147483648"
	.size	.L.str, 12

	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_print_nbr
	.addrsig_sym ft_print_str
	.addrsig_sym ft_print_char
