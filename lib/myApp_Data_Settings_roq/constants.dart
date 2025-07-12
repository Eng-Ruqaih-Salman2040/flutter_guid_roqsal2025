import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';

//import 'package:firebase_analytics/firebase_analytics.dart';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../myApp_MainUI_roq/my_app_routes.dart';
import '../myApp_MainUI_roq/my_route.dart';
import 'moduleClasses_roq.dart';


// ignore_for_file: constant_identifier_names

// *Note*: when APP_VERSION is changed, remember to also update pubspec.yaml.
const String APP_VERSION = 'v1.0.0';
const String APP_NAME = 'Flutter Guide';
final Image kAppIcon =
//Image.asset('assets/images/flutter_logoRoq.jpeg', height: 64.0, width: 64.0,fit:BoxFit.cover,);
Image.asset('assets/images/dartIcon5.png', height: 64.0, width: 64.0,fit:BoxFit.cover,);
final Image kAppIcondark =
Image.asset('assets/images/dartIcon10.jpg', height: 64.0, width: 64.0,fit:BoxFit.cover,);

const String APP_DESCRIPTION = 'Best tutorial app for learning the core and advanced concepts in Dart programming language with syntax highlight, exercises and quiz.'
    '\n\nDeveloped by Eng:Ruqaih Salman';
const String GOOGLEPLAY_URL =
    'https://play.google.com/store/apps/details?id=io.github.x_wei.flutter_catalog';
const GITHUB_URL = 'https://github.com/X-Wei/flutter_catalog';
const AUTHOR_SITE = 'http://x-wei.github.io';


////////////////////////////////////////// Update in Catalog App 2023 ////////////////////////////
final kPlatformType = getCurrentPlatformType();
// Whether the app is running on mobile phones (Android/iOS)
final kIsOnMobile =
{PlatformType.Android, PlatformType.iOS}.contains(kPlatformType);

final kIsMobileOrWeb = kIsWeb ||
    defaultTargetPlatform == TargetPlatform.iOS ||
    defaultTargetPlatform == TargetPlatform.android;

//final kAnalytics = kIsMobileOrWeb ? FirebaseAnalytics.instance : null;

/// ! Adapted from https://www.flutterclutter.dev/flutter/tutorials/how-to-detect-what-platform-a-flutter-app-is-running-on/2020/127/
enum PlatformType { Web, iOS, Android, MacOS, Fuchsia, Linux, Windows, Unknown }

PlatformType getCurrentPlatformType() {
  // ! `Platform` is not available on web, so we must check web first.
  if (kIsWeb) {
    return PlatformType.Web;
  }

  if (Platform.isMacOS) {
    return PlatformType.MacOS;
  }

  if (Platform.isFuchsia) {
    return PlatformType.Fuchsia;
  }

  if (Platform.isLinux) {
    return PlatformType.Linux;
  }

  if (Platform.isWindows) {
    return PlatformType.Windows;
  }

  if (Platform.isIOS) {
    return PlatformType.iOS;
  }

  if (Platform.isAndroid) {
    return PlatformType.Android;
  }

  return PlatformType.Unknown;
}

/////////////////////////////////////Routes Paths////////////////
///////////////////////////////////// lists of source code of Files Paths
/*const List<String>sourceFilePath_roq=<String>[
  'lib/routes/Flutter_routes_roq/Flutter_Baisc_Widget_roq',];*/

///////////////////////////////// Guid Path routs  ////////////////
const String allGuid_route='lib/myApp_Home_roq/flutter_guid_roq';
const String layoutSingl_routs = '$allGuid_route/LayoutSingle_roq';
const String layoutMulti_routs = '$allGuid_route/LayoutMulti_roq';
const String text_routs = '$allGuid_route/Text_Widgets_roq';
const String input_OneInfo_routs = '$allGuid_route/InputOne_Widgets_roq';
const String input_BySelection_routs = '$allGuid_route/InputByselect_Widgets_roq';
const String buttons_routs = '$allGuid_route/buttons_roq';
const String infoDisplay_routs = '$allGuid_route/InfoShow_Widgets_roq';
const String paint_routs = '$allGuid_route/Paint_and_Efect_Widgets_roq';
const String scrolling_roq_routs = '$allGuid_route/Scrolling_roq';
const String styling_roq_routs = '$allGuid_route/Styling_roq';
const String touchInteraction_roq_routs = '$allGuid_route/touchInteraction_roq';
const String icon_images_roq_routs = '$allGuid_route/icon_images_roq';
const String lists_roq_routs = '$allGuid_route/Lists_roq';
const String Appbar_Widgets_roq_routs = '$allGuid_route/Appbar_Widgets_roq';
const String Navigation_roq_routs = '$allGuid_route/Navigation_roq';
const String Async_roq_routs = '$allGuid_route/Async_roq';
const String Persistence_roq_routs = '$allGuid_route/Persistence_roq';

const String State_Management_roq_routs = '$allGuid_route/State_Management_roq';
const String Chart_roq_routs = '$allGuid_route/Chart_roq';
const String Networking_roq_routs = '$allGuid_route/Networking_roq';
const String Firebase_roq_routs = '$allGuid_route/Firebase_roq';
const String Production_roq_routs = '$allGuid_route/Production_roq';
const String More_Widget_roq_routs = '$allGuid_route/More_Widget_roq';
const String Animation_roq = '$allGuid_route/Animation_roq';
const String Plugins_roq = '$allGuid_route/Plugins_roq';
const String Chart_roq='$allGuid_route/Chart_roq';
const String Networking_roq='$allGuid_route/Networking_roq';
const String emptyCode_roq_routs = '';
const String State_Management_roq='$allGuid_route/State_Management_roq';









const String F_More_Widget_routs = 'lib/routes/Flutter_routes_roq/Flutter_More_Widget_roq';
const String F_Layout_Widget_routs= 'lib/routes/Flutter_routes_roq/Flutter_Layout_Widgets_roq';
const String F_Lists_Widget_routes= 'lib/routes/Flutter_routes_roq/Lists_roq';

const String F_Appbar_Widget_routes= 'lib/routes/Flutter_routes_roq/Flutter_Appbar_Widgets_roq';
const String F_Navigation_routs= 'lib/routes/Flutter_routes_roq/Navigation_roq';
const String F_Persistence_routs= 'lib/routes/Flutter_routes_roq/Persistence_roq';
const String F_Network_routs= 'lib/routes/Flutter_routes_roq/Networking_roq';
///////////////////////////////// Root Animation Path routs  ////////////////
///////////////////////////// Animation  Overview Dir routes////////////////
const String Anim_Animation_Baisc_routs= 'lib/routes/Animation_routes_roq/Anim_Animation_Baisc_roq';
const String Anim_Animation_Implicit_routs= 'lib/routes/Animation_routes_roq/Anim_Implicit_Animation_roq';
const String Anim_Animation_Explicit_routs= 'lib/routes/Animation_routes_roq/Anim_Explicit_Animation_Roq';
const String Anim_Animation_DrawPkg_routs= 'lib/routes/Animation_routes_roq/Anim_Animation_Baisc_roq/Anim_Drawing_Pkg_roq';
///////////////////////////// Animation  Widgets Dir routes////////////////
const String AnimIcon_routs='lib/routes/Animation_routes_roq/Anim_Icon_Animation_roq';
const String AnimLoop_routs='lib/routes/Animation_routes_roq/Anim_Loop_Animation_roq';
const String AnimPageTransition_routs='lib/routes/Animation_routes_roq/Anim_Page_TransitionAnimatio_roq';
const String AnimButton_routs='lib/routes/Animation_routes_roq/Anim_Button_Animatio_roq';
const String AnimListView_routs='lib/routes/Animation_routes_roq/Anim_ListView_Animation_roq';
const String AnimGridView_routs='lib/routes/Animation_routes_roq/Anim_GridView_Animation_roq';
const String AnimBackground_routs='lib/routes/Animation_routes_roq/Anim_Background_Animation_roq';
const String AnimText_routs='lib/routes/Animation_routes_roq/Anim_Text_Animation_roq';
const String AnimSplash_routs='lib/routes/Animation_routes_roq/Anim_Splash_Animation_roq';
const String AnimCustomPainter_routs='lib/routes/Animation_routes_roq/Anim_Custom_painter_Animation_roq';
const String AnimUILoginDesign_routs='lib/routes/Animation_routes_roq/Anim_UI_LoginDesign_Animation_roq';
const String AnimUI_HomeDes_routs='lib/routes/Animation_routes_roq/Anim_UI_HomePage_roq';
const String AnimBottomNaviaBar_routs='lib/routes/Animation_routes_roq/Anim_BottomNavigBar_Animation_roq';
const String AnimNaviaDrawer_routs='lib/routes/Animation_routes_roq/Anim_NaviDrawer_Animation_roq';
const String AnimOther_routs='lib/routes/Animation_routes_roq/Anim_Other_Animation_roq';
const String AnimSwitch_routs='lib/routes/Animation_routes_roq/Anim_Switch_Animation_roq';
const String AnimCard_routs='lib/routes/Animation_routes_roq/Anim_Cards_Animation_roq';
const String AnimExpnad_routs='lib/routes/Animation_routes_roq/Anim_Expand_Widget_roq';
const String AnimGravity_routs='lib/routes/Animation_routes_roq/Anim_Gavity__Animation_roq';

//////////////////////////////////////////////////////////////////

///////////////////////////////// Root UI Samples Path routs  ////////////////
///////////////////////////// UI Widget Samples Dir routes////////////////
const String UISamples_Grid_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_GridView_Samples_roq';
const String UISamples_List_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_ListView_Samples_roq';
const String UISamples_Menu_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Menu_Samples_roq';
const String UISamples_Picker_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Pickers_Samples_roq';
const String UISamples_Bottomsh_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_BottomSheet_Samples_roq';
const String UISamples_BotNav_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_BottomNavigation_Samples_roq';
const String UISamples_Card_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Card_Samples_roq';
///////////////////////////////////////////////
const String UISamples_Chips_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Chips_Samples_roq';
const String UISamples_Expand_routs= 'lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Expand_Samples_roq';
const String UISamples_Form_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Form_Samples_roq';
const String UISamples_Progress_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Progress_Samples_roq';
const String UISamples_Dialog_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Dialogs_Samples_roq';

///////////////////////////////////////////////
const String UISamples_Stepper_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Steppers_Samples_roq';
const String UISamples_Tap_routs= 'lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Tabs_Samples_roq';
const String UISamples_Toolbar_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Toolbars_Samples_roq';
const String UISamples_Button_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Widget_Samples_roq/UI_Buttons_Samples_roq';
///////////////////////////////////////////////UI Screen Samples Routs ///////////////
const String UIScreen_About_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_About_Samples_roq';
const String UIScreen_Artical_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Artical_Samples_roq';
const String UIScreen_Chat_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Chat_Samples_roq';
const String UIScreen_Dashborad_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Dashboard_Samples_roq';
const String UIScreen_Intro_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Intro_Samples_roq';
const String UIScreen_Login_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Login_Samples_roq';
const String UIScreen_Noitem_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_NoItem_Samples_roq';
const String UIScreen_Payment_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Payment_Samples_roq';
const String UIScreen_Player_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Player_Samples_roq';
const String UIScreen_Profile_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Profile_Samples_roq';
const String UIScreen_Search_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Search_Samples_roq';
const String UIScreen_Setting_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Setting_Samples_roq';
const String UIScreen_Shop_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Shopping_Samples_roq';
const String UIScreen_SliderImage_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_SliderImage_Samples_roq';
const String UIScreen_Timeline_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_TimeLine_Samples_roq';
const String UIScreen_Verification_routs='lib/routes/Flutter_UI_Samples_routes_roq/UI_Screen_Samples_roq/UI_Verification_Samples_roq';

buildText_funroq(String text_roq) {
  return
    Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          const Divider( thickness: 2,),
          Text("$text_roq",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[500],
                fontFamily: Utils_Roq.ubuntuRegularFont),
            ),
          const Divider( thickness: 2,),
        ],
      ),
    );
}
Text buildText_Content_funroq(String text_cont_roq) {
  return Text("$text_cont_roq"
    ,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.black54,
        fontSize: 14.0,
        fontStyle: FontStyle.italic,
        fontFamily: Utils_Roq.ubuntuRegularFont),
  );
}

/////////////////////////////////////////////////////////////////

/*final PlatformType kPlatformType = getCurrentPlatformType();
// Whether the app is running on mobile phones (Android/iOS)
final bool kIsOnMobile = {PlatformType.Android, PlatformType.iOS}.contains(kPlatformType);

/// ! Adapted from https://www.flutterclutter.dev/flutter/tutorials/how-to-detect-what-platform-a-flutter-app-is-running-on/2020/127/
enum PlatformType { Web, iOS, Android, MacOS, Fuchsia, Linux, Windows, Unknown }

PlatformType getCurrentPlatformType() {
  // ! `Platform` is not available on web, so we must check web first.
  if (kIsWeb) {
    return PlatformType.Web;
  }

  if (Platform.isMacOS) {
    return PlatformType.MacOS;
  }

  if (Platform.isFuchsia) {
    return PlatformType.Fuchsia;
  }

  if (Platform.isLinux) {
    return PlatformType.Linux;
  }

  if (Platform.isWindows) {
    return PlatformType.Windows;
  }

  if (Platform.isIOS) {
    return PlatformType.iOS;
  }

  if (Platform.isAndroid) {
    return PlatformType.Android;
  }

  return PlatformType.Unknown;
}*/
///////////////////////////// Utils_Roq Class ///////////


class Utils_Roq {
  ///Method to get a random color
  static getRandomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);

  static List<Color> buttonGradient = [Colors.cyan.shade600, Colors.blue.shade600];

  //routes

  //fonts
  static const String ubuntuFont = "Ubuntu";
  static const String crimsonFont = "Crimson";
  static const String ubuntuRegularFont = "Ubuntu-Regular.ttf";
  static const String crimsonRegularFont = "CrimsonText-Regular.ttf";

//descriptions
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


}

///////////////////////////////  About Dummey Class==> More app
class Wizerd_myApps {

  late String image;
  late String background;
  late String title;
  late String brief_content;
  late String appUrl;
  late String App_subtitle;
  late Color color;

}

class Dummy_More_App {
  //  wizard data --------------------------------------------------------------

  static const List<String> App_title = [
    "Awesome Fluter",
    "Flutter Guide",
    "Animation Guide",
    "UI ٍSamples",
    "App Samples",
  ];
  static const List<String> App_Subtitle = [
    "Awesome tutorial comprehensive app of Flutter",
    "Flutter Guide",
    "Flutter Animation Guide",
    "Component and UI ٍSamples by Flutter",
    "Flutter App Samples",
  ];
  static const List<String> App_brief_content = [
    """ 
    Awesome  app devloped and designed for Devloper using Flutter.
    It contines many sections  to learn Dart, Flutter, Animations in flutter and many used Screens(UIs).In addition Widgets, Features,Functions, Integrations and Animations for Android devices.
After completing our Flutter training, we have presented a set of 
Flutter interview questions to prepare for Flutter job interviews.
Finally, we have presented quiz demo helps 
you to do the same. You may avail much general knowledge
 but our app helps you to improve your general knowledge easily
and fastly. Quiz Power is an android quiz app with single 
question with four answer options""",
    """
     FlutterGuide app devloped and designed for Devloper using Flutter.
    It contines many sections to learn Flutter as follows:
    - Core concepts of Flutter. 
    - Advanced concepts of Flutter .
    - Top Flutter Interview Questions and Answers.
    - Top Flutter Exercises Questions.
    - Quiz and test your Flutter skill.

    """,
    """
    Flutter Animation Guid Application will help flutter developers to understand of how flutter animation works.
FEATURES :
-- Easy way to explain.
- Flutter Multiple Animation.
- Free source code.
- Free of Cost.
- Clean and simple UI.
- Separated part for animation
    """,
    /*"""
    - Dart is open-source general-purpose programming language.

    - Understanding the core and advance programming concepts.""",
    """
    Core concepts of Dart such as storing data, conditions, loops, functions  and much more.
Advanced concepts of Dart  such as   collections, OOP , Exceptions, Null safty, Async Programming in Dart and much more.
Top Dart Interview Questions and Answers blog to assist you in preparing for your interview.
Top  Dart Exercises Questions for each concept in the Dart language
Quiz and test your dart skill.

    """*/
    """
    Flutter UI Samples app devloped and designed for Devloper using Flutter.
    It contines many ready to used Screens(UI),Widgets, Features,Functions, 
    Integrations and Animations for IOS and Android devices.
  
  """,

    """
    Flutter UI Samples are  a collection of open source samples that illustrate best practices  for Flutter. Flutter  UIs — will  help you to  kickstart your own project with one of these templates 
     or you can pick out a specific component that catches your eye.
    """,

  ];
  static const List<String> App_image = [
    "slider_2.png","slider_1.png", "slider_3.png", "slider_1.png", "slider_2.png",
  ];
  static const List<String> App_background = [
    "image_15.jpg", "image_10.jpg", "image_3.jpg", "image_12.jpg", "image_12.jpg"
  ];
  static const List<String> App_URL = [
    GOOGLEPLAY_URL, GOOGLEPLAY_URL, GOOGLEPLAY_URL, GOOGLEPLAY_URL, GOOGLEPLAY_URL
  ];

  static const List<Color> App_color = [
    Colors.red,
    Colors.blueGrey,
    Colors.purple,
    Colors.orange,
    Colors.blueAccent,
  ];


  static List<Wizerd_myApps> getMyApps() {
    List<Wizerd_myApps> App_items = [];
    for (int i = 0; i < App_title.length; i++) {
      Wizerd_myApps obj = new Wizerd_myApps();
      obj.image = App_image[i];
      obj.background = App_background[i];
      obj.title = App_title[i];
      obj.brief_content = App_brief_content[i];
      obj.color = App_color[i];
      obj.appUrl=App_URL[i];
      obj.App_subtitle=App_Subtitle[i];
      App_items.add(obj);
    }
    return App_items;
  }
}

class Constants{
  static const String POPPINS = "Poppins";
  static const String OPEN_SANS = "OpenSans";
  static const String SKIP = "Skip";
  static const String NEXT = "Next";
  static const String DONE = "Done";
  static const String SLIDER_HEADING_1 = "Welcome!";
  static const String SLIDER_HEADING_2 = "Dart Guide!";
  static const String SLIDER_HEADING_3 = "Flutter Guide";
  static const String SLIDER_HEADING_4 = "Flutter Animation Guide";
  static const String SLIDER_HEADING_5 = "Flutter Widget UI ";
  static const String SLIDER_HEADING_6 = "Flutter Apps UI ";
  static const String SLIDER_DESC = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultricies, erat vitae porta consequat.";

}
const String LandingScreen_rout_Roq='/LandingScreen_Roq',
    IMAGE_SPLASH='/ImageSplashScreen',
    VIDEO_SPALSH='/VideoSplashScreen_Roq',
    Splash_rout_Roq='/AnimatedSplashScreen',
    flutterMain_rout_Roq='/FlutterMain_Roq',
    IntroScreen_rout_Roq='/IntroScreen_Roq'
;
class IntroScr_Wizard {

  late String image;
  late String background;
  late String title;
  late String brief;
  late Color color;

}
class Dummy_IntroScr{
  //  wizard data --------------------------------------------------------------

  static const List<String> wizard_title = [
    "What Will Learn?",
    "What will be the contents?",
    "Who is the target audience?",
    "Why Will learn Dart?",
    "Requirements",
  ];
  static const List<String> wizard_brief = [
    """ 
    - Dart is open-source general-purpose programming language.
    - Understanding the core and advance programming concepts.""",
    """
    - Core concepts of Dart. 
    - Advanced concepts of Dart .
    - Top Dart Interview Questions and Answers.
    - Top Dart Exercises Questions.
    - Quiz and test your dart skill.

    """,
    /*"""
    - Dart is open-source general-purpose programming language.

    - Understanding the core and advance programming concepts.""",
    """
    Core concepts of Dart such as storing data, conditions, loops, functions  and much more.
Advanced concepts of Dart  such as   collections, OOP , Exceptions, Null safty, Async Programming in Dart and much more.
Top Dart Interview Questions and Answers blog to assist you in preparing for your interview.
Top  Dart Exercises Questions for each concept in the Dart language
Quiz and test your dart skill.

    """*/
    """
    - For absolute beginners who want to pursue a new skill and learn Flutter in the near future.
- Our app will be quite helpful for all those devlopers who want to devlope mobile applications using Dart.
- It is meant for programming with a strong hold on object-orinted concepts.
    """,
    """
    
    - Used to devlop Web applications, Android applications, and desktop applications with ease
- Used with Flutter to create web and mobile  applications .
- New in the industry, but demand is increasing day by day
    """,
    """
    - This course assumes that you have previous programming experience
- Experience in java or javaScript makes learning Dart super easy
    """,

  ];
  static const List<String> wizard_image = [
    "slider_2.png","slider_1.png", "slider_3.png", "slider_1.png", "slider_2.png",
  ];
  static const List<String> wizard_background = [
    "image_15.jpg", "image_10.jpg", "image_3.jpg", "image_12.jpg", "image_12.jpg"
  ];
  static const List<Color> wizard_color = [
    Colors.red,
    Colors.blueGrey,
    Colors.purple,
    Colors.orange,
    Colors.blueAccent,
  ];
  static List<IntroScr_Wizard> IntroScr_getWizard() {
    List<IntroScr_Wizard> items = [];
    for (int i = 0; i < wizard_title.length; i++) {
      IntroScr_Wizard obj = new IntroScr_Wizard();
      obj.image = wizard_image[i];
      obj.background = wizard_background[i];
      obj.title = wizard_title[i];
      obj.brief = wizard_brief[i];
      obj.color = wizard_color[i];
      items.add(obj);
    }
    return items;
  }
}
class MyText{

  static  TextStyle? display4(BuildContext context){
    return Theme.of(context).textTheme.displayLarge;
  }

  static TextStyle? display3(BuildContext context){
    return Theme.of(context).textTheme.titleLarge;
  }

  static TextStyle? display2(BuildContext context){
    return Theme.of(context).textTheme.displayLarge;
  }

  static TextStyle? display1(BuildContext context){
    return Theme.of(context).textTheme.displayLarge;
  }

  static TextStyle? headline(BuildContext context){
    return Theme.of(context).textTheme.displayMedium;
  }

  static TextStyle? title(BuildContext context){
    return Theme.of(context).textTheme.titleMedium;
  }

  static TextStyle? medium(BuildContext context){
    return Theme.of(context).textTheme.titleMedium?.copyWith(
      fontSize: 18,
    );
  }

  static TextStyle? subhead(BuildContext context){
    return Theme.of(context).textTheme.titleMedium;
  }

  static TextStyle? body2(BuildContext context){
    return Theme.of(context).textTheme.bodyLarge;
  }

  static TextStyle? body1(BuildContext context){
    return Theme.of(context).textTheme.bodyMedium;
  }

  static TextStyle? caption(BuildContext context){
    return Theme.of(context).textTheme.labelMedium;
  }

  static TextStyle? button(BuildContext context){
    return Theme.of(context).textTheme.titleMedium;
  }

  static TextStyle? subtitle(BuildContext context){
    return Theme.of(context).textTheme.titleMedium;
  }

  static TextStyle? overline(BuildContext context){
    return Theme.of(context).textTheme.labelSmall;
  }
}



class MyColors {

  static const Color primary = Color(0xFF1976D2);
  static const Color primaryDark = Color(0xFF1565C0);
  static const Color primaryLight = Color(0xFF1E88E5);
  static const Color accent = Color(0xFFFF4081);
  static const Color accentDark = Color(0xFFF50057);
  static const Color accentLight = Color(0xFFFF80AB);

  static const Color grey_3 = Color(0xFFf7f7f7);
  static const Color grey_5 = Color(0xFFf2f2f2);
  static const Color grey_10 = Color(0xFFe6e6e6);
  static const Color grey_20 = Color(0xFFcccccc);
  static const Color grey_40 = Color(0xFF999999);
  static const Color grey_60 = Color(0xFF666666);
  static const Color grey_80 = Color(0xFF37474F);
  static const Color grey_90 = Color(0xFF263238);
  static const Color grey_95 = Color(0xFF1a1a1a);
  static const Color grey_100_ = Color(0xFF0d0d0d);


}
/*Load image from folder assets/images/
 */
class Img {
  static String get(String name){
    return 'assets/images/'+name;
  }
}

//////////////////////////////////
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

