# conda-lua-recipes

WORK IN PROGRESS

Things I'd like to do:
 * Patch Lua and LuaJIT to have a more intelligent package.path default (right now need to manually set LUA_PATH). *This happens in luaconf.h* (previously, I aliased lua to a bash script which set those environment variables and then launched Lua, but that's dirty).

```
# Install anaconda (instructions here for OS X)
curl -O https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-2.4.1-MacOSX-x86_64.sh
bash Anaconda2-2.4.1-MacOSX-x86_64.sh -b -f -p $HOME/anaconda

# Install anaconda client and build client
conda install conda-build
conda install anaconda-client

```

Conda recipes for installing packages from the Torch ecosystem.

Resources:

* [Making packages relocatable (LuaJIT hard-codes path)](http://conda.pydata.org/docs/building/meta-yaml.html?highlight=prefix#making-packages-relocatable)

* [Build instructions for luarocks](https://github.com/keplerproject/luarocks/wiki/Installation-instructions-for-Unix)

* [Build instructions for Lua](http://ftp.tku.edu.tw/NetBSD/NetBSD-current/src/external/mit/lua/dist/doc/readme.html)