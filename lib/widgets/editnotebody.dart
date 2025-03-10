import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/addnotecubit/addnotecubit.dart';
import 'package:notes_app/cubits/notecubit/notecubit.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/appbar.dart';
import 'package:notes_app/widgets/coloricon.dart';
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
  Color color = Color(0xFFD32F2F);
  int currentindex = 0;
  List<Color> colorlist = kColorsList;

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
                widget.note.color = color.value ?? widget.note.color;
                widget.note.save();
                BlocProvider.of<NoteCubit>(context).fetchnote();
                Navigator.pop(context);
              },
              icon: Icon(Icons.check)),
          titlepage: 'Edit Note',
        ),
        SizedBox(height: 50),
        CustomTextField(
            color: Color(widget.note.color),
            onchanged: (data) {
              title = data;
            },
            hint: widget.note.title),
        SizedBox(height: 30),
        CustomTextField(
          color: Color(widget.note.color),
          onchanged: (data) {
            subtitle = data;
          },
          hint: widget.note.subtitle,
          minlines: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 32 * 2,
            child: ListView.builder(
                itemCount: colorlist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      currentindex = index;
                      color = colorlist[index];
                      // BlocProvider.of<AddNoteCubit>(context).color =
                      //     colorslist[index];
                      setState(() {});
                    },
                    child: CustomColorIcon(
                      color: colorlist[index],
                      isloading: currentindex == index,
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
