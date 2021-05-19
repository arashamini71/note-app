import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_ddd_project_temp/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:firebase_ddd_project_temp/domain/notes/i_note_repository.dart';
import 'package:firebase_ddd_project_temp/domain/notes/note.dart';
import 'package:injectable/injectable.dart';

part 'note_actor_bloc.freezed.dart';
part 'note_actor_event.dart';
part 'note_actor_state.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;
  NoteActorBloc(
    this._noteRepository,
  ) : super(const _Initial());

  @override
  Stream<NoteActorState> mapEventToState(
    NoteActorEvent event,
  ) async* {
    yield const NoteActorState.actionInProgress();
    final failurePossible = await _noteRepository.delete(event.note);
    yield failurePossible.fold(
      (f) => NoteActorState.deleteFailure(f),
      (_) => const NoteActorState.deleteSuccess(),
    );
  }
}
