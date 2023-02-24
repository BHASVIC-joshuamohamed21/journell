import 'package:flutter/material.dart';

import '../animations/slide_right_route.dart';
import '../models/note.dart';
import '../widgets/new_note_button.dart';
import '../widgets/notes_list.dart';
import 'note_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _notes = <Note>[
    Note('Example'),
  ];

  @override
  Widget build(BuildContext context) {
    void newNoteCallback() {
      Note newNote = Note('');
      _notes.add(newNote);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoteScreen(note: newNote),
          ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Journell'),
        centerTitle: false,
        titleSpacing: 25,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  SlideRightRoute(
                    page: const SettingsScreen(),
                  ),
                );
              }),
              icon: const Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: NotesList(
        notes: _notes,
      ),
      floatingActionButton: NewNoteButton(
        newNoteCallback: newNoteCallback,
      ),
    );
  }
}
