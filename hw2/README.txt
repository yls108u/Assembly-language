README.txt

1.	Content
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
In the program, we assign r0=0, r1=10, r2=20, r3=12, r4=2, r5=3, r6=4, and use them to multiply r0. Eventually, we will get r0 = 2*r1+3*r2+4*r3 = 0x80 = 128.
mul r0, r1, r4		-> r0=r1*r4
mla r0, r2, r5, r0	-> r0=r2*r5+r0
mla r0, r3, r6, r0	-> r0=r3*r6+r0

2.	How to compile
Using gcc :	$ arm-none-eabi-gcc -g -O0 hw2.s -o \hw2.exe
It will produce a .exe file called hw2.exe.

3.	Environment
ID = Ubuntu
RELEASE = 18.04
CODENAME = bionic
DESCRIPTION = Ubuntu 18.04.1 LTS
Linux parallels-Parallels-Virtual-Platform 4.15.0-34-generic #37-Ubuntu SMP Mon Aug 27 15:21:48 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux

4.	How to execute
Using : $ arm-none-eabi-insight
Click the “file” and choose hw2.exe. Next, select execution model “simulator”, and click “run” -> “connect to target”. Finally, click “run” to execute the hw2.exe file. If you want to see the result, click “control” -> “register”, remember to keep clicking “run” until the program run to “nop”, then you can see the result of 0x80 in r0’s register.

