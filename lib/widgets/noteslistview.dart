import 'package:flutter/material.dart';
import 'package:notes_app/widgets/noteitem.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return CustomNoteItem();
          }),
    );
  }
}
