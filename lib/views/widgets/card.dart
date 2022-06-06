import 'package:flutter/material.dart';
import 'package:p5/routes/routes.dart';
import 'package:p5/views/details_screen.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String image;
  RecipeCard({
    required this.title,
    required this.cookTime,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title:
                  Text(title, style: TextStyle(fontFamily: 'Kdam_Thmor_Pro')),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(image),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/details', arguments: {
                  'title': this.title,
                  'cookTime': this.cookTime,
                  'rating': this.rating,
                  'image': this.image
                });
              }),
        ],
      ),
    );
  }
}
