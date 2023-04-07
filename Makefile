all:
as -o timer.o timer.s -g
ld -o timer timer.o