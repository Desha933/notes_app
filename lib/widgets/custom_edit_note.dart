import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class CustomEditNote extends StatelessWidget {
  const CustomEditNote({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddFormNote(),
    );
  }
}
