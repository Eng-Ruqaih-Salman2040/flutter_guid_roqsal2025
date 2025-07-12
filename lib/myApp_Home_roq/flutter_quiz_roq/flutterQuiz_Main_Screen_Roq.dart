import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../myApp_Data_Settings_roq/my_app_settings.dart';
import '../../myApp_Data_Settings_roq/thems_roq.dart';
import 'screens/Quiz_UserInfo_roq.dart';
import 'screens/quiz.dart';
import 'screens/result.dart';
import 'screens/start.dart';


void main() => runApp(Dart_QuizUI_Roq());

class Dart_QuizUI_Roq extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: Provider.of<MyAppSettings>(context).isDarkMode
          ?
      darkThemeData(context):
      lightThemeData(context),

      /*theme:*//*Provider.of<MyAppSettings>(context).isDarkMode?
      ThemeData.dark():ThemeData.light(),*//*ThemeData(
        brightness: Brightness.light,
        backgroundColor: Color.fromRGBO(37, 44, 74, 1.0),
        primaryColor: Color.fromRGBO(190, 56, 55, 1.0),*/

      routes: {
        'start': (context) => Start(),
        'quiz': (context) => Quiz(),
        'result': (context) => Result(),
        'userInfo':(context)=>Quiz_UserInfo_Roq(),
      },
      home: Quiz_UserInfo_Roq(),
    );
  }

  const Dart_QuizUI_Roq({Key? key}) : super(key: key);
}