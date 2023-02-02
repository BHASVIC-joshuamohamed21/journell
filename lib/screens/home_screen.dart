import 'package:flutter/material.dart';

import '../widgets/notes_list.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              }),
              icon: const Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: NotesList(),
    );
  }
}
