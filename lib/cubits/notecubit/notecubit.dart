import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notecubit/notestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/notemodel.dart';

class NoteCubit extends Cubit<Notestate> {
  NoteCubit() : super(NoteInitial());

  getnote() async {
    try {
      List<NoteModel> notes = Hive.box<NoteModel>(kBoxNote).values.toList();
      emit(NoteSuccess(notes: notes));
    } catch (e) {
      emit(NoteFailiar(errormassage: e.toString()));
    }
  }
}
