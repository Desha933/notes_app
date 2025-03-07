import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notecubit/notecubit.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/appbar.dart';
import 'package:notes_app/widgets/textformfield.dart';

class CustomEditNoteBody extends StatefulWidget {
  const CustomEditNoteBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<CustomEditNoteBody> createState() => _CustomEditNoteBodyState();
}

class _CustomEditNoteBodyState extends State<CustomEditNoteBody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomAppBar(
          icon: IconButton(
              iconSize: 30,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NoteCubit>(context).fetchnote();
                Navigator.pop(context);
              },
              icon: Icon(Icons.check)),
          titlepage: 'Edit Note',
        ),
        SizedBox(height: 50),
        CustomTextField(
            onchanged: (data) {
              title = data;
            },
            hint: widget.note.title),
        SizedBox(height: 30),
        CustomTextField(
          onchanged: (data) {
            subtitle = data;
          },
          hint: widget.note.subtitle,
          minlines: 4,
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
