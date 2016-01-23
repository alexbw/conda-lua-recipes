# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install

cp itorch $PREFIX/bin
cp itorch_launcher $PREFIX/bin


mkdir -p $PREFIX/share/jupyter/kernels/itorch
cp kernelspec/* $PREFIX/share/jupyter/kernels/itorch/

$PREFIX/bin/luarocks make
# cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
# cd build && make install
# /$PREFIX/bin/luarocks make --local-tree # itorch-scm-1.rockspec --local-tree

# ipybase=$(ipython locate)
# rm -rf $ipybase/profile_torch
# $ipy profile create torch
# echo 'c.KernelManager.kernel_cmd = ["$(LUA_BINDIR)/itorch_launcher","{connection_file}"]' >>$ipybase/profile_torch/ipython_config.py
# echo "c.Session.key = b''" >>$ipybase/profile_torch/ipython_config.py
# echo "c.Session.keyfile = b''" >>$ipybase/profile_torch/ipython_config.py
# mkdir -p $ipybase/profile_torch/static/base/images
# mkdir -p $ipybase/kernels/itorch
# cp ipynblogo.png $ipybase/profile_torch/static/base/images
# mkdir -p $ipybase/profile_torch/static/custom/
# cp custom.js $ipybase/profile_torch/static/custom/
# cp custom.css $ipybase/profile_torch/static/custom/

# cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)


# post-link
	# ipython profile create torch
	# echo 'c.KernelManager.kernel_cmd = ["$(LUA_BINDIR)/itorch_launcher","{connection_file}"]' >>$ipybase/profile_torch/ipython_config.py
	# echo "c.Session.key = b''" >>$ipybase/profile_torch/ipython_config.py
	# echo "c.Session.keyfile = b''" >>$ipybase/profile_torch/ipython_config.py

# pre-unlink — remove the profile
