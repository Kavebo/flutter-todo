import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String todoId = '';
  String content = '';
  bool done = false;

  TodoModel({
    required this.todoId,
    required this.content,
    required this.done,
  });

  TodoModel.fromDocumentSnapshot({required DocumentSnapshot documentSnapshot}) {
    // TODO: remove after check
    log("TODO model $documentSnapshot");

    todoId = documentSnapshot.id;
    content = (documentSnapshot.data() as Map?)?['content'] as String;
    done = (documentSnapshot.data() as Map?)?['done'] as bool;
  }
}
