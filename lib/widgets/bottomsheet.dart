import 'package:flutter/material.dart';
import 'package:notes_app/widgets/textfield.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'content',
            minlines: 4,
          ),
        ],
      ),
    );
  }
}
