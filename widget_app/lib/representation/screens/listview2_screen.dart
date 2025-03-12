import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({super.key});

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
        backgroundColor: Colors.indigo,
        elevation: 0,
        title: Center(child: Text('List view 2')),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(options[index]),
            trailing: Icon(Icons.arrow_forward_outlined),
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
