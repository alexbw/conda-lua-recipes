#!/bin/bash

# Make sure luarocks can see all local dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install
# Rocks aren't located in a standard location, although
# they tend to be top-level or in a rocks/ directory.
# NOTE: we're just picking the first rock we find. If there's
# more than one, specify it manually.
$PREFIX/bin/luarocks install lzmq ZMQ_INCDIR=$PREFIX/include
# ROCK=$(find . -name "*.rockspec" | sort -n -r | head -n 1)
# $PREFIX/bin/luarocks install "$ROCK" --local-tree

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
