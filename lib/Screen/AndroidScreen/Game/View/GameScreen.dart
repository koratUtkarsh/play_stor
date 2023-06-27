import 'package:flutter/material.dart';
import 'package:play_stor/Screen/AndroidScreen/Game/Provider/GameProvider.dart';
import 'package:play_stor/Screen/AndroidScreen/Install/Model/InstallModel.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  GameProvider? gameProvidertrue, gameProviderfalse;

  @override
  Widget build(BuildContext context) {
    gameProviderfalse = Provider.of<GameProvider>(context, listen: false);
    gameProvidertrue = Provider.of<GameProvider>(context, listen: true);
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            "Search For Games",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_voice_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.people,
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                )
              ],
            ),
            bottom: TabBar(
              indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              tabs: [
                Tab(
                  child: Text(
                    "Game",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Top Game",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ads . Suggested for You",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: gameProviderfalse!.GameImage1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GameImage1(
                          gameProviderfalse!.GameImage1[index],
                          gameProviderfalse!.GameName1[index],
                          gameProviderfalse!.GameRate1[index],
                          gameProviderfalse!.GameImaegs1[index],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top - Rated Games",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: gameProviderfalse!.GameImage2.length,
                        itemBuilder: (context, index) => GameImage2(
                          gameProviderfalse!.GameImage2[index],
                          gameProviderfalse!.GameName2[index],
                          gameProviderfalse!.GameRate2[index],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top - Paid Games",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: gameProviderfalse!.GameImage2.length,
                        itemBuilder: (context, index) => GameImage2(
                          gameProviderfalse!.GameImage4[index],
                          gameProviderfalse!.GameName4[index],
                          gameProviderfalse!.GameRate4[index],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top - Rated Games",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: gameProviderfalse!.GameImage2.length,
                        itemBuilder: (context, index) => GameImage2(
                          gameProviderfalse!.GameImage3[index],
                          gameProviderfalse!.GameName3[index],
                          gameProviderfalse!.GameRate3[index],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: gameProviderfalse!.MainListImage.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: [
                        ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "${gameProviderfalse!.MainListImage[index]}",
                            height: 70,
                            width: 70,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${gameProvidertrue!.MainListName[index]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "${gameProvidertrue!.MainListRate[index]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget GameImage1(String Images, String Name, String Rate, String Images1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Model m1 = Model(
            Name: Name,
            Rate: Rate,
            Image: Images,
          );
          Navigator.pushNamed(context, 'install',arguments: m1);
        },
        child: Container(
          width: 200,
          height: 190,
          alignment: Alignment.center,
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "$Images1",
                    height: 120,
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "$Images",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$Name",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "$Rate",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget GameImage2(String Images, String Name, String Rate) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Model m1 = Model(
            Name: Name,
            Rate: Rate,
            Image: Images,
          );
          Navigator.pushNamed(context, 'install',arguments: m1);
        },
        child: Container(
          width: 100,
          height: 150,
          alignment: Alignment.center,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "$Images",
                    height: 60,
                    width: 60,
                  ),
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$Name",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "$Rate",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}