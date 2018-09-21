# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- Luis Miguel Reyes Rodriguez

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