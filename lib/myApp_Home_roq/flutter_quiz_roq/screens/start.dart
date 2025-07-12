import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import 'quiz.dart';


class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Let's Play Quiz,",
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              height: screen.width / 3,
              width: screen.width / 3,
              child: Image(
                image: AssetImage('lib/myApp_Home_roq/flutter_quiz_roq/assets/images/quiz-logo.png'),
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  //Navigator.pushReplacementNamed(context, 'quiz');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>Quiz()));
                },
                child: CustomButton(text: 'Start Quiz!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
///////////////////////////////////////////
