import 'package:flutter/material.dart';
import 'package:p5/views/details_screen.dart';
import 'package:p5/views/home.dart';
import 'package:p5/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recetas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      routes: getApplicationRoutes(),
      home: HomePage(),
    );
  }
}
