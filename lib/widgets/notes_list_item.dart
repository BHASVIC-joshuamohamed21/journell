import 'package:flutter/material.dart';

import '../models/note.dart';
import '../screens/note_screen.dart';

class NotesListItem extends StatelessWidget {
  final Note note;
  const NotesListItem({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoteScreen(
              note: note,
            ),
          )),
      child: Container(
        padding: const EdgeInsets.all(15),
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
                  note.title,
                  style: const TextStyle(fontSize: 20),
                ),
                Text('${note.date.day}/${note.date.month}/${note.date.year}'),
              ],
            ),
            Text(note.content ?? ''),
          ],
        ),
      ),
    );
  }
}
