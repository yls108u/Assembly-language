	.section .text
	.global main
	.type main,%function
main:
	/*initial values*/
	mov r0, #0
	mov r1, #10
	mov r2, #20
	mov r3, #12
	mov r4, #2
	mov r5, #3
	mov r6, #4
	/*multiply r0*/
	mul r0, r1, r4
	mla r0, r2, r5, r0
	mla r0, r3, r6, r0
	nop
	.end
