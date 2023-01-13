import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SearchFieldToggle extends Widget with ChangeNotifier {
  bool _isSearchFieldShown = true;

  bool get isSearchFieldShown => _isSearchFieldShown;

  set isSearchFieldShown(bool newValue) {
    _isSearchFieldShown = newValue;
    notifyListeners();
  }

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}
