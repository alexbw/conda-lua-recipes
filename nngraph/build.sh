# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install nngraph-scm-1.rockspec