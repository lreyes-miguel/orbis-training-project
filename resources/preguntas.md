# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- Luis Miguel Reyes Rodriguez
- Leo

### <strong>Preguntas</strong>

1. ¿Qué es y para qué sirve GIT? <br>
    Es un sistema controlador de versiones, sirve para poder tener un historial de tu código asi mismo poder trabajar en equipo con un mejor orden y la facilidad para poder trabajar en cualquier lugar clonando el repositorio.

2. ¿Que es Github o bitbucket? <br>
    Son servicios dedicados a tener tus repositorios en la nube de manera remota con el fin que puedas tener un backup de todo el repositorio asi mismo todo tu grupo de trabajo podra usarlo y subir sus avances.

3. ¿Qué es y para qué sirve el SSH? <br>
    Es un protocolo de seguridad para usarlo de manera seguro y administrar recursos de un servidor.

4. ¿Que pasa si cambio de PC? ¿Tendré que generar el SSH nuevamente?¿Por qué? <br>
    - Para seguir trabajando con el repositorio se debe comprobar que el repositorio este en la nube tanto en bitbucket, github u otro servicio.
    - Se tiene que generar de la clave para poder clonar, subir tus cambios entre otras acciones del repositorio remoto y por ultimo se tiene que registrar la clave ssh en el servicio para poder tener permisos.
    - Si no existe si se debe crear la clave por que se puede trabajar de manera segura autenticando con tu usario en el caso que exista una clave ssh por motivos de seguridad se debería generar una nueva.

5. ¿Qué es markdown? ¿Para qué sirve? <br>
    Es un lenguaje de marcado que facilita la aplicación de formato a un texto empleando una serie de caracteres de una forma especial.

6. ¿Cómo inicializo y configuro un proyecto de git?
    ```
    # Dentro la carpeta del proyecto
    $ git init
    # Se hace remote el repositorio
    $ git remote add orgin git@<service>:<user>/<repo>.git
    ```

7. ¿Para qué ayuda el `git stash`? <br>
    Para poder guardar los cambios sin hacer commit asi mismo se puede hacer una pila de cambios siendo aplicados en cualaquier rama.

8. ¿Cuál es la diferencia entre `git stash pop` y `git stash apply`? <br>
    - `git stash apply` se recuperan los cambios almacenados en la pila o por algun identificador.
    - `git stash pop` se aplica los cambios almacenados y lo retira de la pila.

9. ¿Qué significa el modo interactivo del `git rebase`? <br>
    Poder unificar dos ramas con un orden especifico, eliminando commits entre otras acciones

10. ¿Cual es la diferencia entre la shell y la terminal? <br>
    Shell es el programa que procesa los comandos devolviendo un resultado y terminal es el programa donde se ejecuta el shell.

11. ¿Que hace estos comandos? `git clone`, `git status`, `git add`, `git commit`, `git push`, `git checkout`, `git stash`, `git rebase`, `git merge`, `git branch` <br>
    - `git clone` clonar un repositorio remoto
    - `git status` ver el estado del respositorio si hay cambios para guardar o conflictos
    - `git add` agregar los nuevos cambios para ser trackeados
    - `git commit` guardar los cambios en la rama establecida
    - `git push` subir todo los commits de local al repositorio remoto
    - `git checkout` permite moverse entre ramas  
    - `git stash` almacenar cambios en una pila para poder usarlos despues o en otras ramas
    - `git rebase` unificar ramas y gestionando los commits
    - `git merge` unificando ramas y haciendo un consolidado
    - `git branch` poder gestionar las ramas como crear eliminar editar o listado

#

## Docker
### <strong>Parte 4</strong>

#### Preguntas

1. ¿Qué importancia tiene los tags en un proyecto?
    * Se usa para saber con que versión trabajar ya que las versiones.


2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
    * Con el tag anotado muestra mas información que el tag simple.

3. ¿Cómo se sube todos los tags de git que hay en mi local?
    * Ejecutando el siguiente comando:
    ``` 
    git push origin master --tags
    ```

4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
    * Una vez que te logueaste tiene una expiración de 72 horas pasado ese tiempo te pedira nuevamente loguearte.

5. ¿Qué es y para qué sirve docker?
    * Una plataforma de codigo libre para desarrollar de una manera estandar,  

6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
    * En docker usa el kernel del sistema operativo para poder crear sus recursos medienta Docker engine mientras que en Virtualbox creas una maquina virtual consumiendo mas recursos y la comunicación es con Hypervisor.

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
    * Si es necesario ya que se aplicaría las buenas practicas. 

8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
    * Se debe anteponer el nombre de usuario a nuestra imagen para asociar nuestra imagen a nuestra cuenta de dockerhub.

9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
    * Si no se versiona (o se le asigna el user-name/name-project:tag) o se asigna el tag al subirla por defecto esta toma como tag o versión la parabra `latest`

#

### <strong>Parte 5</strong>

#### Preguntas

1. Listar
    * ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
        - Par ser de manera interactiva y pueda darte una respuesta del bash, al no colocar `-it` se muestra de una manea desordenada.
    * ¿Para qué sirve ejecutar el comando bash al ejcutar una imagen?
        - Para entrar a la consola del contenedor para poder usar el shell del contenedor con nuestra terminal.
2. ¿Cuál es la diferencia entre docker ps y docker ps -a?
    * Que `docker ps -a` muestra todos los contenedores levantados y apagados

#

```
docker run -it lreyes8/orbis-training-docker:0.2.0
```


#

### Preguntas:

1. ¿Cuál es la diferencia entre una imagen y un contenedor?
    - Imagen
    - Contenedor 

2. ¿Cómo listo las imágenes que hay en mi computadora?
    - `docker images`
3. ¿Cómo salgo de un contenedor de docker?
    - `exit`
4. ¿Se elimina el contenedor al salir de ella?
    - Si
5. ¿Cómo elimino un contenedor?
    -  `docker rm <id>`
6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
    - `-i` para mostrar de manera interactiva 
    - `-t` para ejecutar el terminal
    - `--rm` automticamente remueve el contenedor si es que existe
7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
    - `docker run -it lreyes8/orbis-training-docker:0.2.0 ls`
8. ¿Cómo se comenta una linea de código en Dockerfile?
    - `#`

#

```
docker run -d -p "1080:80" lreyes8/orbis-training-docker:1.0.0
```
#

### Preguntas
1. ¿Qué es NGINX?
    - Un servidor web
2. ¿Cómo expongo puertos en docker?
    - `docker run -d -p "1080:80" lreyes8/orbis-training-docker:1.0.0`
3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
    - Con el comando anterior `-p` el 1080 es puerto del host y 80 del contenedor
4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
    - `-p "1080:80"`

----
## <strong>Parte 7</strong>

#### Preguntas

1. ¿Es necesario especificar el `workdir` en docker?, ¿Porqué?
    - Si, por que debe establecer la carpeta donde se trabajara al momento de levantar el contenedor.

2. ¿Que hacen los siguientes comandos?
    - `docker ps`: Muestra los contenedores levantados
    - `docker pull`: Descarga la imagen de la nube o una red local
    - `docker push`: Sube la imagen al repositorio en la nube o local
    - `docker rm`: Elimina el contenedor
    - `docker rmi`: Elimina la imagen
    - `docker run`: Ejecuta el contenedor con comandos adicionales
    - `docker tag`: Se establece un tag para versionar la imagen
    - `docker search`: Busca imagenes o caracteristicas de las imagenes
    - `docker login`: Iniciar sesion para poder subir imagenes al repositorio
    - `docker exec`: Ejecutar comandos en un contenedor existente
    - `docker build`: Construye una imagen a base de un archivo de configuracion Dockerfile
    - `docker inspect`: Inspecciona la red 
    - `docker network`: Crea una red virtual para poder compartir recursos con otros contenedores

## <strong>Parte 8</strong>

#### Preguntas

1. ¿Qué es bash? ¿Qué significa?
    - Bash es el lenguaje que ejecuta scripts que pueden ser comandos.

2. ¿Cómo ejecuto un archivo bash?
    - Se ejecuta ./script.sh

3. ¿Qué pasa si no especifico en un `.sh`, la linea `#!/bin/bash`?
    - Ocurre un error de formato para ejecutar el bash
4. ¿Se puede cambiar el modo bash (`/bin/bash`) a otro tipo de ejecución?
    - Si, siempre se haga un seteo de un alias al programa
5. ¿Cómo se envía variables de entorno por Docker CLI y docker-compose?
    - Se estable con el flag envirment `docker run -e "var=value" lreyes8/orbis-training-docker:2.0.0`
