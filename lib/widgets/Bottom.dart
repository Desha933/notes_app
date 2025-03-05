import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addnotecubit/addnotecubit.dart';
import 'package:notes_app/cubits/addnotecubit/addnotestate.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      required this.Operation,
      @required this.ontap,
      this.isloading = false});
  final String Operation;
  final void Function()? ontap;
  final bool isloading;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: ontap,
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: isloading
                  ? SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    )
                  : Text(
                      '$Operation',
                      style: TextStyle(fontSize: 20),
                    ),
            ),
          ),
        );
      },
    );
  }
}
