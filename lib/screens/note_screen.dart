import 'package:flutter/material.dart';

import '../models/note.dart';

class NoteScreen extends StatelessWidget {
  final Note note;
  const NoteScreen({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
        centerTitle: false,
        titleSpacing: 25,
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
