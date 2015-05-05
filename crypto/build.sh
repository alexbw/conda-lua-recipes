# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest

# Install luacrypto
$PREFIX/bin/luarocks install luacrypto