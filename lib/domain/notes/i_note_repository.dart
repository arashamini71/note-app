import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_project_temp/domain/notes/note.dart';
import 'package:firebase_ddd_project_temp/domain/notes/note_failure.dart';
import 'package:kt_dart/kt.dart';

abstract class INoteRepository {
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}