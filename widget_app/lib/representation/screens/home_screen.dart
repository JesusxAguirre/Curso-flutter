import 'package:flutter/material.dart';

import 'package:widget_app/representation/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Widgets en Flutter'))),
      body: ListView.separated(
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(Icons.alt_route_rounded),
              title: Text('Nombre de ruta'),
              onTap: () {
                // final route = MaterialPageRoute(
                //   builder: (context) => ListView1Screen(),
                // );

                // Navigator.push(context, route);

                Navigator.pushNamed(context, 'card');
              },
            ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: 10,
      ),
    );
  }
}
