mv folly/* .
autoreconf -ivf
./configure LDFLAGS="-L$PREFIX/lib" CPPFLAGS="-I$PREFIX/include"
LD_LIBRARY_PATH=$PREFIX/ make
make check
make install