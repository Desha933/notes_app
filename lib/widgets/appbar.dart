import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.titlepage});
  final IconButton icon;
  final String titlepage;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$titlepage',
          style: TextStyle(fontSize: 28, fontFamily: kPacificofont),
        ),
        Spacer(),
        icon
        // Container(
        //   width: 35,
        //   height: 35,
        //   decoration: BoxDecoration(
        //       color: const Color.fromARGB(255, 83, 81, 81),
        //       borderRadius: BorderRadius.circular(10)),
        //   child: Center(child: icon),
        // ),
      ],
    );
  }
}
