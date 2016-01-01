# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree
ROCKFILE=rocks/nn-scm-1.rockspec
# Install torch

# Patch the rockspec with sed.
# We don't need luaffi if we're using luajit
if [ $($PREFIX/bin/lua -v | awk '{  print $2 }'  | head -c 1) == 2 ]; then
	SEDSTRING1='s/"luaffi"//g'
	SEDSTRING2='s/7.0",/7.0"/g'
	if [ `uname` == Darwin ]; then
		sed -i '.bak' $SEDSTRING1 $ROCKFILE
		sed -i '.bak' $SEDSTRING2 $ROCKFILE
	fi
	if [ `uname` == Linux ]; then
		sed -i $SEDSTRING1 $ROCKFILE
		sed -i $SEDSTRING2 $ROCKFILE
	fi
fi
$PREFIX/bin/luarocks install $ROCKFILE --local-tree
