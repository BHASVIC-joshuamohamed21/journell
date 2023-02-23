import 'package:flutter/material.dart';

class NewNoteButton extends StatefulWidget {
  const NewNoteButton({super.key});

  @override
  State<NewNoteButton> createState() => _NewNoteButtonState();
}

class _NewNoteButtonState extends State<NewNoteButton> {
  TextEditingController _newNoteDialogController = TextEditingController();
  String _noteName;

  Future<void> _newNoteDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('New Note'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  _noteName = value;
                });
              },
              controller: _newNoteDialogController,
              decoration: InputDecoration(hintText: "Enter note name"),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: Text('CANCEL'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              ElevatedButton(
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                     = _noteName;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _newNoteDialog(context),
      child: Icon(Icons.add),
    );
  }
}
