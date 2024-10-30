import 'package:flutter/material.dart';
import '../models/note.dart';

class NotesScreen extends StatelessWidget {
  final List<Note> notes = [
    Note(
      id: '1',
      title: 'Intro to Algorithms',
      content: 'Key points for Chapter 1...',
      course: 'CS101',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes')),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          final note = notes[index];
          return ListTile(
            title: Text(note.title),
            subtitle: Text(note.course),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(note.title),
                  content: Text(note.content),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
