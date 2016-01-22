# TODO:
# Should check for nvcc or nvidia-smi before building.
# Not sure how else to require CUDA.

# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install torch
luarocks make rocks/cutorch-scm-1.rockspec --local-tree

open $PREFIX