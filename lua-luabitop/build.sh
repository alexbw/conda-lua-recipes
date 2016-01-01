#!/bin/bash

# Make sure luarocks can see all local dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Cheating, had problems with local install
$PREFIX/bin/luarocks install luabitop --local-tree