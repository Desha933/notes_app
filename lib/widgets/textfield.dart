import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.minlines = 1});
  final String hint;
  final int minlines;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minlines,
      maxLines: 9,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }
}
