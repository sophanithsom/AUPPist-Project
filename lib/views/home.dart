import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Academic App')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Academic Collaboration'),
            onTap: () => Navigator.pushNamed(context, '/notes'),
          ),
          ListTile(
            title: const Text('Lost and Found'),
            onTap: () => Navigator.pushNamed(context, '/lost-and-found'),
          ),
          ListTile(
            title: const Text('Online Ordering'),
            onTap: () => Navigator.pushNamed(context, '/menu'),
          ),
        ],
      ),
    );
  }
}
