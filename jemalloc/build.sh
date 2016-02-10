#/bin/bash -eu

./configure --prefix="$PREFIX"
make
make install
