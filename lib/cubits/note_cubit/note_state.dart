import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSccess extends NotesState {
  final List<NoteModel> notes;

  NotesSccess(this.notes);
}

class NotesFailiar extends NotesState {
  final String errormassage;

  NotesFailiar(this.errormassage);
}
