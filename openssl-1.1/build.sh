# install path
PREFIX=$HOME/workspace/musl/openssl-1.1.1w
export CC=musl-gcc 
cd openssl
./Configure no-shared no-zlib -fPIC --prefix=$PREFIX -DOPENSSL_NO_SECURE_MEMORY linux-x86_64
export C_INCLUDE_PATH=$PREFIX/include:/usr/include/:/usr/include/x86_64-linux-gnu/
make depend
make -j6
make install
