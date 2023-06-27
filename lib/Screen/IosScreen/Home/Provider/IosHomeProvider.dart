import 'package:flutter/material.dart';
import 'package:play_stor/Screen/IosScreen/Application/View/IosAppScreen.dart';
import 'package:play_stor/Screen/IosScreen/Game/View/IosGameScreen.dart';

class HomeProviderIOS extends ChangeNotifier{

  List Screens = [
    GameScreenIOS(),
    GameScreenIOS(),
    AppScreenIOS(),
  ];
}