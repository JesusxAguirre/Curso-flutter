import 'package:flutter/material.dart';

import 'package:widget_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Widgets en Flutter'))),
      body: ListView.separated(
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(AppRoutes.menuOptions[index].icon),
              title: Text(AppRoutes.menuOptions[index].name),
              onTap: () {
                // final route = MaterialPageRoute(
                //   builder: (context) => ListView1Screen(),
                // );

                // Navigator.push(context, route);

                Navigator.pushNamed(
                  context,
                  AppRoutes.menuOptions[index].route,
                );
              },
            ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
