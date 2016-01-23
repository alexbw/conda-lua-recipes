# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install torch
$PREFIX/bin/luarocks build image-1.1.alpha-0.rockspec --local-tree
$PREFIX/bin/luarocks install image-1.1.alpha-0.rockspec --local-tree