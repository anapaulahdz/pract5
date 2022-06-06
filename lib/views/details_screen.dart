import 'package:flutter/material.dart';
//import 'package:p5/models/recipe.dart';
import 'package:p5/views/widgets/card.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Card? card;
    final card1 =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Recipe Details'),
        ),
        body: new Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(card1['title'],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'Kdam_Thmor_Pro')),
            Text("Cook time: " + card1['cookTime'],
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                )),
            Text("Raiting: " + card1['rating'],
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                )),
            Image(image: NetworkImage(card1['image']))
          ],
        )));
  }
}
