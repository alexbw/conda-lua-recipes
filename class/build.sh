# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest

# Install torch
$PREFIX/bin/luarocks install rocks/class-scm-1.rockspec
