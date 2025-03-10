import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/addnotecubit/addnotecubit.dart';
import 'package:notes_app/widgets/coloricon.dart';

class CustomColorListview extends StatefulWidget {
  const CustomColorListview({super.key});

  @override
  State<CustomColorListview> createState() => _CustomColorListviewState();
}

class _CustomColorListviewState extends State<CustomColorListview> {
  int currentindex = 0;
  List<Color> colorlist = kColorsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 32 * 2,
        child: ListView.builder(
            itemCount: kColorsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  currentindex = index;
                  BlocProvider.of<AddNoteCubit>(context).color =
                      kColorsList[index];
                  setState(() {});
                },
                child: CustomColorIcon(
                  color: kColorsList[index],
                  isloading: currentindex == index,
                ),
              );
            }),
      ),
    );
  }
}
