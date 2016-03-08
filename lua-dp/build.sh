# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

$PREFIX/bin/luarocks install rocks/dp-scm-1.rockspec --local-tree
