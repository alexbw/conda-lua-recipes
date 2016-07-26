# Issues:
# - lua-crypto isn't compatible with 5.3 (there is a fork, see lua-crypto/build.sh)
# - lua-luabitop fails for 5.3
# - lua-lzmq has an ffi-only version. Should use that eventually.
# - lua-trepl doesn't work with readline+luajit+linux.


# conda build lua-5.1.5 &&
# conda build lua-5.2.4 &&
# conda build lua-5.3.2 &&
# conda build luajit-2.0.4 &&
# conda build luarocks --lua="all" &&
# conda build fftw &&
# conda build sox &&
# conda build sdl2 &&
# conda build lua-luafilesystem --lua="all" &&
# # could be updated
# conda build lua-moses --lua="all" &&
# # could be updated
# conda build lua-penlight --lua="all" &&
# # could be updated
# conda build lua-luaffi --lua=5.1 --lua=5.2 --lua=5.3 &&
# # could be updated
# conda build lua-sundown --lua="all" &&
# # could be updated
# conda build lua-argcheck --lua="all" &&
# conda build lua-cjson --lua="all" &&
# conda build lua-uuid --lua="all" &&
# conda build lua-lbase64 --lua="all" &&
# conda build lua-llthreads2 --lua="all" &&
# conda build lua-lzmq --lua="all" &&
# conda build lua-fftw3 --lua="all" &&
# conda build lua-sdl2 --lua="all" &&
# conda build lua-class --lua="all" &&
# conda build lua-crypto --lua="all" &&
# conda build lua-cwrap --lua="all" &&
# conda build lua-dok --lua="all" &&
# conda build lua-paths --lua="all" &&
# conda build lua-torch --lua="all" &&
# conda build lua-sys --lua="all" &&
# conda build lua-xlua --lua="all" &&
# conda build lua-trepl --lua="all" &&
# conda build lua-audio --lua="all" &&
# # REMOVE THIS ONCE ENV NO LONGER REQUIRES IT
# conda build lua-gnuplot --lua="all" &&
# conda build lua-env --lua="all" &&
# conda build lua-graph --lua="all" &&
# conda build lua-threads --lua="all" &&
# conda build lua-image --lua=5.1 --lua=5.2 --lua=2.0 && ### HEEEELP why doesn't 5.3 work anymore
# conda build lua-cephes --lua="all" &&
# conda build lua-randomkit --lua="all" &&
# conda build lua-distributions --lua="all" &&
# conda build lua-nn --lua="all" &&
# conda build lua-nngraph --lua="all" &&
# conda build lua-totem --lua="all" &&
# conda build lua-luabitop --lua=5.1 --lua=5.2 &&
# conda build lua-hdf5  --lua=5.1 --lua=5.2 --lua=2.0 &&
# conda build lua-optim --lua="all" &&
# conda build lua-pprint --lua="all" &&
# conda build lua-signal --lua="all"
# conda build lua-nnx --lua="all" &&
# conda build lua-torchx --lua="all" &&
# conda build lua-dpnn --lua="all" &&
# # Can move DP to use 5.3 once image is fixed
# conda build lua-dp --lua=5.1 --lua=5.2 --lua=2.0 &&
# # Can move DP to use 5.3 once image is fixed
# conda build lua-rnn --lua=5.1 --lua=5.2 --lua=2.0 &&
# conda build lua-autograd --lua="all"
# ITORCH IS THE GOAL
conda build lua-itorch  --lua=5.1 --lua=5.2 --lua=2.0 &&
# conda build lua-science --lua=5.1 --lua=5.2 --lua=2.0

# # Contingent on CUDA
# path_to_nvcc=$(which nvcc) &&
# if [ -x "$path_to_nvcc" ]
# then
#     echo "Found CUDA on your machine. Installing CUDA packages"
# 	conda build lua-cutorch --lua="all" &&
# 	conda build lua-cunn --lua="all" &&
# 	conda build lua-cudnn --lua="all" &&
# 	conda build lua-stn --lua="all"
# fi &&

# conda build llvm-clang-3.5.2 &&
# conda build lua-terra --lua=2.0
