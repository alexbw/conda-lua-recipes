conda clean --index-cache --packages --source-cache
conda build lua-5.1.5
conda build lua-5.2.4
conda build lua-5.3.2
conda build luajit-2.0.4
conda build luarocks --lua="all"
conda build lua-luafilesystem --lua="all"
conda build lua-penlight --lua="all"
conda build lua-luaffifb --lua=5.1 --lua=5.2 # ffi doesn't work with 5.3. all packages that depend on it won't build for 5.3
conda build lua-argcheck --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-cjson --lua="all"