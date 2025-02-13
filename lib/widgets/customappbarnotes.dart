import 'package:flutter/material.dart';

class CustomAppbarNote extends StatelessWidget {
  const CustomAppbarNote({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 90, 80, 80)),
          child: Icon(
            Icons.search,
          ),
        )
      ],
    );
  }
}
