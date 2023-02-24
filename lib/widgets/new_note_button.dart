import 'package:flutter/material.dart';

class NewNoteButton extends StatelessWidget {
  final VoidCallback newNoteCallback;

  const NewNoteButton({super.key, required this.newNoteCallback});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => newNoteCallback(),
      child: Icon(Icons.add),
    );
  }
}
