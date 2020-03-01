import 'package:flutter/material.dart';
import 'package:game_ular/game_page.dart';
import 'dart:ui' as prefix0;

void main() => runApp(MyApp());
//  WidgetsFlutterBinding.ensureInitialized();
//  runApp(MyApp());
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Ular Keket',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.black45,
//        title: Text("Game Ular"),
//        centerTitle: true,
//      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/hutan_bg.jpg"),fit:BoxFit.cover)
            ),
          ),
          BackdropFilter(
            filter: prefix0.ImageFilter.blur(sigmaX: 4,sigmaY: 4),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6)
              ),
            ),
          ),
          GamePage(),
        ],
      ),
    );
  }
}