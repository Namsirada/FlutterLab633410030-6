import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Team Group")),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              //ค่าที่ต้องการเพิ่ม
              context: context,
              color: Colors.lightGreen,
              blocktext: "นางสาวศิรดา ประวัดศรี",
              imgPath:
                  "lib/asset/images/311263422_3208383199411865_3294756422529336691_n.jpg",
              nickname: "นํ้า",
              ID: "ID: 633410021-7"),
          Card(
              context: context,
              color: Colors.limeAccent,
              blocktext: "นายอรุณ ปัญญาจา",
              imgPath:
                  "lib/asset/images/311329436_2070816826639193_5783469254006386146_n.jpg",
              nickname: "ทิว",
              ID: "ID: 633410146-7"),
          Card(
              context: context,
              color: Colors.orangeAccent,
              blocktext: "นายอมรเทพ มุงธิสาร",
              imgPath:
                  "lib/asset/images/312787734_3349772865302844_3695214519224189239_n.jpg",
              nickname: "ป๊อบ",
              ID: "ID: 633410089-3"),
          Card(
              context: context,
              color: Colors.pinkAccent,
              blocktext: "นายสนธยา ช่วยบุญเทียม",
              imgPath:
                  "lib/asset/images/313959996_1548013938967995_7994080305293753087_n.jpg",
              nickname: "ต้า",
              ID: "ID: 633410031-4"),
        ],
      ),
    );
  }

  Widget Card(
      //กำหนดค่าที่ใช้รับในการส่ง
      {
    required BuildContext context,
    required Color color,
    required String blocktext,
    required String imgPath,
    required String nickname,
    required String ID,
  }) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        //กำหนดค่าที่ใช้ส่ง
                        name: blocktext,
                        imPath: imgPath,
                        Nickname: nickname,
                        id: ID,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 60, backgroundImage: NetworkImage(imgPath)),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({
    required this.name,
    required this.Nickname,
    required this.imPath,
    required this.id,
  });
  String name;
  String Nickname;
  String imPath;
  String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(radius: 120, backgroundImage: NetworkImage(imPath)),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(name),
              Text(id),
              Text(Nickname),
            ],
          ),
        ));
  }
}
