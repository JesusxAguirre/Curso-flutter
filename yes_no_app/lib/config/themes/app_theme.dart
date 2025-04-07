import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int seletedColor;

  AppTheme({this.seletedColor = 0})
    : assert(
        seletedColor >= 0,
        'Colors must between 0 and ${_colorThemes.length}',
      );

  ThemeData theme() => ThemeData(colorSchemeSeed: _colorThemes[seletedColor]);
}
