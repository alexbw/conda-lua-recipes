# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

if [ $($PREFIX/bin/lua -v | awk '{  print $2 }'  | head -c 1) == 2 ]; then
	# mv $PREFIX/include/luajit-2.0/TH $PREFIX/include/TH
	mv $PREFIX/include/THC $PREFIX/include/luajit-2.0/THC
fi


# Install torch
luarocks build rocks/cunn-scm-1.rockspec --local-tree