import 'package:flutter/cupertino.dart';
import 'package:play_stor/Screen/IosScreen/Game/Provider/IosGameProvider.dart';
import 'package:provider/provider.dart';

class GameScreenIOS extends StatefulWidget {
  const GameScreenIOS({Key? key}) : super(key: key);

  @override
  State<GameScreenIOS> createState() => _GameScreenIOSState();
}

class _GameScreenIOSState extends State<GameScreenIOS> {
  GameProviderIOS? gameProviderIOStrue, gameProviderIOSfalse;

  @override
  Widget build(BuildContext context) {
    gameProviderIOSfalse = Provider.of<GameProviderIOS>(context, listen: false);
    gameProviderIOStrue = Provider.of<GameProviderIOS>(context, listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Game",
                        style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: CupertinoColors.black, width: 2)),
                        child: Icon(
                          CupertinoIcons.person,
                          size: 20,
                          color: CupertinoColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favourite Game",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 20, color: CupertinoColors.activeBlue),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: gameProviderIOSfalse!.GameImage1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GameImage1(index),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Our Favourite Game",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 20, color: CupertinoColors.activeBlue),
                    ),
                  ],
                ),
              ),
              Container(
                height: 310,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 0.3),
                  scrollDirection: Axis.horizontal,
                  itemCount: gameProviderIOSfalse!.GameImage2.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GameImage2(index),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Our Favourite Game",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 20, color: CupertinoColors.activeBlue),
                    ),
                  ],
                ),
              ),
              Container(
                height: 310,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 0.3),
                  scrollDirection: Axis.horizontal,
                  itemCount: gameProviderIOSfalse!.GameImage3.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GameImage2(index),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Our Favourite Game",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 20, color: CupertinoColors.activeBlue),
                    ),
                  ],
                ),
              ),
              Container(
                height: 310,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 0.3),
                  scrollDirection: Axis.horizontal,
                  itemCount: gameProviderIOSfalse!.GameImage4.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GameImage2(index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget GameImage1(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${gameProviderIOSfalse!.GameName1[index]}",
          style: TextStyle(
            color: CupertinoColors.black,
            fontSize: 30,
          ),
        ),
        Container(
          height: 150,
          width: 240,
          color: Color(0xff777777),
          child: Stack(
            children: [
              Image.asset(
                "${gameProviderIOSfalse!.GameImaegs1[index]}",
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "${gameProviderIOSfalse!.GameImage1[index]}",
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "${gameProviderIOSfalse!.GameName1[index]}",
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: CupertinoColors.white,
                        border: Border.all(color: CupertinoColors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "GET",
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget GameImage2(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            width: double.infinity,
            // color: Color(0xffc4c4c4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child:
                      Image.asset("${gameProviderIOSfalse!.GameImage2[index]}"),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${gameProviderIOSfalse!.GameName2[index]}"),
                        Text("${gameProviderIOSfalse!.GameRate2[index]}"),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(color: CupertinoColors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "GET",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  Widget GameImage3(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            width: double.infinity,
            // color: Color(0xffc4c4c4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child:
                      Image.asset("${gameProviderIOSfalse!.GameImage3[index]}"),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${gameProviderIOSfalse!.GameName3[index]}"),
                        Text("${gameProviderIOSfalse!.GameRate3[index]}"),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(color: CupertinoColors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "GET",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  Widget GameImage4(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            width: double.infinity,
            // color: Color(0xffc4c4c4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child:
                      Image.asset("${gameProviderIOSfalse!.GameImage4[index]}"),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${gameProviderIOSfalse!.GameName4[index]}"),
                        Text("${gameProviderIOSfalse!.GameRate4[index]}"),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(color: CupertinoColors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "GET",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}