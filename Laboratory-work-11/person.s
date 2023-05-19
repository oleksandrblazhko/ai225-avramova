	.file	"person.c"
	.text
	.section	.rodata
.LC0:
	.string	"Failed to delete person.\n"
.LC1:
	.string	"Failed to add person.\n"
.LC2:
	.string	"Failed to get person.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	connect_person
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	remove_person
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L4
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PQfinish
	movl	$1, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	add_person
	movl	%eax, -16(%rbp)
	cmpl	$1, -16(%rbp)
	je	.L5
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PQfinish
	movl	$1, %eax
	jmp	.L3
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_person
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L6
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	movl	$1, %esi
	movl	$.LC2, %edi
	call	fwrite
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PQfinish
	movl	$1, %eax
	jmp	.L3
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PQfinish
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-4)"
	.section	.note.GNU-stack,"",@progbits
