*=$1000
lda #$0 ;ldx is pointer to the current character in the string
jmp print_str

text_ptr
.null "hello, world!"

chrout = $ab1e

print_str
    lda text_ptr,x ;load the current char into the accumulator
    ; check if the character is null
    cmp #$0 ;compare the accumulator to 0
    beq loop ;trap us in a loop if this is null

    jsr chrout ;print the character using kernal sub-routine

    inx ;move the text cursor

    ;jump back to the next character
    jmp print_str

loop jmp loop
