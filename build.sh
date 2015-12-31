conda clean --index-cache --packages --source-cache
conda build lua-5.1.5
conda build lua-5.2.4
conda build lua-5.3.2
conda build luajit-2.0.4
conda build luarocks --lua="all"
conda build luafilesystem --lua="all"
conda build penlight --lua="all"