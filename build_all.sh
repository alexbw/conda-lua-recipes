# Issues:
# - lua-luaffi doesn't build on 5.3 (https://github.com/facebook/luaffifb/issues/5)
# - lua-sundown isn't compatible with 5.1 (goto keywords used, https://github.com/torch/sundown-ffi/issues/5)
# - lua-crypto isn't compatible with 5.3 (there is a fork, see lua-crypto/build.sh)
# - lua-paths isn't compatible with 5.3 (https://github.com/torch/paths/issues/18)
# - lua-hdf5 doesn't work with PUC Lua b/c of a bug in luaffi (https://github.com/facebook/luaffifb/issues/4)
# - lua-sdl2 only works with LuaJIT, depends on "jit" variable (https://github.com/torch/sdl2-ffi/issues/7)
# - lua-lzmq has an ffi-only version. Should use that eventually.

conda build lua-5.1.5 &&
conda build lua-5.2.4 &&
conda build lua-5.3.2 &&
conda build luajit-2.0.4 &&
conda build fftw &&
conda build sox &&
conda build sdl2 &&
conda build luarocks --lua="all" &&
conda build lua-luafilesystem --lua="all" &&
conda build lua-penlight --lua="all" &&
conda build lua-luaffi --lua=5.1 --lua=5.2 &&
conda build lua-argcheck --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-cjson --lua="all" &&
conda build lua-uuid --lua="all" &&
conda build lua-lbase64 --lua="all" &&
conda build lua-llthreads2 --lua="all" &&
conda build lua-lzmq --lua="all" &&
conda build lua-fftw3 --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-sdl2 --lua=2.0 &&
conda build lua-sundown --lua=5.2 --lua=2.0 &&
conda build lua-class --lua=5.2 --lua=2.0 &&
conda build lua-crypto --lua=5.2 --lua=5.1 --lua=2.0 &&
conda build lua-cwrap --lua="all" &&
conda build lua-dok --lua=5.2 --lua=2.0 &&
conda build lua-paths --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-torch --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-sys --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-xlua --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-trepl --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-audio --lua=5.2 --lua=2.0 &&
conda build lua-gnuplot --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-env --lua=5.2 --lua=2.0 &&
conda build lua-graph --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-threads --lua=2.0 # b/c of sdl2 &&
conda build lua-image --lua=5.2 --lua=2.0 &&
conda build lua-cephes --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-randomkit --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-distributions --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-nn --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-nngraph --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-totem --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-luabitop --lua=5.1 --lua=5.2 &&
conda build lua-hdf5 --lua=2.0 # b/c of luaffi bug &&
conda build lua-optim --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-pprint --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-signal --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-nnx --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-cutorch --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-cunn --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-itorch --lua-5.2 --lua-2.0

conda build llvm # for Terra
conda build clang