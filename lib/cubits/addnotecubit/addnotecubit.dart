import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/addnotecubit/addnotestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/notemodel.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = Color(0xff00FF00);
  addnote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<NoteModel>(kBoxNote);
      await notebox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailiar(errormassage: e.toString()));
    }
  }
}
