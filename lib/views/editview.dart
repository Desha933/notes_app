import 'package:flutter/material.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/editnotebody.dart';

class EditView extends StatefulWidget {
  const EditView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomEditNoteBody(
          note: widget.note,
        ),
      ),
    );
  }
}
