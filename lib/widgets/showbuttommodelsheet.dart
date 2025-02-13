import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class customButtomsheet extends StatelessWidget {
  const customButtomsheet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
