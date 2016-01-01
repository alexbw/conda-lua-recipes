# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install
luarocks install audio-0.1-0.rockspec --local-tree