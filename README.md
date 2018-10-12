docker build -t lreyes/orbis-training-docker:0.1.0 . <br>
docker push lreyes8/orbis-training-docker:0.1.0 <br>
docker tag lreyes8/orbis-training-docker:0.1.0 lreyes8/orbis-training-docker:0.2.0 <br>
docker run -v  $PWD/:/app -w /app lreyes8/orbis-training-docker:2.0.0 npm install <br>
docker run -p "35729:35729" -p "3030:3030" -v  $PWD/:/app -w /app lreyes8/orbis-training-docker:2.0.0 npm start <br>
docker run -p "35729:35729" -p "1042:3030" -v  $PWD/:/app -w /app lreyes8/orbis-training-docker:2.0.0 npm start <br>
docker run -p "35729:35729" -p "1042:3030" -v  $PWD/:/app -w /app lreyes8/orbis-training-docker:2.0.0 npm run release

