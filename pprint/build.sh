# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest

# Install torch
$PREFIX/bin/luarocks install pprint-0-0.rockspec