mv folly/* .
set CC=gcc-4.9
set CXX=g++-4.9
autoreconf -ivf
./configure LDFLAGS="-L$PREFIX/lib" CPPFLAGS="-I$PREFIX/include"
LD_LIBRARY_PATH=$PREFIX/ make
make check
make install