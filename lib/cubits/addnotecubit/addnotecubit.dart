import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/addnotecubit/addnotestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/notemodel.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addnote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<NoteModel>(kBoxNote);
      await notebox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailiar(errormassage: e.toString()));
    }
  }
}
