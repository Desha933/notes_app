import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notecubit/notecubit.dart';
import 'package:notes_app/widgets/appbar.dart';
import 'package:notes_app/widgets/noteslistview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(
              icon: Icon(Icons.search),
              titlepage: 'Notes',
            ),
            CustomNotesListView(),
          ],
        ),
      ),
    );
  }
}
