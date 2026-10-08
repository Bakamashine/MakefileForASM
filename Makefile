main_file := main.asm
obj_file := main.obj
arch := win64
exe_file :=  main.exe

all:
	nasm -f $(arch) $(main_file) -o $(obj_file)
	gcc $(obj_file) -o $(exe_file)

clear:
	erase $(obj_file), $(exe_file)
