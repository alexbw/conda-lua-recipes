unset MACOSX_DEPLOYMENT_TARGET

make LLVM_CONFIG=$PREFIX/bin/llvm-config \
	 CXX=$PREFIX/bin/clang++ \
	 CC=$PREFIX/bin/clang \
	 LUAJIT_LIB=$PREFIX/lib/libluajit-5.1.a \
	 LUAJIT_INCLUDE=$PREFIX/include \
	 LUAJIT_PATH=$PREFIX/share/luajit-2.0.4/?.lua \
	 LUAJIT=$PREFIX/bin/luajit \

mv release/bin/terra $PREFIX/bin/
mv release/include/terra $PREFIX/include/
mv release/lib/* $PREFIX/lib/


# make LLVM_CONFIG=/Users/Alex/llvmbuilds/clang+llvm-3.5.2-x86_64-apple-darwin/bin/llvm-config \
# 	 CXX=/Users/Alex/llvmbuilds/clang+llvm-3.5.2-x86_64-apple-darwin/bin/clang++ \
# 	 CC=/Users/Alex/llvmbuilds/clang+llvm-3.5.2-x86_64-apple-darwin/bin/clang \
# 	 LUAJIT_LIB=$PREFIX/lib/libluajit-5.1.a \
# 	 LUAJIT_INCLUDE=$PREFIX/include \
# 	 LUAJIT_PATH=$PREFIX/share/luajit-2.0.4/?.lua \
# 	 LUAJIT=$PREFIX/bin/luajit