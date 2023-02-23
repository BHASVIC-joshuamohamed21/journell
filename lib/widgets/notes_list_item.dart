import 'package:flutter/material.dart';

import '../screens/note_screen.dart';

class NotesListItem extends StatelessWidget {
  final String title;
  const NotesListItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoteScreen(title: title,),
          )),
      child: Container(
        padding: EdgeInsets.all(15),
        height: 100,
        decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
                Text('02/02/23'),
              ],
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.')
          ],
        ),
      ),
    );
  }
}
