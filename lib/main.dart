import 'package:flutter/material.dart';
import 'package:notes_app/views/notesview.dart';
import 'package:notes_app/widgets/appbar.dart';
import 'package:notes_app/widgets/floatingactionbuttom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
