# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install cephes-0-0.rockspec