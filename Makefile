BGFXROOT=..
VERSION=Debug
#VERSION=Release
LUA_INC=-I /usr/local/include
LUA_LIB=-L /usr/local/bin -llua54
CFLAGS=-g -Wall
STB_INC=-I $(BGFXROOT)/bimg/3rdparty -I $(BGFXROOT)/bgfx/3rdparty 

all : spritepack.dll

spritepack.dll : spritepack.c
	gcc --shared -o $@ $(CFLAGS) $(DEFINES) $^ $(LUA_INC) $(LUA_LIB) $(STB_INC)

clean :
	rm -f spritepack.dll



