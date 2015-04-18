# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install lua-cjson-2.1.0-1.rockspec