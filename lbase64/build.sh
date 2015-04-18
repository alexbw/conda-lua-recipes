# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install
curl -O http://luarocks.org/manifests/luarocks/lbase64-20120820-1.rockspec
luarocks install lbase64-20120820-1.rockspec