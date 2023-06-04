import 'package:flutter/material.dart';
import 'package:flutter_application_8/FuorPage/projectditl.dart';
import 'package:flutter_application_8/copm/Firstpage.dart';
import 'package:flutter_application_8/thirdPage/ThirdpPage.dart';
import 'package:flutter_application_8/thirdPage/partlogin.dart';
import 'package:flutter_application_8/thirdPage/saginInF_G.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home:  Firstpage()
    );
  }
}
