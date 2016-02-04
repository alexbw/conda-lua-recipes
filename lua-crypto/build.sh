# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Cheating
curl -O "https://gist.githubusercontent.com/starius/b20d3e63929ae678c857/raw/09a0ac685fb7d36372e1a538568f6c2e520707ec/luacrypto-0.3.2-2.rockspec"
$PREFIX/bin/luarocks install luacrypto-0.3.2-2.rockspec --local-tree OPENSSL_DIR=$PREFIX