# conda-lua-recipes

WORK IN PROGRESS

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

