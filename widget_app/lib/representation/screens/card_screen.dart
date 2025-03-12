import 'package:flutter/material.dart';
import 'package:widget_app/representation/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Card Widget'))),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCardType1(),
          const SizedBox(height: 10),
          CustomCardType2(),
        ],
      ),
    );
  }
}
