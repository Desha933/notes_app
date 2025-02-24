import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.titlepage});
  final Icon icon;
  final String titlepage;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$titlepage',
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 83, 81, 81),
              borderRadius: BorderRadius.circular(10)),
          child: icon,
        ),
      ],
    );
  }
}
