# remove the soft-link to versioned luajit

# replace it with a small script

LUA="$PREFIX/bin/luajit"
VERSIONED_LUA="$PREFIX/bin/$(readlink $LUA)"

rm -rf $PREFIX/bin/luajit

echo "#!/bin/bash" > $PREFIX/bin/luajit
echo "" >> $PREFIX/bin/luajit
echo "LUA_PATH=\"$(luarocks path --lr-path)\" LUA_CPATH=\"$(luarocks path --lr-cpath)\" exec $VERSIONED_LUA \"\$@\"" >> $PREFIX/bin/luajit
chmod +x $PREFIX/bin/luajit