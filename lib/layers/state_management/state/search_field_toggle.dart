import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@deprecated
class SearchFieldToggle extends Widget with ChangeNotifier {
  bool _isSearchFieldShown = true;

  bool get isSearchFieldShown => _isSearchFieldShown;

  set isSearchFieldShown(bool newValue) {
    _isSearchFieldShown = newValue;
    notifyListeners();
  }

  @override
  Element createElement() {
    throw UnimplementedError();
  }
}
