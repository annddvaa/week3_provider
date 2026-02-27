import 'package:flutter/material.dart';

class Cartmodel extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => _items;

  void add(String itemname) {
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
