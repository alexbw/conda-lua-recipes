# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install
$PREFIX/bin/luarocks install rocks/argcheck-scm-1.rockspec --local-tree