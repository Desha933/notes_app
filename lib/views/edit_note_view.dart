import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_edit_note.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomEditNote(),
    );
  }
}
