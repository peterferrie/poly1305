msvc:
		cl /nologo /O2 /Ot /DTEST test.c cc20.c poly1305.c
gnu:
		gcc -DTEST -Wall -O2 test.c cc20.c poly1305.c -otest	 
clang:
		clang -DTEST -Wall -O2 test.c cc20.c poly1305.c -otest	    