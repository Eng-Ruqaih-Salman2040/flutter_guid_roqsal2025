import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../myApp_Data_Settings_roq/constants.dart';
import '../../myApp_Data_Settings_roq/thems_roq.dart';
import 'demosUI_roq.dart';
import 'package:url_launcher/url_launcher.dart';
///////////////////////////////////////// Projects UI ////////////////
class ProDemoAsus_Roq extends StatelessWidget {
  const ProDemoAsus_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "AsusPro");
  }
}
class ProDemoHomeRant_Roq extends StatelessWidget {
  const ProDemoHomeRant_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "HrPro");
  }
}
class ProDemoBank_Roq extends StatelessWidget {
  const ProDemoBank_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "Bank");
  }
}
class ProDemoTravl_Roq extends StatelessWidget {
  const ProDemoTravl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "TravPro");
  }
}
class ProDemoChat_Roq extends StatelessWidget {
  const ProDemoChat_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "ChatPro");
  }
}
class ProDemoSchoMang_Roq extends StatelessWidget {
  const ProDemoSchoMang_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "SchooPro");
  }
}
class ProDemoFinance_Roq extends StatelessWidget {
  const ProDemoFinance_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "FinPro");
  }
}
class ProDemofruit_Roq extends StatelessWidget {
  const ProDemofruit_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "FruitPro");
  }
}
class ProDemoCloths_Roq extends StatelessWidget {
  const ProDemoCloths_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "ClothPro");
  }
}
class ProDemoCovid_Roq extends StatelessWidget {
  const ProDemoCovid_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo:"CovidPro");
  }
}
class ProDemoMakeupStore_Roq extends StatelessWidget {
  const ProDemoMakeupStore_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoprojUI_Roq(indexDemo: "MakupPro");
  }
}

/////////////////////////////////////////

class DemoprojUI_Roq extends StatefulWidget {
  @override
  State<DemoprojUI_Roq> createState() => DemoprojUI_RoqState();

  //const DemoUI_Roq({super.key});

  final String indexDemo;

  const DemoprojUI_Roq( {super.key, required this.indexDemo});
}
class DemoprojUI_RoqState extends State<DemoprojUI_Roq> {
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
    indexDemo_roq = domeobj_proj
        .indexWhere(((demoName_roq) => demoName_roq.demoproSh == index1_title));
    //.indexWhere(((demoName) => book.id == 'b4'));
    if (indexDemo_roq != -1) {
      print('Indexxxxxxx: $indexDemo_roq');
      print('Titleeeeeeee: ${domeobj_proj[indexDemo_roq].demoproSh}');
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
    return

      Scaffold(
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
                                              domeobj_proj[indexDemo_roq].images!,

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
                                                                "${domeobj_proj[indexDemo_roq].readmore}");
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
                                                                  "${domeobj_proj[indexDemo_roq].sourceCode}");
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
List<DomePro> domeobj_proj = [
  ////var domeobj = <DomePro>[


  ////////////////////// Projects UI Demo ////////////////////
  new DomePro(
    'Asus Product App',
    'AsusPro',
    'https://github.com/YousefZinsazK78/flutterProjectAsusProductUi?ref=flutterawesome.com',
    '',
    [
      for (int i = 1; i < 4; i++)
        Image.asset(
          'assets/images/asus_$i.png',
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
      for (int i = 1; i < 5; i++)
        Image.asset(
          'assets/images/homeRent_$i.png',
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

        Image.asset(
          'assets/images/bank_video_2.gif',
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
    [Image.asset(
      'assets/images/trav_1.png',fit: BoxFit.fill,
    ),
        Image.asset(
          'assets/images/trav_2.png',
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


////////////////////////////// More Flutter Demoes

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
  ),*/

  /////////////////////////////// Empty
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
  ),*/
];
