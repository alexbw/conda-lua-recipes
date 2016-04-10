# open $PREFIX
# open .
cd folly
autoreconf -ivf --prepend-include=$PREFIX/include
./configure --prefix=$PREFIX LDFLAGS="-L$PREFIX/lib" CPPFLAGS="-I$PREFIX/include -std=c++11" BOOST_CPPFLAGS="-I$PREFIX/include" BOOST_LDFLAGS="-L$PREFIX/lib"
make
make check
make install