import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 144, 142, 124),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListTile(
                subtitle: Text(
                  'i am mostafa farar and i am flutter developer ',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 54, 51, 51)),
                ),
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  color: Colors.black,
                  iconSize: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 10),
              child: Text('14/11/2002'),
            )
          ],
        ),
      ),
    );
  }
}
