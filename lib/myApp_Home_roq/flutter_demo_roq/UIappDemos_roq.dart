import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../myApp_Data_Settings_roq/constants.dart';
import '../../myApp_Data_Settings_roq/thems_roq.dart';
import 'demosUI_roq.dart';
import 'package:url_launcher/url_launcher.dart';

/////////////////////////////////// App UI /////////////////////
class DemoLogin_Roq extends StatelessWidget {
  const DemoLogin_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: 'Log');
  }
}

class DemoNote_Roq extends StatelessWidget {
  const DemoNote_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: "Note");
  }
}

class DemoMusic_Roq extends StatelessWidget {
  const DemoMusic_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: "Mply");
  }
}

class DemoQuiz_Roq extends StatelessWidget {
  const DemoQuiz_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: "Quiz");
  }
}

class DemoCal_Baisc_Roq extends StatelessWidget {
  const DemoCal_Baisc_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: "Cal");
  }
}

class DemoSmartHome_Roq extends StatelessWidget {
  const DemoSmartHome_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: "IOT");
  }
}

class DemoUI_Roq extends StatefulWidget {
  @override
  State<DemoUI_Roq> createState() => DemoUI_RoqState();

  //const DemoUI_Roq({super.key});

  final String indexDemo;

  const DemoUI_Roq({super.key, required this.indexDemo});
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
    indexDemo_roq = domeobj_AppUI
        .indexWhere(((demoName_roq) => demoName_roq.demoproSh == index1_title));
    //.indexWhere(((demoName) => book.id == 'b4'));
    if (indexDemo_roq != -1) {
      print('Indexxxxxxx: $indexDemo_roq');
      print('Titleeeeeeee: ${domeobj_AppUI[indexDemo_roq].demoproSh}');
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
                                              domeobj_AppUI[indexDemo_roq].images!,

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
                                                                "${domeobj_AppUI[indexDemo_roq].readmore}");
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
                                                                  "${domeobj_AppUI[indexDemo_roq].sourceCode}");
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


List<DomePro> domeobj_AppUI = [
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
/*'assets/images/note_2.png',
'assets/images/note_3.png',
'assets/images/note_4.png',*/
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
/*'assets/images/note_2.png',
'assets/images/note_3.png',
'assets/images/note_4.png',*/
    Icons.question_mark,
  ),
  new DomePro(
    'Music player App',
    'Mply',
    'https://github.com/SamedHrmn/music-player-flutter',
    '',
    [
/* 'assets/images/paly_1.png',
      'assets/images/paly_2.png',
      'assets/images/paly_3.png',*/
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
/* 'assets/images/paly_1.png',
      'assets/images/paly_2.png',
      'assets/images/paly_3.png',*/
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
/* 'assets/images/paly_1.png',
      'assets/images/paly_2.png',
      'assets/images/paly_3.png',*/
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
/* 'assets/images/paly_1.png',
      'assets/images/paly_2.png',
      'assets/images/paly_3.png',*/
      for (int i = 2; i < 4; i++)
        Image.asset(
          'assets/images/smartHIOT_$i.png',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
/* new DomePro(
    'More Apps',
'https://flutterawesome.com/tag/apps-tag/',
    'https://flutterawesome.com/tag/apps-tag/',    [
    */
];
