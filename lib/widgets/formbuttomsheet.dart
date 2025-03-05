import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Bottom.dart';
import 'package:notes_app/widgets/textformfield.dart';

class FormButtomSheet extends StatefulWidget {
  const FormButtomSheet({
    super.key,
  });

  @override
  State<FormButtomSheet> createState() => _FormButtomSheetState();
}

class _FormButtomSheetState extends State<FormButtomSheet> {
  @override
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(
            onsaved: (data) {
              title = data;
            },
            hint: 'title',
          ),
          SizedBox(height: 20),
          CustomTextField(
            onsaved: (data) {
              subtitle = data;
            },
            hint: 'content',
            minlines: 4,
          ),
          SizedBox(height: 50),
          CustomBottom(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                setState(() {});
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            Operation: 'Add',
          ),
        ],
      ),
    );
  }
}
