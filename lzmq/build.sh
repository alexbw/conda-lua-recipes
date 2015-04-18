# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install rockspecs/lzmq-0.4.2-1.rockspec