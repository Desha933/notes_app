import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notecubit/notecubit.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/views/editview.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 20, fontFamily: kPoppinsfont),
                ),
                subtitle: Text(
                  note.subtitle,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NoteCubit>(context).fetchnote();
                    },
                    icon: Icon(Icons.delete)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  bottom: 10,
                ),
                child: Text(note.date),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
