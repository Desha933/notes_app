import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customappbarnotes.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CustomAppbarNote(),
              CustomNoteItem()
            ],
          ),
        ),
      ),
    );
  }
}
