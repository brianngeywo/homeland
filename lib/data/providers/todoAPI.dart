import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class ToDoAPI {
  getToDos() async {
    final rawToDo = await FirebaseFirestore.instance.collection("todos").doc("KaYysfDW5riNB0elSsRT").get();
    return rawToDo;
  }

  addToDos(String name) async {
    String todoId = Uuid().v4();
    await FirebaseFirestore.instance.collection("todos").doc(todoId).set({"name": name});
  }
}
