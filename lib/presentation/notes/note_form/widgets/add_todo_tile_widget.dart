import 'package:firebase_ddd_project_temp/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_ddd_project_temp/presentation/notes/note_form/misc/todo_item_presentaion_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:firebase_ddd_project_temp/presentation/notes/note_form/misc/build_context_x.dart';

class AddTodoTile extends StatelessWidget {
  const AddTodoTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        context.formTodos = state.note.todos.value.fold(
          (l) => listOf<TodoItemPrimitive>(),
          (todoItemList) => todoItemList.map(
            (_) => TodoItemPrimitive.fromDomain(_),
          ),
        );
      },
      buildWhen: (p, c) => p.note.todos.isFull != c.note.todos.isFull,
      builder: (context, state) {
        return ListTile(
          enabled: !state.note.todos.isFull,
          leading: const Padding(
            padding: EdgeInsets.all(12),
            child: Icon(Icons.add),
          ),
          title: const Text('Add a todo'),
          onTap: () {
            context.formTodos =
                context.formTodos.plusElement(TodoItemPrimitive.empty());
            BlocProvider.of<NoteFormBloc>(context).add(
              NoteFormEvent.todosChanged(context.formTodos),
            );
          },
        );
      },
    );
  }
}
