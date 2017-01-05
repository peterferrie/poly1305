@echo off
yasm -fbin -DBIN p1305.asm -op1305.bin
yasm -fwin32 p1305.asm -op1305.obj
cl /Os /O2 /Fa /c /GS- poly1305.c
jwasm -bin poly1305.asm
cl test.c p1305.obj poly1305.c cc20.c 
del *.obj