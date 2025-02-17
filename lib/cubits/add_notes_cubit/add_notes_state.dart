abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSccess extends NotesState {}

class AddNotesFailiar extends NotesState {
  final String errormassage;

  AddNotesFailiar(this.errormassage);
}
