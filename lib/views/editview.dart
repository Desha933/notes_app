import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Bottom.dart';
import 'package:notes_app/widgets/textfield.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 50),
            Text('If you need to edit this note'),
            SizedBox(height: 50),
            CustomTextField(hint: 'title'),
            SizedBox(height: 30),
            CustomTextField(
              hint: 'Content',
              minlines: 4,
            ),
            SizedBox(height: 100),
            CustomBottom(
              Operation: 'Edit',
            ),
          ],
        ),
      ),
    );
  }
}
