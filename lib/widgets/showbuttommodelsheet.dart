import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customButtom.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class customButtomsheet extends StatelessWidget {
  const customButtomsheet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            CustomTextField(hint: 'title'),
            SizedBox(height: 16),
            CustomTextField(
              hint: 'content',
              minlines: 4,
            ),
            SizedBox(height: 150),
            CustomButtom(),
          ],
        ),
      ),
    );
  }
}
