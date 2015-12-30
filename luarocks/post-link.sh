# remove the soft-link to versioned luajit
# replace it with a small script

echo ""
echo "For Lua to find modules installed with luarocks, you should update your environment variables"
echo "LUA_PATH=\"$($PREFIX/bin/luarocks path --lr-path)\" LUA_CPATH=\"$($PREFIX/bin/luarocks path --lr-cpath)\" exec $VERSIONED_LUA \"\$@\""

# VERSIONED_LUA="$PREFIX/bin/$(readlink $LUA)"

# rm -rf $PREFIX/bin/luajit

# echo "#!/bin/bash" > $PREFIX/bin/luajit
# echo "" >> $PREFIX/bin/luajit
# echo "LUA_PATH=\"$($PREFIX/bin/luarocks path --lr-path)\" LUA_CPATH=\"$($PREFIX/bin/luarocks path --lr-cpath)\" exec $VERSIONED_LUA \"\$@\"" >> $PREFIX/bin/luajit
# chmod +x $PREFIX/bin/luajit