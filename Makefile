all: test hello-world

clean:
	rm bin/*

test: test.asm
	tmpx -i test.asm -o bin/test.d64

hello-world: hw-direct hw-loop hw-sub-routine hw-pointer hw-macro hw-kernal-str hw-kernal-char

hw-direct: hello-world/direct-memory.asm
	tmpx -i hello-world/direct-memory.asm -o bin/hw-direct-memory.d64

hw-loop: hello-world/hello-world.asm
	tmpx -i hello-world/hello-world.asm -o bin/hw-loop.d64

hw-sub-routine: hello-world/sub-routine.asm
	tmpx -i hello-world/sub-routine.asm -o bin/hw-sub-routine.d64

hw-kernal-char: hello-world/kernal-char.asm
	tmpx -i hello-world/kernal-char.asm -o bin/hw-kernal-char.d64

hw-kernal-str: hello-world/kernal-str.asm
	tmpx -i hello-world/kernal-str.asm -o bin/hw-kernal-str.d64

hw-pointer: hello-world/pointer.asm
	tmpx -i hello-world/pointer.asm -o bin/hw-pointer.d64

hw-macro: hello-world/macro.asm
	tmpx -i hello-world/macro.asm -o bin/hw-macro.d64
