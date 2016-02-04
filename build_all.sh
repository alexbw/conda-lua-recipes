# Issues:
# - lua-crypto isn't compatible with 5.3 (there is a fork, see lua-crypto/build.sh)
# - lua-luabitop fails for 5.3
# - lua-lzmq has an ffi-only version. Should use that eventually.
# - lua-trepl doesn't work with readline+luajit+linux.


conda build lua-5.1.5 &&
conda build lua-5.2.4 &&
conda build lua-5.3.2 &&
conda build luajit-2.0.4 &&
conda build luarocks --lua="all" &&
conda build fftw &&
conda build sox &&
conda build sdl2 &&
conda build lua-luafilesystem --lua="all" &&
conda build lua-penlight --lua="all" &&
conda build lua-luaffi --lua=5.1 --lua=5.2 --lua=5.3 &&
conda build lua-argcheck --lua="all" &&
conda build lua-cjson --lua="all" &&
conda build lua-uuid --lua="all" &&
conda build lua-lbase64 --lua="all" &&
conda build lua-llthreads2 --lua="all" &&
conda build lua-lzmq --lua="all" &&
conda build lua-fftw3 --lua="all" &&
conda build lua-sdl2 --lua="all" &&
conda build lua-sundown --lua="all" &&
conda build lua-class --lua="all" &&
conda build lua-crypto --lua="all" &&
conda build lua-cwrap --lua="all" &&
conda build lua-dok --lua="all" &&
conda build lua-paths --lua="all" &&
conda build lua-torch --lua="all" &&
conda build lua-sys --lua="all" &&
conda build lua-xlua --lua="all" &&
conda build lua-trepl --lua="all" &&
conda build lua-audio --lua="all" &&
conda build lua-gnuplot --lua="all" &&
conda build lua-env --lua="all" &&
conda build lua-graph --lua="all" &&
conda build lua-threads --lua="all" &&
conda build lua-image --lua="all" &&
conda build lua-cephes --lua="all" &&
conda build lua-randomkit --lua="all" &&
conda build lua-distributions --lua="all" &&
conda build lua-nn --lua="all" &&
conda build lua-nngraph --lua="all" &&
conda build lua-totem --lua="all" &&
conda build lua-luabitop --lua=5.1 --lua=5.2 &&
conda build lua-hdf5  --lua=5.1 --lua=5.2 --lua=2.0 &&
conda build lua-optim --lua="all" &&
conda build lua-pprint --lua="all" &&
conda build lua-signal --lua="all" &&
conda build lua-nnx --lua="all" &&
conda build llvm-clang-3.5.2 &&
conda build lua-terra --lua=2.0 &&
conda build lua-itorch --lua="all" &&
conda build lua-science --lua="all"

# Contingent on CUDA
path_to_nvcc=$(which nvcc)
if [ -x "$path_to_nvcc" ]
then
    echo "Found CUDA on your machine. Installing CUDA packages"
	conda build lua-cutorch --lua=5.1 --lua=5.2 --lua=2.0
	conda build lua-cunn --lua=5.1 --lua=5.2 --lua=2.0
	conda build lua-cudnn --lua=5.1 --lua=5.2 --lua=2.0
	conda build lua-stn --lua=5.1 --lua=5.2 --lua=2.0
fi
