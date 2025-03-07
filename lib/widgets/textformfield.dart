import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.minlines = 1,
      this.onsaved,
      this.onchanged});
  final String hint;
  final int minlines;
  final void Function(String?)? onsaved;
  final void Function(String?)? onchanged;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      onChanged: onchanged,
      onSaved: onsaved,
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
