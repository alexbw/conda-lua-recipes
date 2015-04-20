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
