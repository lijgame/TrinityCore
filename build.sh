mkdir -p build
cd build
rm -rf $PWD/installed
cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PWD/installed -DCONF_DIR=cfg -DTOOLS=OFF -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_LINKER=ld.lld ..
cmake --build . --config Release
cmake --build . --target install
cp -r ../sql $PWD/installed/bin/sql
cp -r ../sample/cfg $PWD/installed/bin