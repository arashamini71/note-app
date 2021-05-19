import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_project_temp/application/notes/note_actor/note_actor_bloc.dart';
import 'package:firebase_ddd_project_temp/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebase_ddd_project_temp/domain/notes/note.dart';
import 'package:firebase_ddd_project_temp/domain/notes/todo_item.dart';
import 'package:firebase_ddd_project_temp/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

class NoteCardWidget extends StatelessWidget {
  final Note note;
  const NoteCardWidget({Key key, @required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onTap: () {
          ExtendedNavigator.of(context).pushNoteFormPage(editedNote: note);
        },
        onLongPress: () {
          final noteActorBloc = BlocProvider.of<NoteActorBloc>(context);
          _showDeletionDialog(context, noteActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.body.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              ),
              if (note.todos.length > 0) ...[
                Wrap(
                  spacing: 8,
                  children: [
                    ...note.todos
                        .getOrCrash()
                        .map((item) => TodoDisplay(todo: item))
                        .iter
                  ],
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, NoteActorBloc noteActorBloc) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Selected note!'),
        content: Text(
          note.body.getOrCrash(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('CANCEL'),
          ),
          FlatButton(
            onPressed: () {
              noteActorBloc.add(
                NoteActorEvent.delete(note),
              );
              Navigator.pop(context);
            },
            child: const Text('DELETE'),
          ),
        ],
      ),
    );
  }
}

class TodoDisplay extends StatelessWidget {
  final TodoItem todo;
  const TodoDisplay({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (todo.done)
          Icon(
            Icons.check_box,
            color: Theme.of(context).accentColor,
          ),
        if (!todo.done)
          Icon(
            Icons.check_box_outline_blank,
            color: Theme.of(context).disabledColor,
          ),
        Text(todo.name.getOrCrash()),
      ],
    );
  }
}
