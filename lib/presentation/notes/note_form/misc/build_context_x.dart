import 'package:firebase_ddd_project_temp/presentation/notes/note_form/misc/todo_item_presentaion_classes.dart';
import 'package:flutter/cupertino.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension FormTodoX on BuildContext {
  KtList<TodoItemPrimitive> get formTodos =>
      Provider.of<FormTodos>(this, listen: false).value;
  set formTodos(KtList<TodoItemPrimitive> value) =>
      Provider.of<FormTodos>(this, listen: false).value = value;
}
