$PREFIX/bin/luarocks-admin make_manifest
$PREFIX/bin/luarocks make

# mkdir -p $PREFIX/share/jupyter/kernels/itorch
# cat kernelspec/kernel.json | sed "s@BIN_PATH@$(BIN_PATH)@" > $PREFIX/share/jupyter/kernels/itorch/kernel.json
# cp kernelspec/*.png $PREFIX/share/jupyter/kernels/itorch/
# cp kernelspec/* $PREFIX/share/jupyter/kernels/itorch/

# cmake -E make_directory build
# cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release  \
# 		 -DCMAKE_PREFIX_PATH="$PREFIX" \
# 		 -DCMAKE_INSTALL_PREFIX="$PREFIX"
# make

# # IPYTHONDIR=$PREFIX/.ipython
# # ITORCHDIR=$IPYTHONDIR/profile_torch
# # echo "$IPYTHONDIR"
# # echo "$ITORCHDIR"
# # echo `which ipython`

# # rm -rf $ITORCHDIR
# # ipython profile create torch --profile-dir=$ITORCHDIR
# # BIN_PATH=$PREFIX/bin

# # echo 'c.KernelManager.kernel_cmd = ["$(BIN_PATH)/itorch_launcher","{connection_file}"]' >> $ITORCHDIR/ipython_config.py   	
# # echo "c.Session.key = b''" >> $ITORCHDIR/ipython_config.py
# # echo "c.Session.keyfile = b''" >> $ITORCHDIR/ipython_config.py

# # mkdir -p $ITORCHDIR/static/base/images
# # mkdir -p $IPYTHONDIR/kernels/itorch

# # cp ipynblogo.png $ITORCHDIR/static/base/images
# # mkdir -p $ITORCHDIR/static/custom/
# # cp custom.js $ITORCHDIR/static/custom/
# # cp custom.css $ITORCHDIR/static/custom/
# # cp itorch $BIN_PATH
# # cp itorch_launcher $BIN_PATH
# # cp -r $ITORCHDIR $IPYTHONDIR/profile_itorch

# # cmake -E make_directory build
# # cd build
# # cmake .. -DCMAKE_BUILD_TYPE=Release  \
# # 		 -DCMAKE_PREFIX_PATH="$PREFIX" \
# # 		 -DCMAKE_INSTALL_PREFIX="$PREFIX"
# # make