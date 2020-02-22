mkdir -p build/installed/lib
ldd build/installed/bin/worldserver | grep "=> /" | awk '{print $3}' | xargs -I '{}' cp -v '{}' ./build/installed/lib/
ldd build/installed/bin/authserver | grep "=> /" | awk '{print $3}' | xargs -I '{}' cp -v '{}' ./build/installed/lib/
cp -r ./sql build/installed/bin/sql
docker build -f trinitycore.Dockerfile ./build/installed -t lijgame/trinitycore:latest