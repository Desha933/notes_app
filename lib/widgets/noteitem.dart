import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
    );
  }
}
