import 'package:flutter/material.dart';
import 'package:notes_app/views/editview.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

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
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text('Flutter Tips'),
                subtitle: Text('i am mostafa farar and iam flutter developer '),
                trailing: Icon(Icons.delete),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  bottom: 10,
                ),
                child: Text('14/11/2002'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
