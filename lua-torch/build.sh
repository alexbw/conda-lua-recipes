# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install torch
$PREFIX/bin/luarocks make rocks/torch-scm-1.rockspec --local-tree LUA_INCDIR=$PREFIX/include
