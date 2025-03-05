import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key, required this.Operation, @required this.ontap});
  final String Operation;
  final void Function()? ontap;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            '$Operation',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
