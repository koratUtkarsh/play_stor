import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_stor/Screen/IosScreen/Home/Provider/IosHomeProvider.dart';
import 'package:provider/provider.dart';

class HomeScreenIOS extends StatefulWidget {
  const HomeScreenIOS({Key? key}) : super(key: key);

  @override
  State<HomeScreenIOS> createState() => _HomeScreenIOSState();
}

class _HomeScreenIOSState extends State<HomeScreenIOS> {
  HomeProviderIOS? homeProviderIOStrue;
  HomeProviderIOS? homeProviderIOSfalse;

  @override
  Widget build(BuildContext context) {
    homeProviderIOSfalse = Provider.of<HomeProviderIOS>(context,listen: false);
    homeProviderIOStrue = Provider.of<HomeProviderIOS>(context,listen: true);
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.today_fill), label: "Today"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.rocket_fill), label: "Games"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_stack_3d_up_fill),
                label: "Apps"),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return homeProviderIOStrue!.Screens[index];
        },
      ),
    );
  }
}