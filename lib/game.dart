import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Game extends StatelessWidget {
  final String pathImage;
  final String title;

  Game(this.pathImage, this.title);

  @override
  Widget build(BuildContext context) {
    final image = Container(
      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image:
            DecorationImage(fit: BoxFit.cover, image: NetworkImage(pathImage)),
      ),
    );

    final gameTitle = Container(
        child: Text(title,
            style: GoogleFonts.lato(
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )));

    final description = Container(
      margin: EdgeInsets.only(top: 5),
      child: Text(
        "Descripción del juego uwu",
        style:
            GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey.shade700)),
      ),
    );

    final favorite = Container(
        child: IconButton(
      icon: Icon(Icons.favorite, color: Colors.pink),
      onPressed: () {},
    ));

    final titleDescription = Column(
      children: [gameTitle, description],
    );

    return Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Colors.grey, style: BorderStyle.solid, width: .5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [image, titleDescription, favorite],
        ));
  }
}
