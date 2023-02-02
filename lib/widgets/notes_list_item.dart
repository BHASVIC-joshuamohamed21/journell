import 'package:flutter/material.dart';

class NotesListItem extends StatelessWidget {
  const NotesListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 100,
      decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lorem',
                style: TextStyle(fontSize: 20),
              ),
              Text('02/02/23'),
            ],
          ),
          Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.')
        ],
      ),
    );
  }
}
