docker pull lijgame/trinitycore:latest
docker stop wow3.3.5-authserver
docker stop wow3.3.5-worldserver
docker rm wow3.3.5-authserver
docker rm wow3.3.5-worldserver

docker run -d --network host --name wow3.3.5-authserver -v $PWD/trinitycore/cfg:/usr/local/bin/cfg -v $PWD/trinitycore/data:/usr/local/bin/data lijgame/trinitycore:latest ./authserver
docker run -it -d --network host --name wow3.3.5-worldserver -v $PWD/trinitycore/cfg:/usr/local/bin/cfg -v $PWD/trinitycore/data:/usr/local/bin/data lijgame/trinitycore:latest ./worldserver
