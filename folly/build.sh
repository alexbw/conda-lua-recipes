open $PREFIX
rm $PREFIX/lib/libglog.la
rm $PREFIX/lib/libglog.a
open .
cd folly && autoreconf -ivf --prepend-include=$PREFIX/include
./configure --prefix=$PREFIX LDFLAGS="-L$PREFIX/lib" CPPFLAGS="-I$PREFIX/include"
# LD_LIBRARY_PATH=$PREFIX/ make
# make check
# make install