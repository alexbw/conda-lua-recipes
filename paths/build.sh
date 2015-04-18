echo $PREFIX
luarocks list
luarocks install $(find . -iname '*.rockspec' -d 2 | head -n 1)
luarocks list
# cmake -E make_directory build 
# cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release \
# 		-DLUALIB=$(LUALIB) \
# 		-DLUA_INCDIR="$(LUA_INCDIR)" \
# 		-DLUA_LIBDIR="$(LUA_LIBDIR)" \
# 		-DLUADIR="$(LUADIR)" \
# 		-DLIBDIR="$(LIBDIR)" \
# 		-DCMAKE_INSTALL_PREFIX="$(PREFIX)" \
# &&
# $(MAKE)