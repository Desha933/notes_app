class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailiar extends AddNoteState {
  final String errormassage;

  AddNoteFailiar({required this.errormassage});
}
