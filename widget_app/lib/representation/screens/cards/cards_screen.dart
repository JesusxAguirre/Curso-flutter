import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'elevation 0'},
  {'elevation': 1.0, 'label': 'elevation 1'},
  {'elevation': 2.0, 'label': 'elevation 2'},
  {'elevation': 3.0, 'label': 'elevation 3'},
  {'elevation': 4.0, 'label': 'elevation 4'},
  {'elevation': 5.0, 'label': 'elevation 5'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards Screen')),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...cards.map(
            (cardData) => _CardType1(
              label: cardData['label'],
              elevation: cardData['elevation'],
            ),
          ),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
