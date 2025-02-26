import 'package:flutter/material.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/views/notesview.dart';
import 'package:notes_app/widgets/appbar.dart';
import 'package:notes_app/widgets/floatingactionbuttom.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        floatingActionButton: CustomFloatingActionButtom(),
        body: NotesView(),
      ),
    );
  }
}
