import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notecubit/notestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/notemodel.dart';

class NoteCubit extends Cubit<Notestate> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>? notes;
  List<NoteModel> fetchnote() {
    notes = Hive.box<NoteModel>(kBoxNote).values.toList();
    emit(NoteSuccess());
    return notes as List<NoteModel>;
  }
}
