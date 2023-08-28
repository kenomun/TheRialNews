# The Rial News

Este es el repositorio para "The Rial News", una aplicación web para compartir noticias.

## Descripción

"The Rial News" es una aplicación web que permite a los usuarios registrados compartir noticias y comentarios. Utiliza Ruby on Rails y está diseñada con características como autenticación de usuarios utilizando Devise, gestión de noticias.

## Características

- Registro y autenticación de usuarios utilizando Devise
- Creación, edición y eliminación de noticias por parte del usuario administrador
- Comentarios en noticias por parte de usuarios registrados.
- Eliminación de comentarios parte del usuario administrador.
- visualización de noticias por cualquier usuario que visite la pagina.


## Demostración

Puedes ver una demostración en vivo de "The Rial News" en este enlace. 
[Demo](https://mysterious-harbor-11951-b0a8debdfc94.herokuapp.com/)

*nota: en el demo las imágenes cargadas con seed no se visualizan pero de forma local si.


## Requisitos

- Ruby versión 3.1.2
- Rails versión 7.0.7


## Cómo Clonar y Ejecutar el Proyecto

1. Asegúrate de tener instalado Ruby y Rails en tus sistema.
2. Clona este repositorio en tu máquina local:

[Repositorio en GitHub](https://github.com/kenomun/TheRialNews)


3. Instala las dependencias: bundle install
4. Crear base de datos: rails db:create 
4. Correr migraciones: rails db:migrate
6. crear usuario administrador y 6 noticias de pruebas: rails db:seed
    - correo de usuario creado: admin@example.com
    - contraseña: 123456
5. Levantar aplicación: rails server
6. Abre tu navegador y navega a http://localhost:3000 para ver la aplicación en funcionamiento.