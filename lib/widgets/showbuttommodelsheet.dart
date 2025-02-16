import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_state.dart';
import 'package:notes_app/widgets/addnote_bottomsheetform.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class customButtomsheet extends StatelessWidget {
  const customButtomsheet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFailiar) {
              print('failiar ${state.errormassage}');
            }
            if (state is AddNotesSccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: const ButtomSheetNote(),
            );
          },
        ),
      ),
    );
  }
}
