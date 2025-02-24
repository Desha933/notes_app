import 'package:flutter/material.dart';
import 'package:notes_app/widgets/appbar.dart';
import 'package:notes_app/widgets/noteslistview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(),
          CustomNotesListView(),
        ],
      ),
    );
  }
}
