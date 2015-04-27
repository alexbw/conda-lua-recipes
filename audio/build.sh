# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest

# Install
luarocks install audio-0.1-0.rockspec