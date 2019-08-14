* = $1000
ldx #$0 ;ldx is pointer to the current character in the string
ldy #$0 ;ldy is offset from the begiining of the screen
jmp print_start

text_ptr
.screen "hello, world!"
.byte 0

screen=1024

print_start
lda text_ptr,x ;load the current char into the accumulator

; check if the character is null
cmp #$0 ;compare the accumulator to 0
beq loop ;trap us in a loop if it is

sta screen,y ;save the current character to the screen
iny ;move the screen pointer
inx ;move the text cursor

;jump back to the next character
jmp print_start

loop jmp loop
