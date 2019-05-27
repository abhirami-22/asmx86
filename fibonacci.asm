BITS 32



extern printf

extern scanf



section .data
	
	out: dd "%d", 10,0
	
	in : dd "%d", 0
		
	

	limit: dd 0 
	
	i    : dd 0
	
	a    : dd 0
			
	b    : dd 1
	
	c    : dd 0



section .rodata
	
	text: db "Enter limit : ", 0



section .text
	
global main
	

main:
	
		push ebp
	
		mov ebp,esp

	
	
		push text
	
		call printf

	

		push limit
	
		push in
	
		call scanf

	

		cmp DWORD[limit],0
	
		je end


	
		mov eax, DWORD[a]
	
		push eax
	
		push out
	
		call printf


	
		cmp DWORD[limit],1
	
		je end

	 
	
		mov eax, DWORD[b]
	
		push eax
	
		push out
	
		call printf
	

	
		cmp DWORD[limit],2
	
		je end
	

	
		sub DWORD[limit],2
	

	
		loop:
	
		mov DWORD[c],0
	
		mov eax,DWORD[c]
	
	add eax,DWORD[a]
	
	add eax,DWORD[b]
	

	
		mov ebx, DWORD[b]
	
		mov DWORD[a],ebx

		mov DWORD[b],eax



		push eax
	
	push out
	
		call printf

	

		add DWORD[i],1
	
		mov edx,DWORD[i]

		cmp edx,DWORD[limit]
	
		jl loop

	

		end:
	
		mov eax,0

		mov esp,ebp
	
		pop ebp
	
		ret

