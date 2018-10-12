docker build -t lreyes/orbis-training-docker:0.1.0 . <br>
docker push lreyes8/orbis-training-docker:0.1.0 <br>
docker tag lreyes8/orbis-training-docker:0.1.0 lreyes8/orbis-training-docker:0.2.0 <br>
docker run -v  $PWD/:/app -w /app lreyes8/orbis-training-docker:2.0.0 npm install <br>
docker run -p "35729:35729" -p "3030:3030" -v  $PWD/:/app -w /app lreyes8/orbis-training-docker:2.0.0 npm start <br>
docker run -p "35729:35729" -p "1042:3030" -v  $PWD/:/app -w /app lreyes8/orbis-training-docker:2.0.0 npm start <br>
docker run -p "35729:35729" -p "1042:3030" -v  $PWD/:/app -w /app lreyes8/orbis-training-docker:2.0.0 npm run release <br>
docker run --network=orbistrainingproject_default node:10.10.0-slim curl http://orbistrainingproject_orbis-training-project_1:3030 <br>
docker run --network=orbistrainingproject_default node:10.10.0-slim tail -f /dev/null <br>

docker run -p "35729:35729" -p "1042:3030" -v  $PWD/:/app -w /app lreyes8/orbis-training-docker:2.0.0 ./resources/example.sh <br>

docker run -p "35729:35729" -p "1042:3030" -v  $PWD/:/app -w /app -e "name=Luis Reyes" lreyes8/orbis-training-docker:2.0.0  ./resources/example.sh <br>

docker run -p "35729:35729" -p "1042:3030" -v  $PWD/:/app -w /app --entrypoint=/bin/echo  lreyes8/orbis-training-docker:2.0.0 Ejecutando contenedor...<br>


