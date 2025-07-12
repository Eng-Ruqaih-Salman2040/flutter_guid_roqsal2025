import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../myApp_Data_Settings_roq/constants.dart';
import '../../myApp_Data_Settings_roq/thems_roq.dart';
import 'demosUI_roq.dart';

///////////////////////// Firbase UI ///////////////////
class firImage_Roq extends StatelessWidget {
  const firImage_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemofirUI_Roq(indexDemo: "ImageShar_Cloufir");
  }
}


class firTodo_Roq extends StatelessWidget {
  const firTodo_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemofirUI_Roq(indexDemo: "Todofir");
  }
}

class fir_Auth_Roq extends StatelessWidget {
  const fir_Auth_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemofirUI_Roq(indexDemo: "Authfir");
  }
}



//////////////////////////////////////////////////////////
class DemofirUI_Roq extends StatefulWidget {
  @override
  State<DemofirUI_Roq> createState() => DemofirUI_RoqState();

  //const DemoUI_Roq({super.key});

  final String indexDemo;

  const DemofirUI_Roq( {super.key, required this.indexDemo});
}
class DemofirUI_RoqState extends State<DemofirUI_Roq> {
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
    indexDemo_roq = domeobj_fir
        .indexWhere(((demoName_roq) => demoName_roq.demoproSh == index1_title));
    //.indexWhere(((demoName) => book.id == 'b4'));
    if (indexDemo_roq != -1) {
      print('Indexxxxxxx: $indexDemo_roq');
      print('Titleeeeeeee: ${domeobj_fir[indexDemo_roq].demoproSh}');
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
                                              domeobj_fir[indexDemo_roq].images!,

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
                                                                "${domeobj_fir[indexDemo_roq].readmore}");
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
                                                                  "${domeobj_fir[indexDemo_roq].sourceCode}");
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


List<DomePro> domeobj_fir = [
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
  ), //5

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
  ), //4
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
  ),  //1//

];
