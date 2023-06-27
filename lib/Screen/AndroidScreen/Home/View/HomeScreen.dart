import 'package:flutter/material.dart';
import 'package:play_stor/Screen/AndroidScreen/Application/View/AppScreen.dart';
import 'package:play_stor/Screen/AndroidScreen/Game/View/GameScreen.dart';
import 'package:play_stor/Screen/AndroidScreen/Home/Provider/HomrProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidertrue, homeProviderfalse;

  List Screens = [
    GameScreen(),
    App(),
  ];

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: Screens[homeProvidertrue!.i],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: homeProvidertrue!.i,
          onTap: (value) {
            homeProviderfalse!.Add(value);
          },
          mouseCursor: MouseCursor.uncontrolled,
          selectedFontSize: 20,
          selectedIconTheme: IconThemeData(color: Colors.black, size: 40),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              label: "Games",
              icon: Icon(Icons.gamepad_outlined),
            ),
            BottomNavigationBarItem(
              label: "Apps",
              icon: Icon(Icons.gamepad_outlined),
            ),
          ],
        ),
      ),
    );
  }
}