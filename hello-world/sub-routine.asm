*=$1000
ldx #$0 ;ldx is pointer to the current character in the string
ldy #$0 ;ldy is offset from the begiining of the screen
sty cusrsor_ptr ;clear the pointer
jmp print_str

text_ptr
.screen "hello, world!"
.byte 0

screen=1024

cusrsor_ptr = $4000

; print the character in the accumulator
print_char
    ldy cusrsor_ptr ;load the current cursor position
    sta screen,y ;save the current character to the screen
    iny ;increment the server position and save it
    sty cusrsor_ptr

    inx ;deliberatley mess with x (this is done to check the save and restore works)

    rts ;return from sub-routine

print_str
    lda text_ptr,x ;load the current char into the accumulator

    ; check if the character is null
    cmp #$0 ;compare the accumulator to 0
    beq loop ;trap us in a loop if this is null

    tay ;move a to y
    txa ;move x to a
    pha ;push a to the stack

    tya ;restore the original a (the character)

    jsr print_char ;print the character using sub-routine

    pla ;pull the old x value onto a
    tax ;restore the prvious x value

    inx ;move the text cursor
    iny ;deliberatly mess with y (done to check that the save and restore works)

    ;jump back to the next character
    jmp print_str

loop jmp loop
