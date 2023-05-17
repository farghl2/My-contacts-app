

import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String? myPlatform;
  String? myUrl;
  @override
  void notifyListeners() =>super.notifyListeners(); 
}