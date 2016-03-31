mkdir -p build_
cd build_
$PREFIX/bin/cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX
make
make install