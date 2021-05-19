import 'package:firebase_ddd_project_temp/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_ddd_project_temp/domain/notes/value_objects.dart';
import 'package:firebase_ddd_project_temp/presentation/notes/note_form/misc/todo_item_presentaion_classes.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';
import 'package:firebase_ddd_project_temp/presentation/notes/note_form/misc/build_context_x.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => c.note.todos.isFull,
      listener: (contest, state) {
        if (state.note.todos.isFull) {
          FlushbarHelper.createAction(
            duration: const Duration(seconds: 5),
            message: 'Want longer list? activate premien',
            button: FlatButton(
              onPressed: () {},
              child: const Text(
                'BUY NOW',
                style: TextStyle(color: Colors.yellow),
              ),
            ),
          ).show(context);
        }
      },
      child: Consumer<FormTodos>(
        builder: (context, fromTodos, child) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: fromTodos.value.size,
            itemBuilder: (context, index) => TodoTile(
              index: index,
            ),
          );
        },
      ),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;
  const TodoTile({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = context.formTodos.getOrElse(
      index,
      (_) => TodoItemPrimitive.empty(),
    );
    final textEditingController = useTextEditingController(text: todo.name);
    return Slid(

          child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        margin:const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: ListTile(
          leading: Checkbox(
            value: todo.done,
            onChanged: (value) {
              context.formTodos = context.formTodos.map((listTodo) =>
                  listTodo == todo ? todo.copyWith(done: value) : todo);
              BlocProvider.of<NoteFormBloc>(context).add(
                NoteFormEvent.todosChanged(context.formTodos),
              );
            },
          ),
          title: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              hintText: 'Todo',
              counterText: '',
              border: InputBorder.none,
            ),
            maxLength: TodoName.maxLength,
            onChanged: (value) {
              context.formTodos = context.formTodos.map((listTodo) =>
                  listTodo == todo ? todo.copyWith(name: value) : todo);
              BlocProvider.of<NoteFormBloc>(context).add(
                NoteFormEvent.todosChanged(context.formTodos),
              );
            },
            validator: (_) {
              return BlocProvider.of<NoteFormBloc>(context)
                  .state
                  .note
                  .todos
                  .value
                  .fold(
                    (f) => null,
                    (todoList) => todoList[index].name.value.fold(
                        (f) => f.maybeMap(
                              empty: (_) => 'Cannot be empty',
                              exceedingLength: (_) => 'Too long',
                              multiline: (_) => 'Has to be a single line',
                              orElse: () => null,
                            ),
                        (r) => null),
                  );
            },
          ),
        ),
      ),
    );
  }
}
