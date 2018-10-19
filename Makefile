include makefiles/task.mk
include makefiles/deploy-ghpages.mk

NAME 			?= Luis Reyes

NAME_IMAGE 		= lreyes8/orbis-training-docker
DOCKER_TAG		?= 2.0.0
DOCKER_IMAGE 	= $(NAME_IMAGE):$(DOCKER_TAG)

install: # ejecuta npm install (instala depedencias)
	npm install

start: # ejecuta npm start (inicializa el proyecto)
	npm start

release: # ejecuta npm run release (compila código)
	npm run release

greet: # ejecuta el archivo example.sh (muestra saludo)
	docker run -v  $(PWD):/app -w /app -e "name=$(NAME)" lreyes8/orbis-training-docker:2.0.0  ./resources/example.sh

recursos:
	@echo "Hola recursos!"