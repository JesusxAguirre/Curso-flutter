import 'package:flutter/material.dart';
import 'package:widget_app/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.image, color: AppTheme.primaryColor),
            title: Text('Hola mundo'),
            subtitle: Text(
              'Veniam ex enim mollit occaecat minim laboris cupidatat cupidatat elit in. Nisi deserunt et et nisi et enim ut reprehenderit incididunt fugiat fugiat exercitation duis. Adipisicing excepteur eiusmod cillum amet reprehenderit officia voluptate anim irure laboris reprehenderit fugiat. Culpa elit eu id in. Sunt mollit ad dolore laborum esse minim mollit minim laborum ex aute nostrud mollit. Est culpa aute magna tempor et non incididunt duis. Non deserunt mollit mollit dolore exercitation elit do excepteur.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Cancelar')),
                TextButton(onPressed: () {}, child: Text('Ok')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
