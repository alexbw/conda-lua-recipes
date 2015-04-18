# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install $(find . -iname '*.rockspec' -d 2 | head -n 1)