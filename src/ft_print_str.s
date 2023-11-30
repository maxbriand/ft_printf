	.text
	.file	"ft_print_str.c"
	.globl	ft_print_str                    # -- Begin function ft_print_str
	.p2align	4, 0x90
	.type	ft_print_str,@function
ft_print_str:                           # @ft_print_str
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movl	$0, -20(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	ft_print_char
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_5:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	ft_print_str, .Lfunc_end0-ft_print_str
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_print_char
