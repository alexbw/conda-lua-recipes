# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install
luarocks install itorch-scm-1.rockspec --local-tree