; Syscall reference: https://filippo.io/linux-syscall-table/#:~:text=write

format ELF64 executable 3 ; 64-bit Executable and Linkable Format with ABI 3 (3 is for linux)

segment readable executable
  mov rax, 1               ; sys_write syscall id
  mov rdi, 1               ; standard output id
  mov rsi, hello_world_msg ; message bytes
  mov rdx, hello_world_sz  ; message size
  syscall

  mov rax, 60              ; exit syscall id
  xor rdi, rdi             ; exit code 0 :)
  syscall

segment readable
  hello_world_msg db 'Hello, world!', 10
  hello_world_sz = $-hello_world_msg    ; the message and its size must be in this order,
                                        ; with no other data in between, because the size
                                        ; is determined using the offset between the current
                                        ; address and the hello_world_msg address
