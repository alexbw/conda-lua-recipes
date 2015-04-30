# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest

# Install lzmq
luarocks install rockspecs/lzmq-0.4.2-1.rockspec ZMQ_DIR=$PREFIX