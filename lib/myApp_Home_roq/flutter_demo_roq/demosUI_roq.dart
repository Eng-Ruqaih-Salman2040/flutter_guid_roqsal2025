/*
import 'package:flutter/material.dart';
import 'package:flutter_guide_roq/myApp_Home_roq/flutter_demo_roq/UIappDemos_roq.dart';
import 'package:flutter_guide_roq/myApp_Home_roq/flutter_demo_roq/firbaseDemos_roq.dart';
import 'package:flutter_guide_roq/myApp_Home_roq/flutter_demo_roq/gameDemos_roq.dart';
import 'package:flutter_guide_roq/myApp_Home_roq/flutter_demo_roq/templateDemos_roq.dart';
import 'package:flutter_guide_roq/myApp_Home_roq/flutter_demo_roq/widgetDemos_roq.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../myApp_Data_Settings_roq/thems_roq.dart';

class DemoUI_Roq extends StatefulWidget {
  @override
  State<DemoUI_Roq> createState() => DemoUI_RoqState();

  //const DemoUI_Roq({super.key});

  final String indexDemo;

  const DemoUI_Roq( {super.key, required this.indexDemo});
}
class DemoUI_RoqState extends State<DemoUI_Roq> {
  late Future<void> _launched;

  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        forceSafariVC: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  late int indexDemo_roq;
  late final index1_title;
  int numImages_roq=0;
  @override
  void initState() {
    index1_title = widget.indexDemo;
    indexDemo_roq = domeobj_game
        .indexWhere(((demoName_roq) => demoName_roq.demoproSh == index1_title));
    //.indexWhere(((demoName) => book.id == 'b4'));
    if (indexDemo_roq != -1) {
      print('Indexxxxxxx: $indexDemo_roq');
      print('Titleeeeeeee: ${domeobj_game[indexDemo_roq].demoproSh}');
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final Map<String,int>  arg = ModalRoute.of(context)!.settings.arguments as Map<String,int> ;

    //int? indexDemo_roq =arg['indexdemo_last']; //arg['indexdemo_last']==100?0:arg['indexdemo_last'];
    //(value == null) ? v : value + v;
    print(indexDemo_roq);
    return Scaffold(
      //backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(color: Colors.grey.shade500)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            */
/*Image.asset("assets/images/image_13.jpg",
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fitHeight),
            Container(color: Color(0xffCCFFFFFF).withOpacity(0.8)),
          *//*

            Column(children: <Widget>[
              Container(
                height: 20,
              ),
              Expanded(
                  child: Container(
                    //color:Colors.purpleAccent,
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: double.infinity,
                      child: Wrap(
                        children: <Widget>[
                          Container(
                              width: 250,
                              height: 550,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  elevation: 5,
                                  child: Stack(children: <Widget>[
                                    Container(
                                      // color: Colors.white,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        */
/*  Container(
                                          width: double.infinity,
                                          height: 50,
                                          child:

                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(30),
                                                    topRight:
                                                    Radius.circular(30))),
                                            clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                            elevation: 2,
                                            child: Center(
                                              child: Text(domeobj[indexDemo_roq!].title,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6
                                                      ?.copyWith(
                                                      color: Colors
                                                          .grey.shade700,
                                                      fontWeight:
                                                      FontWeight.bold)),
                                            ),
                                          ),),*//*


                                        Expanded(
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)
                                              */
/* borderRadius: BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(10),
                                                    topRight:
                                                    Radius.circular(30)),*//*

                                            ),
                                            clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                            elevation: 0,
                                            child: ImageSlideshow(
                                              //width: double.infinity,
                                              //height: 200,
                                              initialPage: 0,

                                              indicatorColor: pSecondaryColor,
                                              indicatorBackgroundColor: Colors.grey,
                                              onPageChanged: (value) {
                                                debugPrint(
                                                    'Page changed: $value\nDemo Num :$indexDemo_roq ');
                                                setState(() {
                                                  if(value>0)
                                                    numImages_roq=value;
                                                });
                                              },
                                              autoPlayInterval: 6000,
                                              isLoop: numImages_roq>0?true:false,
                                              children:
                                              domeobj_game[indexDemo_roq].images!,

                                              //childrenImages(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            width: double.infinity,
                                            height: 50,
                                            child: Card(
                                              elevation: 10,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceEvenly,
                                                children: [
                                                  Container(width: 20),
                                                  IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        _launched =
                                                            _launchInWebViewOrVC(
                                                                "${domeobj_game[indexDemo_roq].readmore}");
                                                      });
                                                    },
                                                    icon: ImageIcon(
                                                      AssetImage(
                                                          'assets/images/book66h.png'),
                                                      size: 70,
                                                      color:
                                                      Colors.grey.shade600,
                                                    ),
                                                  ),
                                                  Expanded(child: Container()),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          _launched =
                                                              _launchInWebViewOrVC(
                                                                  "${domeobj_game[indexDemo_roq].sourceCode}");
                                                        });
                                                      },
                                                      icon: Icon(
                                                        Icons.code,
                                                        size: 30,
                                                        color: Colors
                                                            .grey.shade600,
                                                      )),
                                                  Container(width: 20),
                                                ],
                                              ),
                                            ) //buildDots(context),

                                        ),
                                      ],
                                    ),
                                  ])))
                        ],
                      ))),
            ]),
          ],
        ),
      ),
    );
  }

  List<Widget> childrenImages() {
    return [
      Image.asset(
        'assets/images/log_image_1.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/log_image_2.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/log_image_3.png',
        fit: BoxFit.fill,
      ),
    ];
  }
}


///////////////////////////////////////////////////////////////////
class DomePro {
  final String title;
  final String demoproSh;
  final String sourceCode;
  final String readmore;
  List<Widget>? images = [];

  //List<String> images = [];
  final IconData icon;

  DomePro(
    this.title,
    this.demoproSh,
    this.sourceCode,
    this.readmore,
    this.images,
    this.icon,
  );
}

List<DomePro> domeobj_game = [
  ////var domeobj = <DomePro>[
  /////////////////////////// Widgets Demo
  new DomePro(
    'Atomic Widgets',
    'Waw',
    'https://github.com/gamzegurcan/Flutter-Login-Register-UI?ref=flutterawesome.com',
    'https://flutterawesome.com/flutter-login-and-register-ui-with-atomic-widgets/',
    [
      for (int i = 1; i < 3; i++)
        Image.asset(
          'assets/images/atoWid_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Starlight NetChecker Widget',
    'Snw',
    'https://github.com/YeMyoAung/starlight_netchecker_widget?ref=flutterawesome.com',
    'https://flutterawesome.com/starlight-netchecker-widget-a-typically-widget-that-will-check-your-internet-connection/',
    [
      for (int i = 1; i < 3; i++)
        Image.asset(
          'assets/images/snw_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Helper Widget',
    'Hw',
    'https://github.com/rasitayaz/flutter-balanced-text?ref=flutterawesome.com',
    'https://flutterawesome.com/a-flutter-widget-that-simply-balances-the-lines-of-two-line-text/',
    [
      Image.asset(
        'assets/images/hW_1.jpg',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Draggable Home',
    'Drg',
    'https://github.com/DevsOnFlutter/draggable_home?ref=flutterawesome.com',
    'https://flutterawesome.com/a-draggable-flutter-widget-that-makes-implementing-a-sliding-up-and-fully-stretchable-much-easier/',
    [
      for (int i = 1; i < 4; i++)
        Image.asset(
          'assets/images/dragHome_$i.gif',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'TypeAhead (autocomplete) widget',
    'Auto',
    'https://github.com/BTonny/flutter_typeahead_web_nullsafety?ref=flutterawesome.com',
    'https://flutterawesome.com/a-typeahead-autocomplete-widget-for-flutter/',
    [
      Image.asset(
        'assets/images/typeahead_Wid1.gif',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Gif image widget ',
    'gif',
    'https://github.com/saytoonz/flutter_gif?ref=flutterawesome.com',
    'https://flutterawesome.com/gif-image-widget-help-to-controll-gif-progress-speed-repeat-frames/',
    [
      for (int i = 1; i < 2; i++)
        Image.asset(
          'assets/images/gif_1.gif',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  */
/*new DomePro(
    'More Widgets',
    'https://flutterawesome.com/tag/widgets/',
    'https://flutterawesome.com/tag/widgets/',
    [
    ],
    Icons.question_mark,
  ),*//*

  ///////////////////////////////// App Demos ////////////////////////
  new DomePro(
    'Login App',
    'Log',
    'https://github.com/TheAlphamerc/flutter_login_signup',
    'https://github.com/TheAlphamerc/flutter_login_signup',
    [
      for (int i = 5; i < 8; i++)
        Image.asset(
          'assets/images/login_$i.jpg',
          fit: BoxFit.fill,
        ),
    ],
*/
/*'assets/images/note_2.png',
'assets/images/note_3.png',
'assets/images/note_4.png',*//*

    Icons.question_mark,
  ),
  new DomePro(
    'Lightweight Note App',
    'Note',
    'https://github.com/iahmadamin/flutter_note_app',
    'https://freefluttersource.com/a-simple-flutter-note-taking-app-with-local-database/',
    [
      Image.asset(
        'assets/images/note_2.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/note_3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/note_4.png',
        fit: BoxFit.fill,
      ),
    ],
*/
/*'assets/images/note_2.png',
'assets/images/note_3.png',
'assets/images/note_4.png',*//*

    Icons.question_mark,
  ),
  new DomePro(
    'Music player App',
    'Mply',
    'https://github.com/SamedHrmn/music-player-flutter',
    '',
    [
      */
/* 'assets/images/paly_1.png',
      'assets/images/paly_2.png',
      'assets/images/paly_3.png',*//*

      Image.asset(
        'assets/images/paly_1.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/paly_2.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/paly_2.png',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Quiz App',
    'Quiz',
    'https://github.com/LongKhoa0706/flutter_quiz',
    '',
    [
      */
/* 'assets/images/paly_1.png',
      'assets/images/paly_2.png',
      'assets/images/paly_3.png',*//*

      for (int i = 1; i < 11; i++)
        Image.asset(
          'assets/images/quiz_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Baisc Calculator App',
    'Cal',
    'https://github.com/yagizdo/iphone_calculator_clone_flutter',
    'https://flutterrepos.com/lib/yagizdo-iphone_calculator_clone_flutter-flutter-templates',
    [
      */
/* 'assets/images/paly_1.png',
      'assets/images/paly_2.png',
      'assets/images/paly_3.png',*//*

      for (int i = 1; i < 4; i++)
        Image.asset(
          'assets/images/bcal_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Smart Home IOT App',
    'IOT',
    'https://github.com/keeyanaz/Smart-Home?ref=flutterawesome.com',
    'https://flutterawesome.com/a-simple-and-clean-smart-home-application-ui-using-flutter/',
    [
      */
/* 'assets/images/paly_1.png',
      'assets/images/paly_2.png',
      'assets/images/paly_3.png',*//*

      for (int i = 2; i < 4; i++)
        Image.asset(
          'assets/images/smartHIOT_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  */
/* new DomePro(
    'More Apps',
'https://flutterawesome.com/tag/apps-tag/',
    'https://flutterawesome.com/tag/apps-tag/',    [
    *//*




///////////////////// Games UI Demo
  new DomePro(
    'Tic Tac Toe Game',
    'TicTac',
    'https://github.com/mohamednaser2001/Tic-Tac-Toe-Game?ref=flutterawesome.com',
    'https://flutterawesome.com/a-tic-tac-toe-game-built-using-flutter/',
    [
      for (int i = 1; i < 3; i++)
        Image.asset(
          'assets/images/tic_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Flutter 2D runner game',
    '2Dgame',
    'https://github.com/HadesPTIT/T-rex-runner?ref=flutterawesome.com',
    'https://flutterawesome.com/flutter-2d-runner-game-using-flame-engine/',
    [
      for (int i = 1; i < 4; i++)
        Image.asset(
          'assets/images/runGame_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Hangman gaming',
    'HangGam',
    'https://github.com/1FarZ1/Hangman?ref=flutterawesome.com',
    'https://flutterawesome.com/hangman-gaming-app-built-with-flutter/',
    [
      for (int i = 1; i < 5; i++)
        Image.asset(
          'assets/images/hangGame_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Quizy Game',
    'QuizGame',
    'https://github.com/onurhan1999/Quizy?ref=flutterawesome.com',
    'https://flutterawesome.com/quizy-a-quiz-game-that-aims-to-teach-while-educating-children-and-young-people-about-sustainability/',
    [
      Image.asset(
        'assets/images/quezyGam_1.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/quezyGam_2.gif',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/quezyGam_3.png',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Rock-Paper-Scissors Game',
    'Rpsgame',
    'https://github.com/KylixDev/rps-game?ref=flutterawesome.com',
    'https://flutterawesome.com/flutter-rock-paper-scissors-game/',
    [
      Image.asset(
        'assets/images/rocyGam_2.png',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Funny Memory Game',
    'FunMemgame',
    'https://github.com/A-Hemeda/Memory-Game?ref=flutterawesome.com',
    'https://flutterawesome.com/a-funny-memory-game-with-flutter/',
    [
      for (int i = 1; i < 7; i++)
        Image.asset(
          'assets/images/funyMGam_$i.jpg',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  */
/* new DomePro(
    'More Games',
    'https://flutterawesome.com/tag/games/',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),*//*


  ////////////////////// Projects UI Demo ////////////////////
  new DomePro(
    'Asus Product App',
    'AsusPro',
    'https://github.com/YousefZinsazK78/flutterProjectAsusProductUi?ref=flutterawesome.com',
    '',
    [
      for (int i = 1; i < 4; i++)
        Image.asset(
          'assets/images/bcal_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Home Rental App',
    'HrPro',
    'https://github.com/vishnumukundan/home-rent?ref=flutterawesome.com',
    'https://flutterawesome.com/a-flutter-project-for-home-rental-application-ui/',
    [
      for (int i = 1; i < 0; i++)
        Image.asset(
          'assets/images/bbb_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Bank App',
    'Bank',
    'https://github.com/MonsieurZbanowanYY/Bank-UI-Flutter?ref=flutterawesome.com',
    '',
    [
      for (int i = 1; i < 0; i++)
        Image.asset(
          'assets/images/bbb_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Travel App',
    'TravPro',
    'https://github.com/abdulkerimcan/travel_app_ui?ref=flutterawesome.com',
    '',
    [
      for (int i = 1; i < 0; i++)
        Image.asset(
          'assets/images/bbb_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Full Chat App',
    'ChatPro',
    'https://github.com/ahmedelbagory332/full_chat_flutter_app',
    'https://flutterawesome.com/flutter-chat-app-with-firebase-provider-and-api-with-all-chat-app-functions/',
    [
      for (int i = 1; i < 8; i++)
        Image.asset(
          'assets/images/chat_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'School Management App',
    'SchooPro',
    'https://github.com/ahmedelbagory332/full_chat_flutter_app',
    'https://flutterawesome.com/school-management-app-ui-flutter/',
    [
      for (int i = 1; i < 5; i++)
        Image.asset(
          'assets/images/School_Mang_$i.jpg',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Finance App',
    'FinPro',
    'https://github.com/THANGADURAISELVARAJ/Flutter---Finance-UI?ref=flutterawesome.com',
    'https://flutterawesome.com/finance-app-ui-with-flutter/',
    [
      for (int i = 1; i < 5; i++)
        Image.asset(
          'assets/images/finance_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Fruit shopping App ',
    'FruitPro',
    'https://github.com/kadironer/fruit_shopping_app?ref=flutterawesome.com',
    'https://flutterawesome.com/fruit-shopping-app-ui-for-flutter/',
    [
      for (int i = 1; i < 5; i++)
        Image.asset(
          'assets/images/fruit_$i.jpg',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Basic Clothes App',
    'ClothPro',
    'https://github.com/antonio-pedro99/awesome_clothes_shop?ref=flutterawesome.com',
    'https://flutterawesome.com/basic-clothes-app-ui-inspired-by-a-shoot-from-driblle/',
    [
      for (int i = 1; i < 4; i++)
        Image.asset(
          'assets/images/cloth_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Plandemic/Covid-19 UI',
    'CovidPro',
    'https://github.com/rwema3/The-Plandemic-19-UI?ref=flutterawesome.com',
    'https://flutterawesome.com/the-plandemic-covid-19-ui-using-flutter/',
    [
      for (int i = 1; i < 3; i++)
        Image.asset(
          'assets/images/covid_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Makeup Shopping Store',
    'MakupPro',
    'https://github.com/Ugocode/ShoppyGirl/tree/master/shopify_app',
    'https://flutterawesome.com/a-makeup-shopping-store-for-luxury-items-at-affordable-rate/',
    [
      for (int i = 1; i < 7; i++)
        Image.asset(
          'assets/images/makupStore_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),

  //////////////////////////////////////////// Widget UI //////
  new DomePro(
    'Badges',
    'BadgW',
    'https://github.com/Vishwa-Karthik/AddToCart-Widget-?ref=flutterawesome.com',
    'https://flutterawesome.com/a-simple-use-case-on-badges-widget-for-flutter/',
    [
      for (int i = 1; i < 2; i++)
        Image.asset(
          'assets/images/badge_1.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  ///////////////////////////////////////////// Firbase UI  ////////
  new DomePro(
    'Image Sharing & Cloud Storage',
    'ImageShar_Cloufir',
    'https://github.com/llKYOTOll/Billeddeling_Tikweb_TechnicalCodingTest_App?ref=flutterawesome.com',
    'https://flutterawesome.com/a-full-stack-image-sharing-and-cloud-storage-using-flutter-firebase-and-getx/',
    [
      for (int i = 1; i < 6; i++)
        Image.asset(
          'assets/images/firimageSh_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Chat app',
    'Chatfir',
    'https://github.com/backslashflutter/group_chatapp_flutter_firebase?ref=flutterawesome.com',
    'https://flutterawesome.com/chat-app-in-flutter-firebase-with-group-based-functionalities-email-password-auth/',
    [
      for (int i = 1; i < 3; i++)
        Image.asset(
          'assets/images/firChat_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Voting System',
    'Votfir',
    'https://github.com/asuradev128/Flutter?ref=flutterawesome.com',
    'https://flutterawesome.com/a-voting-system-app-made-with-flutter-and-firebase-2/',
    [
      for (int i = 1; i < 9; i++)
        Image.asset(
          'assets/images/firVot_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Todo app',
    'Todofir',
    'https://github.com/m7md3ayesh/Todo-App?ref=flutterawesome.com',
    'https://flutterawesome.com/todo-flutter-app-with-firebase/',
    [
      for (int i = 1; i < 5; i++)
        Image.asset(
          'assets/images/firTodo_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Authentication using riverpod',
    'Authfir',
    'https://github.com/watery-desert/firebase_authentication_riverpod?ref=flutterawesome.com',
    'https://www.patreon.com/posts/figma-design-ui-68844937?utm_medium=clipboard_copy&utm_source=copy_to_clipboard&utm_campaign=postshare',
    [
      Image.asset(
        'assets/images/firAuth_1.gif',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Completed Functional Flutter App',
    'Complefir',
    'https://github.com/rwema3/FindSeat-App?ref=flutterawesome.com',
    'https://flutterawesome.com/a-completed-functional-flutter-app-findseat-bloc-json-api-unit-test-firebase-auth/',
    [
      for (int i = 1; i < 16; i++)
        Image.asset(
          'assets/images/firComl_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Message App ',
    'Messfir',
    'https://github.com/youssefelallam/message_app?ref=flutterawesome.com',
    'https://flutterawesome.com/a-flutter-message-app-with-firebase/',
    [
      for (int i = 1; i < 3; i++)
        Image.asset(
          'assets/images/firMessag_$i.jpg',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Manage Tasks',
    'MangTaskfir',
    'https://github.com/OmarJ9/my-todo?ref=flutterawesome.com',
    'https://flutterawesome.com/a-flutter-app-to-manage-all-your-tasks-with-firebase-backend/',
    [
      for (int i = 1; i < 7; i++)
        Image.asset(
          'assets/images/firMangTask_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Send Notification',
    'SendNotifir',
    'https://github.com/dinethsiriwardana/flutter-notification?ref=flutterawesome.com',
    'https://github.com/ahmeriqbal7aa/flutter_push_notification_app?ref=flutterawesome.com',
    [
      for (int i = 1; i < 4; i++)
        Image.asset(
          'assets/images/firNotif_$i.jpg',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Delivery App for Restaurants',
    'DelivResfir',
    'https://github.com/AhmedLSayed9/deliverzler?ref=flutterawesome.com',
    'https://flutterawesome.com/delivery-app-for-restaurants-built-on-flutter-with-firebase-google-maps-local-notifications-fcm-notifications/',
    [

        Image.asset('assets/images/firDelvRest_1.jpg', fit: BoxFit.fill,),
      Image.asset('assets/images/firDelvRest_2.png', fit: BoxFit.fill,),
      Image.asset('assets/images/firDelvRest_3.png', fit: BoxFit.fill,),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Product Management',
    'ProduMangfir',
    'https://github.com/Velkamhell97/flutter_firestore_app?ref=flutterawesome.com',
    'https://flutterawesome.com/a-simple-product-management-app-with-firebase-auth/',
    [
      for (int i = 1; i < 6; i++)
        Image.asset(
          'assets/images/firProMang_$i.gif',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),

  ////////////////////////////////////// Templeate UI
  new DomePro(
    'ECommerce Template',
    'EcoTempl',
    'https://github.com/Abdulkadir19997/ecommerce-shope-app',
    'https://github.com/Abdulkadir19997/ecommerce-shope-app',
    [
      for (int i = 1; i < 16; i++)
        Image.asset(
          'assets/images/TempEcom_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Task Management',
    'TaskMangTempl',
    'https://github.com/AgnelSelvan/Flutter-UI-Template?ref=flutterawesome.com',
    'https://flutterawesome.com/task-management-ui-template-with-flutter/',
    [
      for (int i = 1; i < 3; i++)
        Image.asset(
          'assets/images/TempTaskMang_$i.gif',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'BlixtStudio',
    'BlixTempl',
    'https://github.com/LoudestBlaze12/BlixtStudio?ref=flutterawesome.com',
    'https://flutterawesome.com/now-ui-flutter-a-fully-coded-app-template-built-for-flutter/',
    [
      for (int i = 1; i < 4; i++)
        Image.asset(
          'assets/images/TempFs_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Banking Template',
    'BankTempl',
    'https://github.com/YOUNESSMOUATASSIM/digital-banking-app-mobile-side?ref=flutterawesome.com',
    'https://flutterawesome.com/a-complete-mobile-banking-template-dark-light-theme-built-with-with-flutter/',
    [
      for (int i = 1; i < 10; i+2)
        Image.asset('assets/images/TempBank_$i.png', fit: BoxFit.fill,),
      for (int i = 2; i < 10; i+2)
        Image.asset('assets/images/TempBank_$i.png', fit: BoxFit.fill,),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Choose Color & Theme',
    'ColThemTempl',
    'https://github.com/meg4cyberc4t/choose_color_theme_template?ref=flutterawesome.com',
    'https://flutterawesome.com/this-template-will-help-you-choose-a-color-scheme-for-the-application-show-how-widgets-interact-with-it/',
    [
      for (int i = 1; i < 17; i++)
        Image.asset(
          'assets/images/TempChoos_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Music App Template',
    'MusicTempl',
    'https://github.com/bukunmialuko/FlutterMusicAppUI?ref=flutterawesome.com',
    'https://flutterawesome.com/a-music-app-template-with-flutter/',
    [
      for (int i = 1; i < 8; i++)
        Image.asset(
          'assets/images/TempMusP_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
 */
/* ////////////////////////////
  new DomePro(
    'Travel App',
    'TravelTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      for (int i = 1; i < 3; i++)
        Image.asset(
          'assets/images/TempProj_$i.gif',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Template Gallery App',
    'GalleryTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      for (int i = 3; i < 5; i++)
        Image.asset(
          'assets/images/TempProj_$i.gif',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Boats Challenge',
    'BoastTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [

        Image.asset(
          'assets/images/TempProj_5.gif',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Bookstore App',
    'BookTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
for(int i=6;i<9;i++)
      Image.asset('assets/images/TempProj_$i.gif', fit: BoxFit.fill,),

    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Instagram Redesign App',
    'IstagTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [

      Image.asset('assets/images/TempProj_9.webp', fit: BoxFit.fill,),
      Image.asset('assets/images/TempProj_10.gif', fit: BoxFit.fill,),
      Image.asset('assets/images/TempProj_11.gif', fit: BoxFit.fill,),
      Image.asset('assets/images/TempProj_12.gif', fit: BoxFit.fill,),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Superhero Movies App',
    'SuperTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      for(int i=13;i<15;i++)
        Image.asset('assets/images/TempProj_$i.gif', fit: BoxFit.fill,),

    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Social App Photographers',
    'SocialPhotoTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [

        Image.asset('assets/images/TempProj_15.gif', fit: BoxFit.fill,),
      Image.asset('assets/images/TempProj_16.webp', fit: BoxFit.fill,),

    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Gaming App',
    'GamingTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [

      Image.asset('assets/images/TempProj_17.gif', fit: BoxFit.fill,),
      Image.asset('assets/images/TempProj_18.gif', fit: BoxFit.fill,),

    ],
    Icons.question_mark,
  ),
  new DomePro(
    'My Medical Appointment',
    'MedicaTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [

      Image.asset('assets/images/TempProj_19.gif', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Music Albums Collection',
    'MusicAlbumsTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [

      Image.asset('assets/images/TemplPro_200.gif', fit: BoxFit.fill,),
      Image.asset('assets/images/TemplPro_201.gif', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Music Vinyl Animation',
    'MusicVinylTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [

      Image.asset('assets/images/TempProj_22.gif', fit: BoxFit.fill,),
      Image.asset('assets/images/TempProj_23.gif', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'FindOut',
    'FindOutTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [

      Image.asset('assets/images/TemplProj_224.gif', fit: BoxFit.fill,),
      Image.asset('assets/images/TemplProj_225.gif', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Movie Selections',
    'MovieSelecTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [

      Image.asset('assets/images/TempProj_27.gif', fit: BoxFit.fill,),



    ],
    Icons.question_mark,
  ),
*//*



  new DomePro(
    'Template Flutter Projects',
    'ProjsTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      for (int i = 1; i < 28; i++)
        Image.asset(
          'assets/images/TempProj_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),

////////////////////////////// More Flutter Demoes

  */
/*new DomePro(
    'More UI',
    'https://flutterawesome.com/tag/ui/',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'More Apps',
    'https://flutterawesome.com/tag/apps-tag/',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    'More Widgets',
    'https://flutterawesome.com/tag/widgets/',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.fill,),


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
  ),*//*


  /////////////////////////////// Empty
  */
/*new DomePro(
    '',
    '',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),
  new DomePro(
    '',
    '',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),*//*

];



/////////////////////////////////////////


class DemoUI2_Roq extends StatefulWidget {
  @override
  State<DemoUI2_Roq> createState() => DemoUI2_RoqState();

  //const DemoUI_Roq({super.key});

  final String indexDemo,Dname;

  const DemoUI2_Roq({super.key, required this.indexDemo, required this.Dname});
}
class DemoUI2_RoqState extends State<DemoUI2_Roq> {
  late Future<void> _launched;

  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        forceSafariVC: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  late int indexDemo_roq;
  late final index1_title,dname,dometype;
  int numImages_roq=0;
  @override
  void initState() {
        index1_title = widget.indexDemo;
        dname=widget.Dname;
        dometype= dname=="Dgam"?domeobj_game:dname=="Dtem"?domeobj_game: dname=="Dfir"?domeobj_game:dname=="Dwid"?domeobj_Wid:domeobj_AppUI;
    indexDemo_roq = dometype.indexWhere(((demoName_roq) => demoName_roq.demoproSh == index1_title));
    //.indexWhere(((demoName) => book.id == 'b4'));
    if (indexDemo_roq != -1) {
      print('Indexxxxxxx: $indexDemo_roq');
      print('Titleeeeeeee: ${domeobj_game[indexDemo_roq].demoproSh}');
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final Map<String,int>  arg = ModalRoute.of(context)!.settings.arguments as Map<String,int> ;

    //int? indexDemo_roq =arg['indexdemo_last']; //arg['indexdemo_last']==100?0:arg['indexdemo_last'];
    //(value == null) ? v : value + v;
    print(indexDemo_roq);
    return Scaffold(
      //backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(color: Colors.grey.shade500)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            */
/*Image.asset("assets/images/image_13.jpg",
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fitHeight),
            Container(color: Color(0xffCCFFFFFF).withOpacity(0.8)),
          *//*

            Column(children: <Widget>[
              Container(
                height: 20,
              ),
              Expanded(
                  child: Container(
                    //color:Colors.purpleAccent,
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: double.infinity,
                      child: Wrap(
                        children: <Widget>[
                          Container(
                              width: 250,
                              height: 550,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  elevation: 5,
                                  child: Stack(children: <Widget>[
                                    Container(
                                      // color: Colors.white,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        */
/*  Container(
                                          width: double.infinity,
                                          height: 50,
                                          child:

                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(30),
                                                    topRight:
                                                    Radius.circular(30))),
                                            clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                            elevation: 2,
                                            child: Center(
                                              child: Text(domeobj[indexDemo_roq!].title,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6
                                                      ?.copyWith(
                                                      color: Colors
                                                          .grey.shade700,
                                                      fontWeight:
                                                      FontWeight.bold)),
                                            ),
                                          ),),*//*


                                        Expanded(
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)
                                              */
/* borderRadius: BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(10),
                                                    topRight:
                                                    Radius.circular(30)),*//*

                                            ),
                                            clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                            elevation: 0,
                                            child: ImageSlideshow(
                                              //width: double.infinity,
                                              //height: 200,
                                              initialPage: 0,

                                              indicatorColor: pSecondaryColor,
                                              indicatorBackgroundColor: Colors.grey,
                                              onPageChanged: (value) {
                                                debugPrint(
                                                    'Page changed: $value\nDemo Num :$indexDemo_roq ');
                                                setState(() {
                                                  if(value>0)
                                                    numImages_roq=value;
                                                });
                                              },
                                              autoPlayInterval: 6000,
                                              isLoop: numImages_roq>0?true:false,
                                              children:
                                              dometype[indexDemo_roq].images!,

                                              //childrenImages(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            width: double.infinity,
                                            height: 50,
                                            child: Card(
                                              elevation: 10,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceEvenly,
                                                children: [
                                                  Container(width: 20),
                                                  IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        _launched =
                                                            _launchInWebViewOrVC(
                                                                "${dometype[indexDemo_roq].readmore}");
                                                      });
                                                    },
                                                    icon: ImageIcon(
                                                      AssetImage(
                                                          'assets/images/book66h.png'),
                                                      size: 70,
                                                      color:
                                                      Colors.grey.shade600,
                                                    ),
                                                  ),
                                                  Expanded(child: Container()),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          _launched =
                                                              _launchInWebViewOrVC(
                                                                  "${dometype[indexDemo_roq].sourceCode}");
                                                        });
                                                      },
                                                      icon: Icon(
                                                        Icons.code,
                                                        size: 30,
                                                        color: Colors
                                                            .grey.shade600,
                                                      )),
                                                  Container(width: 20),
                                                ],
                                              ),
                                            ) //buildDots(context),

                                        ),
                                      ],
                                    ),
                                  ])))
                        ],
                      ))),
            ]),
          ],
        ),
      ),
    );
  }

  List<Widget> childrenImages() {
    return [
      Image.asset(
        'assets/images/log_image_1.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/log_image_2.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/log_image_3.png',
        fit: BoxFit.fill,
      ),
    ];
  }
}*/
