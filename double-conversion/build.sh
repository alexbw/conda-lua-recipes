# scons DESTDIR=$PREFIX install

$PREFIX/bin/cmake . -DCMAKE_INSTALL_PREFIX=$PREFIX  -DBUILD_SHARED_LIBS=ON
make
make install