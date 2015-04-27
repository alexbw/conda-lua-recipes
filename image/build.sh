# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest

# Install torch
luarocks build image-1.1.alpha-0.rockspec
luarocks install image-1.1.alpha-0.rockspec