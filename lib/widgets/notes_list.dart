import 'package:flutter/material.dart';

import 'notes_list_item.dart';

class NotesList extends StatelessWidget {
  final notes;

  NotesList({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) => NotesListItem(note: notes[index]),
    );
  }
}
