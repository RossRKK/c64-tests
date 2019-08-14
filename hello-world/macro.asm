print .macro      ;start macro def
   lda #<tx    ;lo-byte of tx
   ldy #>tx    ;hi-byte of tx
   jsr $ab1e   ;print it
   jmp end
tx .null "@1"  ;@1 is replaced by a textual argument
end .endm       ;end macro def

*=$1000
#print "hello, world!"
jmp loop

loop jmp loop
