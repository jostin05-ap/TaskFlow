# taskflow

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Alcance de TaskFlow

Problema: Las actividades universitarias están repartidas entre clases y plataformas, y cuesta recordar cuáles siguen pendientes.
Usuario objetivo: Estudiantes universitarios que planifican entregas, exámenes y actividades semanales.
### Historias de usuario y criterios de aceptación
1. Como estudiante, quiero ver mis tareas académicas para saber qué debo hacer.
   Criterio: La lista muestra el título, la prioridad y el estado de cada tarea.
2. Como estudiante, quiero abrir una tarea para consultar sus detalles.
   Criterio: Al tocar una tarjeta, el detalle muestra la tarea seleccionada, su descripción, prioridad, estado y usuario.
3.  Como estudiante, quiero registrar una tarea para no olvidar una actividad académica.
   Criterio: El formulario futuro permite ingresar título, descripción y prioridad; al guardar una tarea válida, aparece en la lista.
4. Como estudiante, quiero editar una tarea para corregir su información.
   Criterio: Después de guardar los cambios, la lista y el detalle muestran los datos actualizados.
5. Como estudiante, quiero eliminar una tarea que ya no necesito.
   Criterio: Después de confirmar la eliminación, la tarea deja de aparecer en la lista.
### Modelo de datos
Task: id (entero único), title (texto), description (texto),
priority (Alta, Media o Baja), isCompleted (verdadero/falso),
userId (entero que identifica al usuario de prueba).

### Pantallas previstas
Lista: tarjetas de tareas y acción para crear.
Detalle: información completa y futuras acciones de editar o eliminar.
Formulario: campos de título, descripción y prioridad.

### Requisitos no funcionales
La navegación debe tener textos comprensibles.
Un id inexistente debe mostrar un mensaje en vez de cerrar la app.

### Contrato de API que necesitaremos
GET /tasks        listar tareas
GET /tasks/:id    consultar detalle
POST /tasks       crear tarea
PATCH /tasks/:id  actualizar tarea
DELETE /tasks/:id eliminar tarea

La API concreta se elegirá después. Estas rutas son requisitos, no
direcciones de un servidor ya conectado.
