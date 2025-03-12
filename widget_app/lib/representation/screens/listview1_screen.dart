import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final options = const [
    'Megaman',
    'Metal Gear',
    'Final Fantasy',
    'Dark Souls',
    'Super Smash',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('List view 1')),
      ),
      body: ListView(
        children:
            options
                .map(
                  (game) => ListTile(
                    title: Text(game),
                    trailing: Icon(Icons.arrow_forward_outlined),
                  ),
                )
                .toList(),

        // ListTile(leading: Icon(Icons.abc), title: Text('Hola mundo!')),
      ),
    );
  }
}
