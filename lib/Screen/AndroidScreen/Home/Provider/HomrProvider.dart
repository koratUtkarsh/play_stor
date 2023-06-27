import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  int i = 0;

  void Add(int value)
  {
    i = value;
    notifyListeners();
  }
}