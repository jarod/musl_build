# install path
PREFIX=$HOME/workspace/musl
export CC=musl-gcc 
cd openssl
./Configure no-shared no-zlib -fPIC --prefix=$PREFIX -DOPENSSL_NO_SECURE_MEMORY linux-x86_64
export C_INCLUDE_PATH=$PREFIX/include 
make depend
make 
make install