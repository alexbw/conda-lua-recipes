mkdir -p build_
cd build_
$PREFIX/bin/cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DGFLAGS_NAMESPACE=google
make
make install