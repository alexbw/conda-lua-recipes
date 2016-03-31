# open $PREFIX
mv folly/* .
autoreconf -i
echo $PREFIX
echo $(which ld)
ls $PREFIX/bin
CXXFLAGS=-I$PREFIX/include:$CXXFLAGS ./configure LDFLAGS=-L$PREFIX/lib # CXXFLAGS=-I$PREFIX/include
LD_LIBRARY_PATH=$PREFIX/ make
make check
make install