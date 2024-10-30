import 'package:flutter/material.dart';
import 'views/home.dart';
import 'views/notes.dart';
import 'views/lost&found.dart';
import 'views/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Academic App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/notes': (context) => NotesScreen(),
        '/lost-and-found': (context) => LostAndFoundScreen(),
        '/menu': (context) => MenuScreen(),
      },
    );
  }
}
