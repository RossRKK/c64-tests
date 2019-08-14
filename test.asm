* = $1000
ldx #$00
loop = *
inc $D020
inx
jmp loop
