import 'package:flutter/material.dart';
import 'package:play_stor/Screen/AndroidScreen/Install/Model/InstallModel.dart';
import 'package:play_stor/Screen/AndroidScreen/Install/Provider/InstallProvider.dart';
import 'package:provider/provider.dart';

class InstallingPage extends StatefulWidget {
  const InstallingPage({Key? key}) : super(key: key);

  @override
  State<InstallingPage> createState() => _InstallingPageState();
}

class _InstallingPageState extends State<InstallingPage> {
  @override
  Widget build(BuildContext context) {
    Model m1 = ModalRoute.of(context)!.settings.arguments as Model;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
            SizedBox(width: 15),
            Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 20,
            ),
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,),
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                          "${m1.Image}"),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "${m1.Name}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.star,
                      size: 20,
                    ),
                    SizedBox(height: 10),
                    Text("${m1.Rate}"),
                  ],
                ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 40),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.download,
                      size: 20,
                    ),
                    SizedBox(height: 10),
                    Text("m1"),
                  ],
                ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 40),
                ),
                Column(
                  children: [
                    Text(
                      "10 cr+",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text("Downloader"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green.shade800,
                ),
                alignment: Alignment.center,
                child: Text(
                  "Install",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 100,
                      color: Colors.black12,
                      child: Image.asset("${Provider.of<InstallProvider>(context,listen: false).Images[index]}",fit: BoxFit.fill,),
                    ),
                  );
                },
                itemCount: Provider.of<InstallProvider>(context,listen: false).Images.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}