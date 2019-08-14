*=$1000
;take the text pointer and load it into the memory address that's used as an
;argument fo print_str
ldx >text_ptr
stx print_ptr
ldx <text_ptr
stx print_ptr+1

jmp print_str

text_ptr
.null "hello, world!"

chrout = $ffd2

print_ptr = $2000

print_str
    lda print_ptr,x ;load the current char into the accumulator
    ; check if the character is null
    cmp #$0 ;compare the accumulator to 0
    beq loop ;trap us in a loop if this is null

    jsr chrout ;print the character using kernal sub-routine

    inx ;move the text cursor

    ;jump back to the next character
    jmp print_str

loop jmp loop
