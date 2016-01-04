#!/bin/bash

# PLEASE NOTE:
# Taken almost entirely from: https://luapower.com/terra

# TODO:
# - Lua include dir agnostic
# - Directly include sourcefiles in conda build, instead of project
# - Clean up after ourselves
# - Make a rockspec, that'd be best.

# export MACOSX_DEPLOYMENT_TARGET=10.11
# open $PREFIX
open $SRC_DIR
open $PREFIX
C="-arch x86_64 -stdlib=libc++ -mmacosx-version-min=10.7"
L="-arch x86_64 -stdlib=libc++ -mmacosx-version-min=10.7 -lcurses -undefined dynamic_lookup -exported_symbols_list terra.exp"
P=osx64
D=terra.so
A=libterra.a

die() { echo "$@" >&2; exit 1; }
verbose() { echo; echo "$@"; "$@"; }
LLVM_CONFIG=$PREFIX/bin/llvm-config
CUDA_HOME=/usr/local/cuda
ENABLE_CUDA=$(shell test -e $CUDA_HOME && echo 1 || echo 0)
CUDA_INCLUDES="-DTERRA_ENABLE_CUDA -I$CUDA_HOME/include -I$CUDA_HOME/nvvm/include"

LUA_VER=$($PREFIX/bin/lua -e "print(_VERSION)" | awk '{print $2}')
INSTALL_LUA_DIR=$PREFIX/share/lua/$LUA_VER/terra
INSTALL_LIB_DIR=$PREFIX/lib/lua/$LUA_VER
mkdir -p $INSTALL_LUA_DIR
mkdir -p $INSTALL_LIB_DIR

cd src

echo "LLVM PREFIX    : $(llvm-config --prefix)"
echo "LLVM CPP FLAGS : $(llvm-config --cppflags)"
echo "LLVM LD FLAGS  : $(llvm-config --ldflags)"

cx() {
	verbose "$@" $C -c -O2 -fno-common \
		-DTERRA_LUAPOWER_BUILD -DTERRA_LLVM_HEADERS_HAVE_NDEBUG -DLLVM_VERSION=35 -D_GNU_SOURCE \
		$(llvm-config --cppflags) \
		-I../release/include/terra \
		-I$PREFIX/include \
		-I$PREFIX/include/luajit-2.0 # TODO: lua agnostic
}
cc()  { cx gcc "$@"; }
cxx() { cx g++ "$@" -std=c++11 -fno-rtti -fvisibility-inlines-hidden; }

compile() {
	rm -f *.o
	# Turn each .lua file in src/ into a .h file
	# $PREFIX/bin/lua -bg terralib.lua terralib.h
	# $PREFIX/bin/lua -bg strict.lua strict.h
	# $PREFIX/bin/lua -bg cudalib.lua cudalib.h
	# # Fix narrowing errors
	# cat terralib.h | sed "s/char/unsigned char/" > terralib.h
	# cat strict.h | sed "s/char/unsigned char/" > strict.h
	# cat cudalib.h | sed "s/char/unsigned char/" > cudalib.h
	# # Generate clangpaths
	# cd ../
	# $PREFIX/bin/lua src/genclangpaths.lua src/dummy.c $PREFIX/bin/clang $CUDA_INCLUDES
	# cd src

	cc treadnumber.c
	cxx tdebug.cpp tkind.cpp tcompiler.cpp tllvmutil.cpp tcwrapper.cpp tinline.cpp terra.cpp tcuda.cpp \
		lparser.cpp lstring.cpp lobject.cpp lzio.cpp llex.cpp lctype.cpp
}

libs() {
	echo "
	-lclangFrontend
	-lclangDriver
	-lclangSerialization
	-lclangCodeGen
	-lclangParse
	-lclangSema
	-lclangAnalysis
	-lclangEdit
	-lclangAST
	-lclangLex
	-lclangBasic
	" $(llvm-config --libs)
}

slink() {
	# local alib=../../../../bin/$P/$A
	# local alib = $SRC_DIR/bin
	local alib=$INSTALL_LIB_DIR/libterra.a
	verbose rm -f $alib
	verbose ar cq $alib *.o
}

dlink() {
	# local dlib=../../../../bin/$P/clib/$D # luapower
	# pwd
	# exit
	local dlib=$INSTALL_LIB_DIR/terra.so
	verbose g++ -shared \
		-o $dlib \
		-L$PREFIX/bin \
		$(llvm-config --ldflags) \
		*.o $(libs) -lz $L
		# -L../../../../bin/$P \ # luapower
	# for OSX, Linux and Windows already stripped with -s
	verbose strip -x $dlib
}

install() {
	cp -f terralib.lua $INSTALL_LUA_DIR/
	cp -f cudalib.lua $INSTALL_LUA_DIR/
	cp -f ../lib/parsing.t $INSTALL_LUA_DIR/
	cp -f ../lib/std.t $INSTALL_LUA_DIR/
	# cp -f terralib.lua                 ../../../../
	# cp -f cudalib.lua                  ../../../../
	# cp -f ../release/include/parsing.t ../../../../terra_parsing.t
	# cp -f ../release/include/std.t     ../../../../terra_std.t
}

libfiles() {
	local dir="$(llvm-config --prefix)"
	for lib in $(libs); do
		echo "$dir/lib/lib${lib#-l}.a"
	done
}

[ "$1" = libs ] && { libfiles; exit; }


compile
slink
dlink
install
