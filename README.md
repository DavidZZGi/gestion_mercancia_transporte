# gestion_mercancia_transporte

**Gestión Mercancía Transporte** es una aplicación móvil desarrollada en Flutter para la gestión de destinatarios y solicitudes de transporte

## Características principales

- **Gestión de datos locales**: CRUD completo para `Destinatarios`, `TransportRequests` y `Users`.
- **Sincronización con servidor**: Sincronizacion de datos mediante una API REST.
- **Escaneo de códigos QR**: lectura de códigos QR para guardar socitudes y destinatarios.
- **Persistencia local**: Uso de SQLite para almacenamiento offline.
- **Sistema de autenticación**: Autenticacion utilizando almacenamiento local con SQlite.

---

## Tecnologías utilizadas

### Frontend (Flutter)

- **State Management**: Utilización de **BLoC** y **Cubit** para el manejo del estado de la aplicación.
- **SQLite**: Para almacenamiento de datos locales.
- **Dio**: Cliente HTTP para la comunicación con el servidor.
- **freezed**: Para la generación de modelos inmutables y manejo de serialización.
- **auto_route**: Para el manejo de rutas dinámicas.
- **json_serializable**: Para facilitar la conversión entre objetos Dart y JSON.
- **get_it**: Para la inyección de dependencias

### Backend (Nest.js)

- **NestJS**: Framework backend que sigue principios de arquitectura limpia.
- **TypeORM**: Para la gestión de la base de datos en el servidor.
- **SQLite**: Base de datos local para almacenamiento y pruebas.
- **Endpoints REST**: Exposición de APIs para sincronización de datos.

---

## Arquitectura

La app utiliza Clean Arquitecture como arquitectura con sus capas de domain, presentation y data; ademas presenta tambien una **Feature-Driven Development** que garantiza la modularidad y escalabilidad del sistema

---

## Uso de IA en el desarrollo del proyecto

Durante el desarrollo de este proyecto, se utilizó Chatgpt como herramienta de ia

### Generación de patrones de expresiones regulares

- Se utilizó para crear expresiones regulares para despues generar códigos QR.

### Interfaz de Usuario

- Ayuda en la creación de la interfaz de usuario para la distribucion de los widgets y la idea del diseño

### Validaciones en formularios

- Sugerencias para implementar validaciones en formularios de entrada, como restringir la introducción de números en campos de texto y viceversa.

### Optimización de manejo de errores

- Propuestas para estructurar el manejo de errores

### Preparación de datos de prueba

- Generación de objetos de prueba en formato JSON para usar en herramientas como Postman.

### Ayuda a la hora de resolver errores

-Cuando habia algo que no lograba resolver o encontrar el error utilizaba de esta herramienta para resolver errores de manera mas rapida
