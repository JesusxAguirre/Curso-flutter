import 'package:flutter/material.dart';

/// Manages counter state and business logic
class CounterProvider with ChangeNotifier {
  int _counter = 0;

  String _title = 'Click';

  int get count => _counter;

  String get word => _title;

  void increment() {
    _counter++;

    if (_counter > 1) _title = 'Clicks';
    notifyListeners();
  }

  void decrement() {
    if (_counter <= 0) return;
    _counter--;

    if (_counter == 1) _title = 'Click';

    notifyListeners();
  }

  void reset() {
    _counter = 0;
    _title = 'Click';
    notifyListeners();
  }
}
