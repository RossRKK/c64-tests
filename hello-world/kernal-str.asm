*=$1000
lda #<text_ptr   ;lo-byte of tx
ldy #>text_ptr  ;hi-byte of tx
jsr print   ;print it
jmp loop

print = $ab1e

text_ptr
.null "hello, world!"

loop jmp loop
