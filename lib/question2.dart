import 'package:flutter/material.dart';
import 'package:quick_quiz_view/quick_quiz_view.dart';
import 'package:quiz_app/question3.dart';
import 'package:quiz_app/quiz_screen.dart';

class Question2 extends StatelessWidget {
  const Question2({Key? key}) : super(key: key);
  static const String routeName = 'Qu2';
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
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Column(
          children: [
            Container(
              height: 600,
              child: QuickQuizView(
                  onOptionSelected: (value) {
                    if (value == 1) {
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
                    Navigator.pushNamed(context, Question3.routeName);
                  },
                  onPreviousPressed:() {
                  Navigator.pushNamed(context, QuizScreen.routeName);
                  },
                  title: 'Q2. Which programming language is used by Flutter',
                  option1: 'Dart',
                  option2: 'C++',
                  option3: 'Cotlin',
                option4: 'Java',

                  ),
            )
          ],
        ));
  }
}
