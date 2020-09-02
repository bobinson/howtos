export OPENSSL_ROOT_DIR=$(brew --prefix)/Cellar/openssl/1.0.2r/

#export BOOST_ROOT=$(brew --prefix)/Cellar/boost@1.60/1.60.0/
export SNAPPY_LIBRARIES=$(brew --prefix)/Cellar/snappy/1.1.7_1/lib/
export SNAPPY_INCLUDE_DIR=$(brew --prefix)/Cellar/snappy/1.1.7_1/include/
export ZLIB_LIBRARIES=$(brew --prefix)/Cellar/zlib/1.2.11/lib/

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
  export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

  export LDFLAGS="-L/usr/local/opt/bzip2/lib"
  export CPPFLAGS="-I/usr/local/opt/bzip2/include"


git checkout stable
git submodule update --init --recursive
mkdir build && cd build
cmake -DBOOST_ROOT="$BOOST_ROOT" -DCMAKE_BUILD_TYPE=Release ..
make -j$(sysctl -n hw.logicalcpu)
