import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  final String title;
  const NoteScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: false,
        titleSpacing: 25,
      ),
      body: Container(),
    );
  }
}
