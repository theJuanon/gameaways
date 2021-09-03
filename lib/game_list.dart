import 'package:flutter/material.dart';

class GameList extends StatelessWidget {
  final List<Widget> games;

  GameList(this.games);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: games,
    );
  }
}
