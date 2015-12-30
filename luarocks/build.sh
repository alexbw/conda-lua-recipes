# TODO
# - Should use Lua version to set luarocks location. e.g.: lib/luarocks -> /lib/luajit2.0/luarocks
# - Should set rocks-tree to be "user" instead of "system". Vibes better with the conda approach.

echo $LUA_INCLUDE_DIR
./configure --prefix=$PREFIX \
			--sysconfdir=$PREFIX/share/lua/ \
			--with-lua-include=$LUA_INCLUDE_DIR
			# --rocks-tree=$PREFIX \
			# --force-config \
			# --with-lua=$PREFIX \
			# --lua-version=5.1 \
			# --versioned-rocks-dir
make bootstrap