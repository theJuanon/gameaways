import 'package:flutter/material.dart';
import 'package:games_giveaway/game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Giveaways"),
            centerTitle: true,
          ),
          drawer: Drawer(),
          body: ListView(
            children: [
              Game("https://www.gamerpower.com/offers/1b/612e7e7d4e8fe.jpg",
                  "BATTLEFIELD 1"),
              Game("https://www.gamerpower.com/offers/1b/612e7e7d4e8fe.jpg",
                  "BATTLEFIELD 1"),
              Game("https://www.gamerpower.com/offers/1b/612e7e7d4e8fe.jpg",
                  "BATTLEFIELD 1"),
              Game("https://www.gamerpower.com/offers/1b/612e7e7d4e8fe.jpg",
                  "BATTLEFIELD 1")
            ],
          ),
        ));
  }
}
