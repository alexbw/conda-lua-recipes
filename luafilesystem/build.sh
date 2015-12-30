# Make sure luarocks can see all local dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install
$PREFIX/bin/luarocks install rockspecs/luafilesystem-1.6.3-1.rockspec --local-tree