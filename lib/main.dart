import 'package:flutter/material.dart';
import 'package:flutter_application_5/com/bottomBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
