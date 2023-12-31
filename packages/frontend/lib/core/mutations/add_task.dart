import 'package:shared/shared.dart';
import 'package:uuid/uuid.dart';
import 'package:velocity_x/velocity_x.dart';

import '../data/remote_task_repo.dart';
import '../store/task_store.dart';
import 'get_all_tasks.dart';

class AddTaskMutation extends VxMutation<TaskStore> {
  final String task;

  AddTaskMutation(this.task);

  @override
  perform() async {
    final Task newTask =
        Task(id: const Uuid().v4(), title: task, isCompleted: false);
    await RemoteTaskRepo().addTask(newTask);
    GetAllTasksMutation();
  }
}
