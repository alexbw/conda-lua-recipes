# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install torch
luarocks install xlua-1.1-0.rockspec --local-tree
