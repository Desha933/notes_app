import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class CustomEditNote extends StatelessWidget {
  const CustomEditNote({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomAppbar(
              icon: Icon(Icons.check),
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(hint: 'title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'contect',
              minlines: 4,
            )
          ],
        ),
      ),
    );
  }
}
