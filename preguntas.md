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