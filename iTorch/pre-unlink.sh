ipy = $PREFIX/bin/ipython
ipybase=$(ipython locate)
echo "$ipybase"
rm -rf $ipybase/profile_torch
rm -rf $ipybase/profile_itorch
