import 'package:flutter/material.dart';
import 'package:p5/views/home.dart';
import 'package:p5/views/details_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/details': (BuildContext context) => DetailScreen(
        //title: 'Hola', cookTime: 'Hola2', rating: 'Hola3', image: ''
        ),
    '/home': (BuildContext context) => HomePage(),
  };
}
