mkdir build_win
cd build_win
cmake -G"Visual Studio 16 2019" -A x64 -DCMAKE_TOOLCHAIN_FILE=C:/codes/vcpkg/scripts/buildsystems/vcpkg.cmake -DMYSQL_EXECUTABLE=C:/Apps/mysql-5.6.26-winx64/bin/mysql.exe -DMYSQL_INCLUDE_DIR=C:/Apps/mysql-5.6.26-winx64/include -DMYSQL_LIBRARY=C:/Apps/mysql-5.6.26-winx64/lib/libmysql.lib ..