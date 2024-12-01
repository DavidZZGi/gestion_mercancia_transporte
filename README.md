# gestion_mercancia_transporte

**Gestión Mercancía Transporte** es una aplicación móvil desarrollada en Flutter para la gestión de destinatarios y solicitudes de transporte

## Características principales

- **Gestión de datos locales**: CRUD completo para `Destinatarios`, `TransportRequests` y `Users`.
- **Sincronización con servidor**: Subida y descarga de datos mediante una API REST.
- **Escaneo de códigos QR**: Generación y lectura de códigos QR para intercambiar información.
- **Backend desarrollado en NestJS**: Integración con un servidor para almacenamiento y gestión remota de datos.
- **Persistencia local**: Uso de SQLite para almacenamiento offline.

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

---

## Arquitectura

La app utiliza Clean Arquitecture como arquitectura con sus capas de domain, presentation y data; ademas presenta tambien una **Feature-Driven Development** que garantiza la modularidad y escalabilidad del sistema
