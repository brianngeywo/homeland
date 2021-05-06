import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homeland/data/models/todo.dart';
import 'package:homeland/data/providers/todoAPI.dart';

class ToDoRespository {
  ToDoAPI toDoAPI;
  Future<ToDo> getTodo() async {
    final DocumentSnapshot rawTodo = toDoAPI.getToDos();
    final ToDo todo = ToDo.fromDocumentSnapshot(rawTodo);
    return todo;
  }
    Future<ToDo> addTodo(String name) async {
    final DocumentSnapshot rawTodo = toDoAPI.addToDos(name);
    final ToDo todo = ToDo.fromDocumentSnapshot(rawTodo);
    return todo;
  }
}
