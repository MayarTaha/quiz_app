import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'Home';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          ''
          'Quiz App ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Image(image: AssetImage('assets/images/quiz.jpg')),
          SizedBox(height: 40,),
          ElevatedButton(style: ElevatedButton.styleFrom(
            backgroundColor:Colors.brown,
          ),onPressed: () {
            Navigator.pushNamed(context, QuizScreen.routeName);
          },
              child: Text('Start The Quiz',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),))
        ],
      ),
    );
  }
}
