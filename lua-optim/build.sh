# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install torch
$PREFIX/bin/luarocks install optim-1.0.5-0.rockspec --local-tree
