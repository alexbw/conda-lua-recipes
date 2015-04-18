# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install xlua-1.0-0.rockspec