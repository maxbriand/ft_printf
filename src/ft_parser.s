	.text
	.file	"ft_parser.c"
	.globl	ft_parser                       # -- Begin function ft_parser
	.p2align	4, 0x90
	.type	ft_parser,@function
ft_parser:                              # @ft_parser
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movsbl	-1(%rbp), %eax
	cmpl	$99, %eax
	jne	.LBB0_5
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	cmpl	$40, %eax
	ja	.LBB0_3
# %bb.2:
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movl	-24(%rbp), %edx                 # 4-byte Reload
	movslq	%edx, %rax
	addq	16(%rcx), %rax
	addl	$8, %edx
	movl	%edx, (%rcx)
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, -40(%rbp)                 # 8-byte Spill
.LBB0_4:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %edi
	callq	ft_print_char
	movl	%eax, -20(%rbp)
	jmp	.LBB0_45
.LBB0_5:
	movsbl	-1(%rbp), %eax
	cmpl	$115, %eax
	jne	.LBB0_10
# %bb.6:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	cmpl	$40, %eax
	ja	.LBB0_8
# %bb.7:
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movl	-44(%rbp), %edx                 # 4-byte Reload
	movslq	%edx, %rax
	addq	16(%rcx), %rax
	addl	$8, %edx
	movl	%edx, (%rcx)
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	jmp	.LBB0_9
.LBB0_8:
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, -64(%rbp)                 # 8-byte Spill
.LBB0_9:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
	callq	ft_print_str
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_10:
	movsbl	-1(%rbp), %eax
	cmpl	$100, %eax
	je	.LBB0_12
# %bb.11:
	movsbl	-1(%rbp), %eax
	cmpl	$105, %eax
	jne	.LBB0_16
.LBB0_12:
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	cmpl	$40, %eax
	ja	.LBB0_14
# %bb.13:
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movl	-68(%rbp), %edx                 # 4-byte Reload
	movslq	%edx, %rax
	addq	16(%rcx), %rax
	addl	$8, %edx
	movl	%edx, (%rcx)
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB0_15
.LBB0_14:
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.LBB0_15:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %edi
	callq	ft_print_nbr
	movl	%eax, -20(%rbp)
	jmp	.LBB0_43
.LBB0_16:
	movsbl	-1(%rbp), %eax
	cmpl	$117, %eax
	jne	.LBB0_21
# %bb.17:
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	cmpl	$40, %eax
	ja	.LBB0_19
# %bb.18:
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movl	-92(%rbp), %edx                 # 4-byte Reload
	movslq	%edx, %rax
	addq	16(%rcx), %rax
	addl	$8, %edx
	movl	%edx, (%rcx)
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB0_20
.LBB0_19:
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, -112(%rbp)                # 8-byte Spill
.LBB0_20:
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	callq	ft_print_unnbr
	movl	%eax, -20(%rbp)
	jmp	.LBB0_42
.LBB0_21:
	movsbl	-1(%rbp), %eax
	cmpl	$120, %eax
	jne	.LBB0_26
# %bb.22:
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movl	(%rax), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	cmpl	$40, %eax
	ja	.LBB0_24
# %bb.23:
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movl	-116(%rbp), %edx                # 4-byte Reload
	movslq	%edx, %rax
	addq	16(%rcx), %rax
	addl	$8, %edx
	movl	%edx, (%rcx)
	movq	%rax, -136(%rbp)                # 8-byte Spill
	jmp	.LBB0_25
.LBB0_24:
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, -136(%rbp)                # 8-byte Spill
.LBB0_25:
	movq	-136(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	movsbl	-1(%rbp), %esi
	callq	ft_print_hexanbr
	movl	%eax, -20(%rbp)
	jmp	.LBB0_41
.LBB0_26:
	movsbl	-1(%rbp), %eax
	cmpl	$88, %eax
	jne	.LBB0_31
# %bb.27:
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movl	(%rax), %eax
	movl	%eax, -140(%rbp)                # 4-byte Spill
	cmpl	$40, %eax
	ja	.LBB0_29
# %bb.28:
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-140(%rbp), %edx                # 4-byte Reload
	movslq	%edx, %rax
	addq	16(%rcx), %rax
	addl	$8, %edx
	movl	%edx, (%rcx)
	movq	%rax, -160(%rbp)                # 8-byte Spill
	jmp	.LBB0_30
.LBB0_29:
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, -160(%rbp)                # 8-byte Spill
.LBB0_30:
	movq	-160(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	movsbl	-1(%rbp), %esi
	callq	ft_print_hexanbr
	movl	%eax, -20(%rbp)
	jmp	.LBB0_40
.LBB0_31:
	movsbl	-1(%rbp), %eax
	cmpl	$112, %eax
	jne	.LBB0_36
# %bb.32:
	movabsq	$.L.str, %rdi
	callq	ft_print_str
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	movl	(%rax), %eax
	movl	%eax, -164(%rbp)                # 4-byte Spill
	cmpl	$40, %eax
	ja	.LBB0_34
# %bb.33:
	movq	-176(%rbp), %rcx                # 8-byte Reload
	movl	-164(%rbp), %edx                # 4-byte Reload
	movslq	%edx, %rax
	addq	16(%rcx), %rax
	addl	$8, %edx
	movl	%edx, (%rcx)
	movq	%rax, -184(%rbp)                # 8-byte Spill
	jmp	.LBB0_35
.LBB0_34:
	movq	-176(%rbp), %rcx                # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, -184(%rbp)                # 8-byte Spill
.LBB0_35:
	movq	-184(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rdi
	movl	$120, %esi
	callq	ft_print_pt
	movl	%eax, -20(%rbp)
	jmp	.LBB0_39
.LBB0_36:
	movsbl	-1(%rbp), %eax
	cmpl	$37, %eax
	jne	.LBB0_38
# %bb.37:
	movl	$37, %edi
	callq	ft_print_char
	movl	%eax, -20(%rbp)
.LBB0_38:
	jmp	.LBB0_39
.LBB0_39:
	jmp	.LBB0_40
.LBB0_40:
	jmp	.LBB0_41
.LBB0_41:
	jmp	.LBB0_42
.LBB0_42:
	jmp	.LBB0_43
.LBB0_43:
	jmp	.LBB0_44
.LBB0_44:
	jmp	.LBB0_45
.LBB0_45:
	movl	-20(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	ft_parser, .Lfunc_end0-ft_parser
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0x"
	.size	.L.str, 3

	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_print_char
	.addrsig_sym ft_print_str
	.addrsig_sym ft_print_nbr
	.addrsig_sym ft_print_unnbr
	.addrsig_sym ft_print_hexanbr
	.addrsig_sym ft_print_pt
