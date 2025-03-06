import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addnotecubit/addnotecubit.dart';
import 'package:notes_app/cubits/addnotecubit/addnotestate.dart';
import 'package:notes_app/cubits/notecubit/notecubit.dart';
import 'package:notes_app/widgets/formbuttomsheet.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailiar) {}
          if (state is AddNoteSuccess) {
            BlocProvider.of<NoteCubit>(context).fetchnote();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(child: FormButtomSheet()),
              ),
            ),
          );
        },
      ),
    );
  }
}
