import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';

import 'note_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  //generic T

  addNote() async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> noteslist = notesBox.values.toList as List<NoteModel>;
      emit(NotesSccess(noteslist));
    } catch (e) {
      emit(NotesFailiar(e.toString()));
    }
  }
}
