# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install torch
luarocks build image-1.1.alpha-0.rockspec --local-tree
luarocks install image-1.1.alpha-0.rockspec --local-tree