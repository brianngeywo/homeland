import 'package:bloc/bloc.dart';
import 'package:homeland/data/repositories/todo_repo.dart';
import 'package:meta/meta.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  ToDoRespository toDoRespository;
  TodoCubit() : super(TodoState(name: "started"));
  addTodo(String name) => emit(TodoState(name: name));

  getTodo() {
    toDoRespository.getTodo();
  }
}
