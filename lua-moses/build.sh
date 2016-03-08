# Make sure luarocks can see all local dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree
# TODO: cheating
$PREFIX/bin/luarocks install moses