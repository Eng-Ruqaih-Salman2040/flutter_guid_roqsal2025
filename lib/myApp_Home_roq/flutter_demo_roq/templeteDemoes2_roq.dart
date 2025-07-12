import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../myApp_Data_Settings_roq/constants.dart';
import '../../myApp_Data_Settings_roq/thems_roq.dart';
import 'demosUI_roq.dart';
import 'package:url_launcher/url_launcher.dart';

/////////////////////////////////////////// Templates UI



class IstagTempl_Roq extends StatelessWidget {
  const IstagTempl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI2_Roq(indexDemo: "IstagTempl");
  }
}

class SuperTempl_Roq extends StatelessWidget {
  const SuperTempl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI2_Roq(indexDemo: "SuperTempl");
  }
}

class SocialPhotoTempl_Roq extends StatelessWidget {
  const SocialPhotoTempl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI2_Roq(indexDemo: "SocialPhotoTempl");
  }
}

class GamingTempl_Roq extends StatelessWidget {
  const GamingTempl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI2_Roq(indexDemo: "GamingTempl");
  }
}

class MedicaTempl_Roq extends StatelessWidget {
  const MedicaTempl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI2_Roq(indexDemo: "MedicaTempl");
  }
}

class MusicAlbumsTempl_Roq extends StatelessWidget {
  const MusicAlbumsTempl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI2_Roq(indexDemo: "MusicAlbumsTempl");
  }
}

class MusicVinylTempl_Roq extends StatelessWidget {
  const MusicVinylTempl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI2_Roq(indexDemo: "MusicVinylTempl");
  }
}

class FindOutTempl_Roq extends StatelessWidget {
  const FindOutTempl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI2_Roq(indexDemo: "FindOutTempl");
  }
}

class MovieSelecTempl_Roq extends StatelessWidget {
  const MovieSelecTempl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoTempUI2_Roq(indexDemo: "MovieSelecTempl");
  }
}
////////////////////////////////

class DemoTempUI2_Roq extends StatefulWidget {
  @override
  State<DemoTempUI2_Roq> createState() => DemoTempUI2_RoqState();

  //const DemoUI_Roq({super.key});

  final String indexDemo;

  const DemoTempUI2_Roq( {super.key, required this.indexDemo});
}
class DemoTempUI2_RoqState extends State<DemoTempUI2_Roq> {
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
    indexDemo_roq = domeobj_templ2
        .indexWhere(((demoName_roq) => demoName_roq.demoproSh == index1_title));
    //.indexWhere(((demoName) => book.id == 'b4'));
    if (indexDemo_roq != -1) {
      print('Indexxxxxxx: $indexDemo_roq');
      print('Titleeeeeeee: ${domeobj_templ2[indexDemo_roq].demoproSh}');
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
                                              domeobj_templ2[indexDemo_roq].images!,

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
                                                                "${domeobj_templ2[indexDemo_roq].readmore}");
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
                                                                  "${domeobj_templ2[indexDemo_roq].sourceCode}");
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


List<DomePro> domeobj_templ2 = [
////////////////////////////////////// Templeate UI
  new DomePro(
    'Instagram Redesign App',
    'IstagTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      Image.asset(
        'assets/images/TempProj_9.webp',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/TempProj_10.gif',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/TempProj_11.gif',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/TempProj_12.gif',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Superhero Movies App',
    'SuperTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      for (int i = 13; i < 15; i++)
        Image.asset(
          'assets/images/TempProj_$i.gif',
          fit: BoxFit.fill,
        ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Social App Photographers',
    'SocialPhotoTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      Image.asset(
        'assets/images/TempProj_15.gif',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/TempProj_16.webp',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Gaming App',
    'GamingTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      Image.asset(
        'assets/images/TempProj_17.gif',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/TempProj_18.gif',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'My Medical Appointment',
    'MedicaTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      Image.asset(
        'assets/images/TempProj_19.gif',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Music Albums Collection',
    'MusicAlbumsTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      Image.asset(
        'assets/images/TemplPro_200.gif',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/TemplPro_201.gif',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Music Vinyl Animation',
    'MusicVinylTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      Image.asset(
        'assets/images/TempProj_22.gif',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/TempProj_23.gif',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'FindOut',
    'FindOutTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      Image.asset(
        'assets/images/TemplProj_224.gif',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/TemplProj_203.gif',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),
  new DomePro(
    'Movie Selections',
    'MovieSelecTempl',
    'https://github.com/brocodev/flutter_projects',
    'https://flutterawesome.com/flutter-apps-with-cool-design-and-animations/',
    [
      Image.asset(
        'assets/images/TempProj_27.gif',
        fit: BoxFit.fill,
      ),
    ],
    Icons.question_mark,
  ),

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
];
