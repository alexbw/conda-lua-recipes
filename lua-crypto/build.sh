# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install luacrypto
# Cheating. Should install locally
# Incompatible with lua 5.3
# This branch apparently fixes this: https://github.com/starius/luacrypto
# Rockspec: https://gist.github.com/starius/b20d3e63929ae678c857
$PREFIX/bin/luarocks install luacrypto --local-tree OPENSSL_DIR=$PREFIX