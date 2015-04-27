# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest

# Install
luarocks install rocks/argcheck-1.0.0-0.rockspec