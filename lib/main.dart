import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simpleblocobserver.dart';
import 'package:notes_app/views/notesview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = Simpleblocobserver();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}
