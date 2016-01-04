# Conda recipes for installing packages from the Torch ecosystem.

WORK IN PROGRESS

```
# Install anaconda (instructions here for OS X)
wget http://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
sh Miniconda-latest-MacOSX-x86_64.sh -b -p $HOME/anaconda

# For development, install anaconda client and build client
conda install conda-build
conda install anaconda-client

# Ideally, all you have to do to install everything is this
conda install lua=5.2 lua-science
```

Resources:

* [Making packages relocatable (LuaJIT hard-codes path)](http://conda.pydata.org/docs/building/meta-yaml.html?highlight=prefix#making-packages-relocatable)

* [Build instructions for luarocks](https://github.com/keplerproject/luarocks/wiki/Installation-instructions-for-Unix)

* [Build instructions for Lua](http://ftp.tku.edu.tw/NetBSD/NetBSD-current/src/external/mit/lua/dist/doc/readme.html)

* [Patching files with git diffs is finicky](http://unix.stackexchange.com/questions/1395/what-does-patch-unexpectedly-ends-in-middle-of-line-mean)


Misc notes:
```
metadata:ns_cfg() — defines for YAML directives
main_build: — defines version numbers 
environ:get_lua_include_dir() — uses version numbers to locate the include directory
config:Config._get_lua — uses version numbers to locate the binary
This is where the linked package name is converted into what is used
```