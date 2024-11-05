ORG 100h                    ; Program starts at offset 100h

; Initialize counter to ASCII code for 'A'
mov cx, 'A'                 ; CX will hold the current character (starting from 'A')

print_loop:
    ; Display the character in CX
    mov ah, 02h             ; DOS interrupt to print a character
    mov dl, cl              ; Move the character in CX to DL for printing
    int 21h                 ; Print the character

    ; Print a space after each character for clarity
    mov dl, ' '             ; Space character in ASCII
    int 21h                 ; Print the space

    ; Increment the character
    inc cx
    cmp cx, 'Z'             ; Check if we've printed up to 'Z'
    jle print_loop          ; If CX <= 'Z', continue the loop

done:
; Exit program                                                  	
mov ah, 4Ch                 ; DOS interrupt to exit the program
int 21h
