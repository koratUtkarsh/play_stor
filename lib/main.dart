import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_stor/Screen/AndroidScreen/Application/Provider/AppProvider.dart';
import 'package:play_stor/Screen/AndroidScreen/Game/Provider/GameProvider.dart';
import 'package:play_stor/Screen/AndroidScreen/Game/View/GameScreen.dart';
import 'package:play_stor/Screen/AndroidScreen/Home/Provider/HomrProvider.dart';
import 'package:play_stor/Screen/AndroidScreen/Home/View/HomeScreen.dart';
import 'package:play_stor/Screen/AndroidScreen/Install/Provider/InstallProvider.dart';
import 'package:play_stor/Screen/AndroidScreen/Install/View/InstallPage.dart';
import 'package:play_stor/Screen/IosScreen/Application/Provider/IosAppProvidr.dart';
import 'package:play_stor/Screen/IosScreen/Game/Provider/IosGameProvider.dart';
import 'package:play_stor/Screen/IosScreen/Game/View/IosGameScreen.dart';
import 'package:play_stor/Screen/IosScreen/Home/Provider/IosHomeProvider.dart';
import 'package:play_stor/Screen/IosScreen/Home/View/IosHomeScreen.dart';
import 'dart:io';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GameProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => InstallProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GameProviderIOS(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProviderIOS(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProviderIOS(),
        ),
      ],
      child: Platform.isAndroid ? IOS() : Android(),
    ),
  );
}

Widget Android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomeScreen(),
      'game': (context) => GameScreen(),
      'app': (context) => GameScreen(),
      'install': (context) => InstallingPage(),
    },
  );
}

Widget IOS() {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => HomeScreenIOS(),
      'game screen': (p0) => GameScreenIOS(),
    },
  );
}