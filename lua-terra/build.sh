make LLVM_CONFIG=llvm-config \
	 CXX=$PREFIX/bin/clang++ \
	 CC=$PREFIX/bin/clang \
	 # CXX=clang++ CC=clang \
	 LUAJIT_LIB=$PREFIX/lib/libluajit-5.1.a \
	 LUAJIT_INCLUDE=$PREFIX/include/luajit-2.0 \
	 LUAJIT_PATH=$PREFIX/share/luajit-2.0.4/?.lua \
	 LUAJIT=$PREFIX/bin/luajit