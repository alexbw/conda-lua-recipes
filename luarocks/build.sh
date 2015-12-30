# TODO
# - Should use Lua version to set luarocks location. e.g.: lib/luarocks -> /lib/luajit2.0/luarocks
# - Should set rocks-tree to be "user" instead of "system". Vibes better with the conda approach.

./configure --prefix=$PREFIX \
			--sysconfdir=$PREFIX/share/lua/ \
			--with-lua-include=$LUA_INCLUDE_DIR
			# --rocks-tree=$PREFIX \
			# --force-config \
			# --versioned-rocks-dir
make bootstrap