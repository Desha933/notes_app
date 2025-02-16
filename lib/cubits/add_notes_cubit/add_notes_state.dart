abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSccess extends AddNotesState {}

class AddNotesFailiar extends AddNotesState {
  final String errormassage;

  AddNotesFailiar(this.errormassage);
}
