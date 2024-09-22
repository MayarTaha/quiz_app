import 'package:flutter/material.dart';
import 'package:quick_quiz_view/quick_quiz_view.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/question2.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);
  static const String routeName = 'Quiz';

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
              'Quiz App ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            child: QuickQuizView(
              onOptionSelected: (value) {
                if (value == 3) {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                          content: const Text(
                            "Correct Answer",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: const Text("cancel"))
                          ]));

                  //AlertDialog(title: Text('hlihld',style: TextStyle(color: Colors.cyan),),);
                } else {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                          content: const Text(
                            "Wrong Answer",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: const Text("cancel"))
                          ]));
                }
              },
              onNextPressed: () {
                Navigator.pushNamed(context, Question2.routeName);
              },
              onPreviousPressed:() {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              title: ' Who created Flutter?',
              option1: 'Facebook',
              option2: 'Adobe',
              option3: 'Google',
              option4: 'Microsoft',

            ),
          )
        ],
      ),
    );
  }
}
