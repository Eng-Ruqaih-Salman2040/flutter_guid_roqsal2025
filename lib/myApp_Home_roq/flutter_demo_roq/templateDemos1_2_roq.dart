import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../myApp_Data_Settings_roq/constants.dart';
import '../../myApp_Data_Settings_roq/thems_roq.dart';
import 'demosUI_roq.dart';
import 'package:url_launcher/url_launcher.dart';

/////////////////////////////////////////// Templates UI



class Templ_MusicApp_Roq extends StatelessWidget {
  const Templ_MusicApp_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI_Roq(indexDemo: "MusicTempl");
  }
}
class Templ_MoreProjs_Roq extends StatelessWidget {
  const Templ_MoreProjs_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI_Roq(indexDemo: "ProjsTempl");
  }
}
class Templ_Travel_Roq extends StatelessWidget {
  const Templ_Travel_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI_Roq(indexDemo: "TravelTempl");
  }
}
class Templ_Gallery_Roq extends StatelessWidget {
  const Templ_Gallery_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI_Roq(indexDemo: "GalleryTempl");
  }
}
class Templ_Boast_Roq extends StatelessWidget {
  const Templ_Boast_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI_Roq(indexDemo: "BoastTempl");
  }
}
class Templ_Book_Roq extends StatelessWidget {
  const Templ_Book_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI_Roq(indexDemo: "BookTempl");
  }
}


////////////////////////////////

class DemoTempUI_Roq extends StatefulWidget {
  @override
  State<DemoTempUI_Roq> createState() => DemoTempUI_RoqState();

  //const DemoUI_Roq({super.key});

  final String indexDemo;

  const DemoTempUI_Roq( {super.key, required this.indexDemo});
}
class DemoTempUI_RoqState extends State<DemoTempUI_Roq> {
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
    indexDemo_roq = domeobj_templ_1_2
        .indexWhere(((demoName_roq) => demoName_roq.demoproSh == index1_title));
    //.indexWhere(((demoName) => book.id == 'b4'));
    if (indexDemo_roq != -1) {
      print('Indexxxxxxx: $indexDemo_roq');
      print('Titleeeeeeee: ${domeobj_templ_1_2[indexDemo_roq].demoproSh}');
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
                                              domeobj_templ_1_2[indexDemo_roq].images!,

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
                                                                "${domeobj_templ_1_2[indexDemo_roq].readmore}");
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
                                                                  "${domeobj_templ_1_2[indexDemo_roq].sourceCode}");
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

List<DomePro> domeobj_templ_1_2 = [
////////////////////////////////////// Templeate UI

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

        Image.asset('assets/images/TempProj_6.gif', fit: BoxFit.fill,),
      Image.asset('assets/images/TempProj_7.gif', fit: BoxFit.fill,),
      Image.asset('assets/images/TempProj_8.gif', fit: BoxFit.fill,),
    ],
    Icons.question_mark,
  ),



];
