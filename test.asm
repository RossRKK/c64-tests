* = $1000
ldx $D020

loop
inx
stx $D020
jmp loop
