BITS 32

extern printf

section .data
	num: db "%d",10, 0
	a: dd 2

section .text
	global main
	
	main:
	     push ebp
	     mov ebp,esp
	
	     loop:
	     mov  ebx, DWORD[a]
	     push ebx
	     push num
	     call printf
	     add DWORD[a],2
	     cmp ebx,100
	     jne loop
	
	     
	     mov eax,0
	     mov esp,ebp
	     pop ebp
	     ret

