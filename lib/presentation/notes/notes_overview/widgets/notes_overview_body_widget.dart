import 'package:firebase_ddd_project_temp/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebase_ddd_project_temp/presentation/notes/notes_overview/widgets/critical_failure_display_widget.dart';
import 'package:firebase_ddd_project_temp/presentation/notes/notes_overview/widgets/error_note_card_widget.dart';
import 'package:firebase_ddd_project_temp/presentation/notes/notes_overview/widgets/note_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final note = state.notes[index];
                if (note.failureOption.isSome()) {
                  return ErrorNoteCard(
                    note: note,
                  );
                } else {
                  return NoteCardWidget(note: note);
                }
              },
              itemCount: state.notes.size,
            );
          },
          loadFailure: (f) => CriticalFailureDisplay(
            failure: f.noteFailure,
          ),
        );
      },
    );
  }
}
