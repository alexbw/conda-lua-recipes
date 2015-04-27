# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest

# Install torch
luarocks install rockspecs/lua-llthreads2-0.1.3-1.rockspec