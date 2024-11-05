ORG 100h                   ; Program starts at offset 100h

; Initialize counter to ASCII code for '9'
mov cx, '9'                ; CX will hold the current number (starting from '9')

print_loop:
    ; Display the number in CX
    mov ah, 02h            ; DOS interrupt to print a character
    mov dl, cl             ; Move the character in CX to DL for printing
    int 21h                ; Print the character

    ; Print a space after each number for clarity
    mov dl, ' '            ; Space character in ASCII
    int 21h                ; Print the space

    ; Decrement the number
    dec cx
    cmp cx, '0'            ; Check if we've printed down to '0'
    jge print_loop         ; If CX >= '0', continue the loop

done:
; Exit program
mov ah, 4Ch                ; DOS interrupt to exit the program
int 21h
