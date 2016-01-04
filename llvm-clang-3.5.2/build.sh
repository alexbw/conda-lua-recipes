# Just move the binaries
cp -R $SRC_DIR/* $PREFIX/

# In case you wanted to build from source, it might
# go something like this --
# curl -O http://llvm.org/releases/3.5.2/cfe-3.5.2.src.tar.xz
# tar -xf cfe-3.5.2.src.tar.xz
# rm cfe-3.5.2.src.tar.xz
# mv cfe-3.5.2.src tools/clang
# http://llvm.org/releases/3.5.2/openmp-3.5.2.src.tar.xz

# # Make the whole shebang
# if [ -z "$MACOSX_DEPLOYMENT_TARGET" ]; then
#     # Linux
#     ./configure \
#         --enable-pic \
#         --enable-optimized \
#         --disable-docs \
#         --enable-targets=host \
#         --disable-terminfo \
#         --disable-libedit \
#         --prefix=$PREFIX \
#         --with-python=$SYS_PYTHON

# else
#     # OSX needs 10.7 or above with libc++ enabled
#     export MACOSX_DEPLOYMENT_TARGET=10.7
#     ./configure \
#         --enable-pic \
#         --enable-optimized \
#         --disable-docs \
#         --enable-targets=host \
#         --disable-terminfo \
#         --disable-libedit \
#         --prefix=$PREFIX \
#         --with-python=$SYS_PYTHON \
#         --enable-libcpp=yes

# fi

# make -j4
# make install
