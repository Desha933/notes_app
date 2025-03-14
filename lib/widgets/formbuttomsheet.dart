import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/addnotecubit/addnotecubit.dart';
import 'package:notes_app/cubits/addnotecubit/addnotestate.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/Bottom.dart';
import 'package:notes_app/widgets/colorlistview.dart';
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
          CustomColorListview(),
          CustomBottom(
            isloading: State is AddNoteLoading ? true : false,
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var currentdate = DateTime.now();
                var formateddata = DateFormat('dd/mm/yyyy').format(currentdate);
                var note = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: formateddata,
                    color: Colors.green.value);
                BlocProvider.of<AddNoteCubit>(context).addnote(note);

                // setState(() {});
              } else {
                autovalidateMode = AutovalidateMode.always;
                // setState(() {});
              }
            },
            Operation: 'Add',
          ),
        ],
      ),
    );
  }
}
