import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text('App de widgets')),
      body: ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];

          return ListTile(
            leading: Icon(menuItem.icon, color: colors.primary),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: colors.primary,
            ),

            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            subtitleTextStyle: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300,
            ),
            title: Text(menuItem.title),
            subtitle: Text(menuItem.subtitle),
            onTap: () => context.push(menuItem.link),
          );
        },
      ),
    );
  }
}
