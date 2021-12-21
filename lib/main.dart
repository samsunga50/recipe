import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lakwizin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.blueGrey[100],
      ),
      home: MyHomePage(),
    );
  }
}
