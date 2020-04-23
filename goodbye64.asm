;
; Copyright © 2020 e-UCM (http://www.e-ucm.es/)
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;     http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.
;

; goodbye64.asm
BITS 64
GLOBAL _start

SECTION .data
message db "Goodbye!",10

SECTION .text
_start:
	mov rax, 4 			; write syscall
	mov rbx, 1 			; stdout fd is 1
	mov rcx, message	; put address of message
	mov rdx, 9			; message is 9 bytes
	syscall 			; run syscall
	mov rax, 1 			; exit syscall
	mov rbx, 0 			; exit code
	syscall 			; run syscall