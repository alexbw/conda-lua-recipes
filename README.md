# Conda recipes for installing packages from the Torch ecosystem.

WORK IN PROGRESS

```
# Install anaconda (instructions here for OS X)
wget http://repo.continuum.io/miniconda/Miniconda-latest-MacOSX-x86_64.sh
sh Miniconda-latest-MacOSX-x86_64.sh -b -p $HOME/anaconda

# Install the correct version of conda-build (not pushed upstream yet)
pip install git+https://github.com/alexbw/conda-build.git --upgrade --no-deps

# Get the newest version of conda
conda update conda -y
conda install anaconda-client -y

# Build all packages
sh build_all.sh

# Ideally, all you have to do to install everything is this
conda install lua=5.2 lua-science
```

Resources:

* [Making packages relocatable (LuaJIT hard-codes path)](http://conda.pydata.org/docs/building/meta-yaml.html?highlight=prefix#making-packages-relocatable)

* [Build instructions for luarocks](https://github.com/keplerproject/luarocks/wiki/Installation-instructions-for-Unix)

* [Build instructions for Lua](http://ftp.tku.edu.tw/NetBSD/NetBSD-current/src/external/mit/lua/dist/doc/readme.html)

* [Patching files with git diffs is finicky](http://unix.stackexchange.com/questions/1395/what-does-patch-unexpectedly-ends-in-middle-of-line-mean)

* [Linking against readline](https://github.com/ContinuumIO/anaconda-issues/issues/42#issuecomment-39054576) (need a few extra flags, and link against -lncursesw, not -lncurses)

* [Upgrading old Debian](http://stackoverflow.com/questions/10863613/how-to-upgrade-glibc-from-version-2-13-to-2-15-on-debian/21254623#21254623). [Also this](https://github.com/jasonsanjose/brackets-sass/issues/53).


Misc notes:
```
metadata:ns_cfg() — defines for YAML directives
main_build: — defines version numbers 
environ:get_lua_include_dir() — uses version numbers to locate the include directory
config:Config._get_lua — uses version numbers to locate the binary
This is where the linked package name is converted into what is used
```
