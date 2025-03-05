import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Bottom.dart';
import 'package:notes_app/widgets/formbuttomsheet.dart';
import 'package:notes_app/widgets/textformfield.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: FormButtomSheet(),
    );
  }
}
