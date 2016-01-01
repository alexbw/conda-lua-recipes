#!/bin/bash

# Make sure luarocks can see all local dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install
# I APOLOGIZE FOR THIS HACK.
# IT is much better to install from controlled, and downloaded code
# but lbase64 runs on version-specific tarballs. Luarocks takes care of
# versioning this for us, so I'm not going to worry about it for now.
# Plus, I believe this library is only used for iTorch, and nothing else.
$PREFIX/bin/luarocks install lbase64 --local-tree


# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
