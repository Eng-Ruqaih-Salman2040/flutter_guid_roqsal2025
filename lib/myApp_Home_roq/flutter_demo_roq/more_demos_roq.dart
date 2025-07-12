
import 'package:flutter/material.dart';
/////////////////////////////////// More Demoes ////////////////////////////////
class More_WidgetsDemo_Roq extends StatelessWidget {
  const More_WidgetsDemo_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
class More_AppsDemo_Roq extends StatelessWidget {
  const More_AppsDemo_Roq({Key? key}) : super(key: key);

  ////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class More_GamesDemo_Roq extends StatelessWidget {
  const More_GamesDemo_Roq({Key? key}) : super(key: key);

  ////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class More_ProjDemo_Roq extends StatelessWidget {
  const More_ProjDemo_Roq({Key? key}) : super(key: key);

  ////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




class MoreDemos_Roq extends StatelessWidget {
  const MoreDemos_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
/*
class DomePro {
  final String title;
  final String sourceCode;
  final String readmore;
  List<Widget> images=[];
  //List<String> images = [];
  final IconData icon;

  DomePro(this.title, this.sourceCode, this.readmore,this.images, this.icon, );
}

List<DomePro> domeobj = [
  ///////////////////////////////// App Demos ////////////////////////
  new DomePro(
    'Login App',
    'http://github.com/whisnuys/simple-login-page?ref=flutterawesome.com',
    'https://freefluttersource.com/a-simple-login-page-ui-with-flutter/',
    [

      Image.asset('assets/images/log_image_1.png', fit: BoxFit.cover,),
      Image.asset('assets/images/log_image_2.png', fit: BoxFit.cover,),
      Image.asset('assets/images/log_image_3.png', fit: BoxFit.cover,),
    ],

    Icons.question_mark,
  ),
  new DomePro(
    'Lightweight Note App',
    'https://github.com/iahmadamin/flutter_note_app',
    'https://freefluttersource.com/a-simple-flutter-note-taking-app-with-local-database/',
    [

      Image.asset('assets/images/note_2.png', fit: BoxFit.cover,),
      Image.asset('assets/images/note_3.png', fit: BoxFit.cover,),
      Image.asset('assets/images/note_4.png', fit: BoxFit.cover,),
    ],

    Icons.question_mark,
  ),
  new DomePro(
    'Music player App',
    'https://github.com/SamedHrmn/music-player-flutter',
    '',
    [

      Image.asset('assets/images/paly_1.png', fit: BoxFit.cover,),
      Image.asset('assets/images/paly_2.png', fit: BoxFit.cover,),
      Image.asset('assets/images/paly_2.png', fit: BoxFit.cover,),

    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Quiz App',
    'https://github.com/LongKhoa0706/flutter_quiz',
    '',
    [

      for(int i=1;i<11;i++)
        Image.asset('assets/images/quiz_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Baisc Calculator App',
    'https://github.com/yagizdo/iphone_calculator_clone_flutter',
    'https://flutterrepos.com/lib/yagizdo-iphone_calculator_clone_flutter-flutter-templates',
    [

      for(int i=1;i<4;i++)
        Image.asset('assets/images/bcal_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Smart Home IOT App',
    'https://github.com/keeyanaz/Smart-Home?ref=flutterawesome.com',
    'https://flutterawesome.com/a-simple-and-clean-smart-home-application-ui-using-flutter/',    [


    Image.asset('assets/images/smartHIOT_1.png', fit: BoxFit.cover,),


  ],
    Icons.question_mark,
  ),
  new DomePro(
    'More Apps',
    'https://flutterawesome.com/tag/apps-tag/',
    'https://flutterawesome.com/tag/apps-tag/',    [


    Image.asset('assets/images/smartHIOT_1.png', fit: BoxFit.cover,),


  ],
    Icons.question_mark,
  ),

  /////////////////////////// Widgets Demo
  new DomePro(
    'Atomic Widgets',
    'https://github.com/gamzegurcan/Flutter-Login-Register-UI?ref=flutterawesome.com',
    'https://flutterawesome.com/flutter-login-and-register-ui-with-atomic-widgets/',
    [
      for(int i=1;i<2;i++)
        Image.asset('assets/images/atoWid_$i.png', fit: BoxFit.cover,),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Starlight NetChecker Widget',
    'https://github.com/YeMyoAung/starlight_netchecker_widget?ref=flutterawesome.com',
    'https://flutterawesome.com/starlight-netchecker-widget-a-typically-widget-that-will-check-your-internet-connection/',
    [
      for(int i=1;i<3;i++)
        Image.asset('assets/images/snw_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Helper Widget',
    'https://github.com/rasitayaz/flutter-balanced-text?ref=flutterawesome.com',
    'https://flutterawesome.com/a-flutter-widget-that-simply-balances-the-lines-of-two-line-text/',
    [

      Image.asset('assets/images/hW_1.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Popup anywhere onscreen',
    'https://flutterawesome.com/show-a-popup-anywhere-on-the-screen-or-attach-your-popup-to-a-widget/',
    'https://flutterawesome.com/show-a-popup-anywhere-on-the-screen-or-attach-your-popup-to-a-widget/',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'TypeAhead (autocomplete) widget',
    'https://github.com/BTonny/flutter_typeahead_web_nullsafety?ref=flutterawesome.com',
    'https://flutterawesome.com/a-typeahead-autocomplete-widget-for-flutter/',
    [

      Image.asset('assets/images/typeahead_Wid1.gif', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Gif image widget ',
    'https://github.com/saytoonz/flutter_gif?ref=flutterawesome.com',
    'https://flutterawesome.com/gif-image-widget-help-to-controll-gif-progress-speed-repeat-frames/',
    [
      for(int i=1;i<2;i++)
        Image.asset('assets/images/gif_1.gif', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'More Widgets',
    'https://flutterawesome.com/tag/widgets/',
    'https://flutterawesome.com/tag/widgets/',
    [
    ],
    Icons.question_mark,
  ),

///////////////////// Games UI Demo
  new DomePro(
    'Tic Tac Toe Game',
    'https://github.com/mohamednaser2001/Tic-Tac-Toe-Game?ref=flutterawesome.com',
    'https://flutterawesome.com/a-tic-tac-toe-game-built-using-flutter/',
    [
      for(int i=1;i<3;i++)
        Image.asset('assets/images/tic_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Flutter 2D runner game',
    'https://github.com/HadesPTIT/T-rex-runner?ref=flutterawesome.com',
    'https://flutterawesome.com/flutter-2d-runner-game-using-flame-engine/',
    [
      for(int i=1;i<4;i++)
        Image.asset('assets/images/runGame_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Hangman gaming',
    'https://github.com/1FarZ1/Hangman?ref=flutterawesome.com',
    'https://flutterawesome.com/hangman-gaming-app-built-with-flutter/',
    [
      for(int i=1;i<5;i++)
        Image.asset('assets/images/hangGame_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Quizy Game',
    'https://github.com/onurhan1999/Quizy?ref=flutterawesome.com',
    'https://flutterawesome.com/quizy-a-quiz-game-that-aims-to-teach-while-educating-children-and-young-people-about-sustainability/',
    [
      for(int i=1;i<6;i++)
        Image.asset('assets/images/quezyGam_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Rock-Paper-Scissors Game',
    'https://github.com/KylixDev/rps-game?ref=flutterawesome.com',
    'https://flutterawesome.com/flutter-rock-paper-scissors-game/',
    [
      for(int i=1;i<2;i++)
        Image.asset('assets/images/rocyGam_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'A funny Memory game',
    'https://github.com/A-Hemeda/Memory-Game?ref=flutterawesome.com',
    'https://flutterawesome.com/a-funny-memory-game-with-flutter/',
    [
      for(int i=1;i<7;i++)
        Image.asset('assets/images/funyMGam_$i.jpg', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'More Games',
    'https://flutterawesome.com/tag/games/',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),

  ////////////////////// Projects UI Demo ////////////////////
  new DomePro(
    'Asus Product App UI',
    'https://github.com/YousefZinsazK78/flutterProjectAsusProductUi?ref=flutterawesome.com',
    '',
    [
      for(int i=1;i<4;i++)
        Image.asset('assets/images/bcal_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Asus Product App UI',
    'https://github.com/YousefZinsazK78/flutterProjectAsusProductUi?ref=flutterawesome.com',
    'https://flutterrepos.com/lib/yagizdo-iphone_calculator_clone_flutter-flutter-templates',
    [
      for(int i=1;i<4;i++)
        Image.asset('assets/images/bcal_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Home Rental application UI',
    'https://github.com/vishnumukundan/home-rent?ref=flutterawesome.com',
    'https://flutterawesome.com/a-flutter-project-for-home-rental-application-ui/',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Bank UI',
    'https://github.com/MonsieurZbanowanYY/Bank-UI-Flutter?ref=flutterawesome.com',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Travel app UI',
    'https://github.com/abdulkerimcan/travel_app_ui?ref=flutterawesome.com',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Full Chat App',
    'https://github.com/ahmedelbagory332/full_chat_flutter_app',
    'https://flutterawesome.com/flutter-chat-app-with-firebase-provider-and-api-with-all-chat-app-functions/',
    [
      for(int i=1;i<8;i++)
        Image.asset('assets/images/chat_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'More UI Projects',
    'https://flutterawesome.com/tag/ui/',
    'https://flutterawesome.com/tag/ui/',
    [

    ],
    Icons.question_mark,
  ),



////////////////////////////// More Flutter Demoes

  new DomePro(
    'More UI',
    'https://flutterawesome.com/tag/ui/',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'More Apps',
    'https://flutterawesome.com/tag/apps-tag/',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'More Widgets',
    'https://flutterawesome.com/tag/widgets/',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'More Games',
    'https://flutterawesome.com/tag/games/',
    'https://flutterawesome.com/tag/games/',
    [
    ],
    Icons.question_mark,
  ),

  new DomePro(
    '',
    '',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    '',
    '',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.cover,),


    ],
    Icons.question_mark,
  ),
];

*/
