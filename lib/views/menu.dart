import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  final List<Map<String, String>> menu = [
    {'item': 'Burger', 'price': '5.00 USD'},
    {'item': 'Coffee', 'price': '2.50 USD'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Canteen Menu')),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          final menuItem = menu[index];
          return ListTile(
            title: Text(menuItem['item']!),
            subtitle: Text(menuItem['price']!),
            trailing: IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${menuItem['item']} added to cart!')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
