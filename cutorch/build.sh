# TODO:
# Should check for nvcc or nvidia-smi before building.
# Not sure how else to require CUDA.

# Make sure luarocks can see all dependencies
luarocks-admin make_manifest

# Install torch
luarocks install rocks/cutorch-scm-1.rockspec