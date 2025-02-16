import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class AddFormNote extends StatefulWidget {
  const AddFormNote({
    super.key,
  });

  @override
  State<AddFormNote> createState() => _AddFormNoteState();
}

class _AddFormNoteState extends State<AddFormNote> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidatemode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidatemode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomAppbar(
              icon: Icon(Icons.check),
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(hint: 'title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'contect',
              minlines: 4,
            )
          ],
        ),
      ),
    );
  }
}
