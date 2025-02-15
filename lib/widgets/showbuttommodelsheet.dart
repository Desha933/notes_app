import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customButtom.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class customButtomsheet extends StatelessWidget {
  const customButtomsheet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: ButtomSheetNote(),
      ),
    );
  }
}

class ButtomSheetNote extends StatefulWidget {
  const ButtomSheetNote({
    super.key,
  });

  @override
  State<ButtomSheetNote> createState() => _ButtomSheetNoteState();
}

class _ButtomSheetNoteState extends State<ButtomSheetNote> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidatormode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextField(
            hint: 'title',
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: 'content',
            minlines: 4,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 150),
          CustomButtom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidatormode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
