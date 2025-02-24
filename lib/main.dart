import 'package:flutter/material.dart';
import 'package:notes_app/views/notesview.dart';
import 'package:notes_app/widgets/appbar.dart';

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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(
            Icons.add,
            weight: 24,
            size: 28,
          ),
        ),
        body: NotesView(),
      ),
    );
  }
}
