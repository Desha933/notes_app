import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.icon});
  final Icon icon;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 90, 80, 80)),
          child: icon,
        ),
      ],
    );
  }
}
