# TODO
# - Should use Lua version to set luarocks location. e.g.: lib/luarocks -> /lib/luajit2.0/luarocks
# - Should set rocks-tree to be "user" instead of "system". Vibes better with the conda approach.

LUA_DIR=$PWD

./configure --prefix=$PREFIX \
			--sysconfdir=$PREFIX/lib/luarocks \
			--rocks-tree=$PREFIX/lib/luarocks \
			--with-lua=$PREFIX \
			--force-config \
			--lua-version=5.1 \
			--with-lua-include=$PREFIX/include/luajit-2.0
make build
make install