

import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String? _myPlatform;
  String? _myUrl;
  void setPlatform(value){
    _myPlatform =value;
    notifyListeners();
  }

  void setUrl(value){
    _myUrl =value;
    notifyListeners();
  }

  String getPlatform(){
    return _myPlatform?? 'instagram.png';
  }

  String getUrl(){
    return _myUrl ?? 'https://smartsuq.com';
  }
  @override
  void notifyListeners() =>super.notifyListeners(); 
}