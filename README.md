# conda-lua-recipes

Conda recipes for installing packages from the Torch ecosystem.

Try it out.

```bash
# Install Lua packages required to train an LSTM
conda install --use-local lua-nngraph lua-trepl lua-cunn

# Get some LSTM code
git clone git@github.com:whetlab/lstm.git

# Run the LSTM code
cd lstm
th lstm/main.lua
```

What I'm missing:
 - iTorch (https://github.com/facebook/iTorch)
 - qtlua (falling out of favor, I think, but still useful: https://github.com/torch/qtlua)
 - Support for multiple Lua versions (everything is hardcoded to LuaJIT. 2.0 vs 2.1 would work, but not Lua 5.x right now).
