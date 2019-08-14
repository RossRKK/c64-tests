all: test hello-world

test: test.asm
	tmpx -i test.asm -o bin/test.d64

hello-world: hw-direct hw-loop hw-sub-routine

hw-direct:
	tmpx -i hello-world/direct-memory.asm -o bin/hw-direct-memory.d64

hw-loop:
	tmpx -i hello-world/hello-world.asm -o bin/hw-loop.d64

hw-sub-routine:
	tmpx -i hello-world/sub-routine.asm -o bin/hw-sub-routine.d64
