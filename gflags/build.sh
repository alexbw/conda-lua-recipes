mkdir -p build
cd build
$PREFIX/bin/cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX
make
make install