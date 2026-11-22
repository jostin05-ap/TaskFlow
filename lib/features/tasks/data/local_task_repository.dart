import '../domain/task.dart';
import 'task_repository.dart';

class LocalTaskRepository implements TaskRepository {
  final List<Task> _tasks = [
    const Task(
      id: 1,
      title: 'Leer el capítulo de bases de datos',
      description: 'Revisar normalización y claves',
      priority: 'Alta',
      isCompleted: true,
      userId: 1,
    ),
    const Task(
      id: 2,
      title: 'Resolver ejercicios de cálculo',
      description: 'Completar los problemas de derivadas',
      priority: 'Alta',
      isCompleted: false,
      userId: 1,
    ),
    const Task(
      id: 3,
      title: 'Entregar el informe de laboratorio',
      description: 'Subir el documento al aula virtual',
      priority: 'Media',
      isCompleted: true,
      userId: 1,
    ),
    const Task(
      id: 4,
      title: 'Preparar la exposición grupal',
      description: 'Organizar las diapositivas',
      priority: 'Media',
      isCompleted: true,
      userId: 1,
    ),
    const Task(
      id: 5,
      title: 'Estudiar para el examen',
      description: 'Repasar los apuntes de la semana',
      priority: 'Alta',
      isCompleted: false,
      userId: 1,
    ),
  ];

  @override
  Future<List<Task>> getTasks() async => List.unmodifiable(_tasks);

  @override
  void save(Task task) {
    final index = _tasks.indexWhere((item) => item.id == task.id);
    if (index == -1) return;
    _tasks[index] = task;
  }
}
