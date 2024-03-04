import 'package:flutter/material.dart';

const _customColor = Color.fromARGB(255, 157, 82, 255);

const List<Color> _colorthemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  // assert() is not only limited to constructors; they can be inside a function or method to, for example, check if arguments are valid.
  AppTheme({
    this.selectedColor = 0,
  }) : assert(
          selectedColor >= 0 && selectedColor < _colorthemes.length,
          'Colors must be between 0 and ${_colorthemes.length - 1}',
        );

  ThemeData setTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorthemes[selectedColor],
    );
  }
}
