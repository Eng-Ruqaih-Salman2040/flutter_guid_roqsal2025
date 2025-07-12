import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../myApp_Data_Settings_roq/constants.dart';
import '../../myApp_Data_Settings_roq/thems_roq.dart';
import 'demosUI_roq.dart';

/////////////////////////////////// Widget UI /////////////////////

class WidDemoAtomic_Roq extends StatelessWidget {
  const WidDemoAtomic_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: "Waw");
  }
}
class WidDemoStar_Net_Roq extends StatelessWidget {
  const WidDemoStar_Net_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: 'Snw');
  }
}
class WidDemohepler_Roq extends StatelessWidget {
  const WidDemohepler_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: 'Hw');
  }
}
class WidDemodragH_Roq extends StatelessWidget {
  const WidDemodragH_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: 'Drg');
  }
}
class WidDemoAutoCompl_Roq extends StatelessWidget {
  const WidDemoAutoCompl_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: 'Auto');
  }
}
class WidDemoGitImage_Roq extends StatelessWidget {
  const WidDemoGitImage_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoUI_Roq(indexDemo: "gif");
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
    indexDemo_roq = domeobj_Wid
        .indexWhere(((demoName_roq) => demoName_roq.demoproSh == index1_title));
    //.indexWhere(((demoName) => book.id == 'b4'));
    if (indexDemo_roq != -1) {
      print('Indexxxxxxx: $indexDemo_roq');
      print('Titleeeeeeee: ${domeobj_Wid[indexDemo_roq].demoproSh}');
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
                                              domeobj_Wid[indexDemo_roq].images!,

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
                                                                "${domeobj_Wid[indexDemo_roq].readmore}");
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
                                                                  "${domeobj_Wid[indexDemo_roq].sourceCode}");
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






List<DomePro> domeobj_Wid = [
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
/*new DomePro(
    'More Widgets',
    'https://flutterawesome.com/tag/widgets/',
    'https://flutterawesome.com/tag/widgets/',
    [
    ],
    Icons.question_mark,
  ),*/];