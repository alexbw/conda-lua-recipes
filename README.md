# conda-lua-recipes

WORK IN PROGRESS

```
# Install anaconda (instructions here for OS X)
wget http://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
sh Miniconda-latest-MacOSX-x86_64.sh -b -p $HOME/anaconda

# Install anaconda client and build client
conda install conda-build
conda install anaconda-client

```

Conda recipes for installing packages from the Torch ecosystem.

Resources:

* [Making packages relocatable (LuaJIT hard-codes path)](http://conda.pydata.org/docs/building/meta-yaml.html?highlight=prefix#making-packages-relocatable)

* [Build instructions for luarocks](https://github.com/keplerproject/luarocks/wiki/Installation-instructions-for-Unix)

* [Build instructions for Lua](http://ftp.tku.edu.tw/NetBSD/NetBSD-current/src/external/mit/lua/dist/doc/readme.html)

* [Patching files with git diffs is finicky](http://unix.stackexchange.com/questions/1395/what-does-patch-unexpectedly-ends-in-middle-of-line-mean)