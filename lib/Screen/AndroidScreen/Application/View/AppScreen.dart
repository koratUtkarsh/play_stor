import 'package:flutter/material.dart';
import 'package:play_stor/Screen/AndroidScreen/Application/Provider/AppProvider.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppProvider? appProvidertrue, appProviderfalse;

  @override
  Widget build(BuildContext context) {
    appProviderfalse = Provider.of<AppProvider>(context, listen: false);
    appProvidertrue = Provider.of<AppProvider>(context, listen: true);
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
                    "App",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Top App",
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
                      height: 140,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: appProviderfalse!.AppImage1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => AppImage1(
                          appProviderfalse!.AppImage1[index],
                          appProviderfalse!.AppName1[index],
                          appProviderfalse!.AppRate1[index],
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
                    Container(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: appProviderfalse!.AppImage2.length,
                        itemBuilder: (context, index) => AppImage1(
                          appProviderfalse!.AppImage2[index],
                          appProviderfalse!.AppName2[index],
                          appProviderfalse!.AppRate2[index],
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
                        itemCount: appProviderfalse!.AppImage2.length,
                        itemBuilder: (context, index) => AppImage1(
                          appProviderfalse!.AppImage4[index],
                          appProviderfalse!.AppName4[index],
                          appProviderfalse!.AppRate4[index],
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
                        itemCount: appProviderfalse!.AppImage2.length,
                        itemBuilder: (context, index) => AppImage1(
                          appProviderfalse!.AppImage3[index],
                          appProviderfalse!.AppName3[index],
                          appProviderfalse!.AppRate3[index],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: appProviderfalse!.MainListImage.length,
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
                            "${appProviderfalse!.MainListImage[index]}",
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
                              "${appProvidertrue!.MainListName[index]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "${appProvidertrue!.MainListRate[index]}",
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

  Widget AppImage1(String Images, String Name, String Rate) {
    return Padding(
      padding: const EdgeInsets.all(10),
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
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
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
        ),
      ),
    );
  }
}