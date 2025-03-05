import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/addnotecubit/addnotecubit.dart';
import 'package:notes_app/cubits/addnotecubit/addnotestate.dart';
import 'package:notes_app/widgets/formbuttomsheet.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFailiar) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('add note is failed'),
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        }
        if (state is AddNoteSuccess) {
          Navigator.of(context).pop();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: FormButtomSheet(),
            ),
          ),
        );
      },
    );
  }
}
