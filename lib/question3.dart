import 'package:flutter/material.dart';
import 'package:quick_quiz_view/quick_quiz_view.dart';
import 'package:quiz_app/question2.dart';

class Question3 extends StatelessWidget {
  const Question3({Key? key}) : super(key: key);
  static const String routeName = 'Qu3';

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
                onNextPressed: () {},
                onPreviousPressed: () {
                  Navigator.pushNamed(context, Question2.routeName);
                },
                title: 'Q3. Who created Dart programming language?',
                option1: 'Brendan Eich',
                option2: 'Bjarne Stroustrup',
                option3: 'Lars Bak and Kasper Lund',
                option4: 'Jeremy Ashkenas',
              ),
            )
          ],
        ));
  }
}
