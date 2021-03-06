import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_project_temp/domain/auth/value_objects.dart';
import 'package:firebase_ddd_project_temp/domain/core/failures.dart';
import 'package:firebase_ddd_project_temp/domain/notes/todo_item.dart';
import 'package:firebase_ddd_project_temp/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();
  const factory Note({
    @required UniqueId id,
    @required NoteBody body,
    @required NoteColor color,
    @required List3<TodoItem> todos,
  }) = _Note;

  factory Note.empty() => Note(
        id: UniqueId(),
        body: NoteBody(''),
        color: NoteColor(NoteColor.predefinedColors[0]),
        todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(
          todos
              .getOrCrash()
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (a) => left(a)),
        )
        .fold((l) => some(l), (_) => none());
  }
}
