import 'package:flutter/material.dart';

import '../models/note.dart';
import 'notes_list_item.dart';

class NotesList extends StatelessWidget {
  NotesList({super.key});

  var notes = <Note>[];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) => NotesListItem(title: notes[index].title),
    );
  }
}
