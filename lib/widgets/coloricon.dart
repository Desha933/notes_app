import 'package:flutter/material.dart';

class CustomColorIcon extends StatelessWidget {
  const CustomColorIcon(
      {super.key, required this.isloading, required this.color});
  final bool isloading;
  final Color color;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return isloading
        ? Padding(
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 28,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 25,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              backgroundColor: color,
              radius: 28,
            ),
          );
  }
}
