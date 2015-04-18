# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install rockspecs/luafilesystem-1.6.3-1.rockspec