import 'package:flutter/material.dart';
import 'package:notes_app/widgets/bottomsheet.dart';

class CustomFloatingActionButtom extends StatelessWidget {
  const CustomFloatingActionButtom({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 90, 184, 208),
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            context: context,
            builder: (context) {
              return CustomBottomSheet();
            });
      },
      child: Icon(
        Icons.add,
        weight: 24,
        size: 28,
      ),
    );
  }
}
