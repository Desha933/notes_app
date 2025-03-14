import 'package:flutter/material.dart';
import 'package:notes_app/models/custom_search_delegate.dart';
import 'package:notes_app/widgets/appbar.dart';
import 'package:notes_app/widgets/noteslistview.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
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
          CustomAppBar(
            icon: IconButton(
                iconSize: 30,
                onPressed: () async {
                  await showSearch(
                      context: context, delegate: CustomSearchDelegate());
                },
                icon: Icon(Icons.search)),
            titlepage: 'Notes',
          ),
          CustomNotesListView(),
        ],
      ),
    );
  }
}
