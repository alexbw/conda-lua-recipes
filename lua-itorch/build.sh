# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install the binaries
cp itorch $PREFIX/bin
cp itorch_launcher $PREFIX/bin

# Install the jupyter kernel
mkdir -p $PREFIX/share/jupyter/kernels/itorch
cp kernelspec/* $PREFIX/share/jupyter/kernels/itorch/

# Let luarocks+cmake do the rest
luarocks make