import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notecubit/notecubit.dart';
import 'package:notes_app/cubits/notecubit/notestate.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/noteitem.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, Notestate>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).fetchnote();
        return Expanded(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return CustomNoteItem(
                  note: notes[index],
                );
              }),
        );
      },
    );
  }
}
