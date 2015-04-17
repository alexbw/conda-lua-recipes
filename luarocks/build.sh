# TODO
# - Should use Lua version to set luarocks location. e.g.: lib/luarocks -> /lib/luajit2.0/luarocks
# - Should set rocks-tree to be "user" instead of "system". Vibes better with the conda approach.


./configure --prefix=$PREFIX \
			--sysconfdir=$PREFIX/share/lua/ \
			--force-config \
			--with-lua-include=$PREFIX/include/luajit-2.0
			# --rocks-tree=$PREFIX \
			# --with-lua=$PREFIX \
			# --lua-version=5.1 \
			# --versioned-rocks-dir
make bootstrap