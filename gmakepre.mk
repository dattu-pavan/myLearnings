
ifeq ($(CLASS),unix)
A	= .a
D	= .so
E	=
O	= .o
S	= .s
Y	=
else
A	:= .lib
D	:= .dll
E	:= .exe
O	:= .obj
S	:= .asm
T	:= .tlb
Y	:= .sys
Z	:= .rc
V	:= .rsrc
endif
