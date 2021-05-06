import 'package:cloud_firestore/cloud_firestore.dart';

class ToDo {
  final String name;
  ToDo({
    this.name = '',
  });

  factory ToDo.fromDocumentSnapshot(DocumentSnapshot doc) {
    return ToDo(
      name: doc["name"],
    );
  }
}
