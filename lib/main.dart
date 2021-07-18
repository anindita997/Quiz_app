import 'package:flutter/material.dart';
import 'package:quiz_app/discoverpage.dart';
import 'package:quiz_app/home_data.dart';
import 'package:quiz_app/homepage.dart';
import 'package:quiz_app/login.dart';
import 'package:quiz_app/quiz_categorypage.dart';
import 'package:quiz_app/quiz_level.dart';
import 'package:quiz_app/quiz_topic_page.dart';
import 'package:quiz_app/registrationpage.dart';
import 'package:quiz_app/startpage.dart';
import 'package:quiz_app/tabbarview_data.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[700],
        backgroundColor: Colors.white
      ),
      home:Start(),
    );
  }
}
