import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customButtom.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/showbuttommodelsheet.dart';
import '../widgets/customlistview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.yellow,
      Colors.cyan,
      Colors.pink,
      Colors.teal,
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppbar(),
            CustomListView(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              context: context,
              builder: (context) {
                return customButtomsheet();
              });
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(255, 111, 205, 231),
      ),
    );
  }
}
