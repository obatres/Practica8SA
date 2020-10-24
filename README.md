# Practica8SA.
# Practicas de Software Avanzado


> Servidor web desarrollado en python, con la libreria flask que accede a una base de datos de mongo DB

## Servidor WEB
### Contenedor AplicacionServerA
> Este contenedor es el encargado de ejecutrar el Servdior Web, se ubica en el puerto 5001

>Rutas:
 
  *http://35.231.226.110/server/mongodb
  
>Metodos:
 
  *PUT
  *POST
  *DELETE
  *GET
  
## Base de datos
### Contenedor MongoTest
> Este contenedor es el encargado de proporcionar el almacenamiento de la informacion en una base de datos de mongo db, se ubica en el puerto 5000

>Rutas:
  *http://35.231.226.110/server/mongodb
  
>Data:
  *base de datos: Server
  *coleccion: Datos


## Video de demostracion del funcionamiento
>https://youtu.be/KNGTBrSGGq4


## Historial de versiones
* 0.1
  * CAMBIO: Creacion de contenedores, de servidor y base de datos.
* 0.2
  * CAMBIO: Creacion de volumen en el servidor API REST, cambio de ip del servidor
* 0.3
  * CAMBIO: Se utiliza un proxy en nginx para acceder a las rutas del contenedor, sin utilizar puertos dentro de la ruta en el navegador. 
