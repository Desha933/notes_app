import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.minlines = 1});
  final String hint;
  final int minlines;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: minlines,
      maxLines: 7,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.green,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 121, 179, 217),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
      ),
      cursorColor: Colors.green,
    );
  }
}
