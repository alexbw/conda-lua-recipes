# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install sys-1.1-0.rockspec