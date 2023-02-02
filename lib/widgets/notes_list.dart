import 'package:flutter/material.dart';

import 'notes_list_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => NotesListItem(),
    );
  }
}
