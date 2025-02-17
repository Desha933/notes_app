import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/customButtom.dart';
import 'package:notes_app/widgets/customtextfield.dart';

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
                var note = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.red.value);
                BlocProvider.of<AddNotesCubit>(context).addNote(note);
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
