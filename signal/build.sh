# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest

# Install
luarocks install rocks/signal-scm-1.rockspec