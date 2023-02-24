import 'package:flutter/material.dart';

import '../models/note.dart';

class NoteScreen extends StatefulWidget {
  final Note note;
  const NoteScreen({super.key, required this.note});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  bool _typing = false;
  TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _typing
            ? _TitleField(
                controller: _titleController,
                initialTitle: widget.note.title,
              )
            : Text(widget.note.title),
        actions: [
          IconButton(
            icon: Icon(_typing ? Icons.done : Icons.edit),
            onPressed: () {
              setState(() {
                if (_typing) {
                  widget.note.title = _titleController.text;
                } else {
                  _titleController.text = widget.note.title;
                }
                _typing = !_typing;
              });
            },
          ),
        ],
        // centerTitle: false,
        // titleSpacing: 25,
      ),
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}

class _TitleField extends StatelessWidget {
  final TextEditingController controller;
  final String initialTitle;

  const _TitleField(
      {super.key, required this.controller, required this.initialTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: initialTitle,
          hintStyle: TextStyle(color: Colors.grey[400]),
        ),
      ),
    );
  }
}
