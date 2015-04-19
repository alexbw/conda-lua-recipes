# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install nnx-0.1-1.rockspec