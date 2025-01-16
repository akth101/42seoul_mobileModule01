import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LocationData extends ChangeNotifier {
  String _location = "";
  final String _geo = "Geolocation";

  String get location => _location;
  String get geo => _geo;

  void fixLocation(String value) {
    _location = value;
    debugPrint("changed location in provider: $_location");
    notifyListeners();
  }
}