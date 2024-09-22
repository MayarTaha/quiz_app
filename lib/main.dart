import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/question3.dart';
import 'package:quiz_app/quiz_screen.dart';

import 'question2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes:{
        HomeScreen.routeName:(context)=>HomeScreen(),
        QuizScreen.routeName:(context)=>QuizScreen(),
        Question2.routeName:(context)=>Question2(),
        Question3.routeName:(context)=>Question3(),
      } ,
    );
  }
}
