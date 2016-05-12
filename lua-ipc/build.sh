# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree
$PREFIX/bin/luarocks make ipc-scm-1.rockspec --local-tree
