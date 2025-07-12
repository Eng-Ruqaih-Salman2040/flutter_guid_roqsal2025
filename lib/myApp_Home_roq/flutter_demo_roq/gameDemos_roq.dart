import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


import '../../myApp_Data_Settings_roq/constants.dart';
import '../../myApp_Data_Settings_roq/thems_roq.dart';
import 'demosUI_roq.dart';

///////////////////////////////////////// Games UI ////////////////
class GaDemoTic_Roq extends StatelessWidget {
  const GaDemoTic_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoGameUI_Roq(indexDemo: "TicTac");
  }
}

class GaDemo2DRunn_Roq extends StatelessWidget {
  const GaDemo2DRunn_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoGameUI_Roq(indexDemo: "2Dgame");
  }
}

class GaDemoHang_Roq extends StatelessWidget {
  const GaDemoHang_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoGameUI_Roq(indexDemo: "HangGam");
  }
}

class GaDemoQuiziy_Roq extends StatelessWidget {
  const GaDemoQuiziy_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoGameUI_Roq(indexDemo: "QuizGame");
  }
}

class GaDemoRock_Roq extends StatelessWidget {
  const GaDemoRock_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoGameUI_Roq(indexDemo: "Rpsgame");
  }
}

class GaDemoFunnyM_Roq extends StatelessWidget {
  const GaDemoFunnyM_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoGameUI_Roq(indexDemo: "FunMemgame");
  }
}
////////////////////////////////////////////

class DemoGameUI_Roq extends StatefulWidget {
  @override
  State<DemoGameUI_Roq> createState() => DemoGameUI_RoqState();

  //const DemoUI_Roq({super.key});

  final String indexDemo;

  const DemoGameUI_Roq( {super.key, required this.indexDemo});
}
class DemoGameUI_RoqState extends State<DemoGameUI_Roq> {
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
            /*Image.asset("assets/images/image_13.jpg",
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fitHeight),
            Container(color: Color(0xffCCFFFFFF).withOpacity(0.8)),
          */
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
                                          ),),*/

                                        Expanded(
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)
                                              /* borderRadius: BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(10),
                                                    topRight:
                                                    Radius.circular(30)),*/
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



}
List<DomePro> domeobj_game = [


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
/* new DomePro(
    'More Games',
    'https://flutterawesome.com/tag/games/',
    '',
    [
      for(int i=1;i<0;i++)
        Image.asset('assets/images/bbb_$i.png', fit: BoxFit.fill,),


    ],
    Icons.question_mark,
  ),*/
];
