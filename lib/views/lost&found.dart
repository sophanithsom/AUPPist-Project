import 'package:flutter/material.dart';
import '../models/item.dart';

class LostAndFoundScreen extends StatelessWidget {
  final List<LostItem> items = [
    LostItem(
      id: '1',
      name: 'Blue Water Bottle',
      description: 'Found near the library.',
      imageUrl: 'assets/images/water_bottle.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lost and Found')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Image.asset(item.imageUrl),
            title: Text(item.name),
            subtitle: Text(item.description),
          );
        },
      ),
    );
  }
}
