# Make sure luarocks can see all local dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install
$PREFIX/bin/luarocks install penlight-scm-1.rockspec --local-tree