import 'package:notes_app/models/notemodel.dart';

class Notestate {}

class NoteInitial extends Notestate {}

class NoteLoading extends Notestate {}

class NoteSuccess extends Notestate {
  final List<NoteModel> notes;

  NoteSuccess({required this.notes});
}

class NoteFailiar extends Notestate {
  final String errormassage;

  NoteFailiar({required this.errormassage});
}
