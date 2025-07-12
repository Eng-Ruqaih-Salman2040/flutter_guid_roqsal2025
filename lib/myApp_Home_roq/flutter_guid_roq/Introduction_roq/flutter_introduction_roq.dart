import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/moduleClasses_roq.dart';
import '../../../myApp_adapter_roq/production_roq.dart';
class Flutter_Intron_Roq extends StatelessWidget {
  const Flutter_Intron_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
        Title:"Flutter Intro",
        // BackRoute:"/Advanced9",
        // NextRoute:"/Production_App_Icon",
        ItemList:FlutterIntroCompList);
  }
}
///////////////////////////////////////
class Dart_Intron_Roq extends StatelessWidget {
  const Dart_Intron_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
        Title:"Dart Intro",
        // BackRoute:"/Advanced9",
        // NextRoute:"/Production_App_Icon",
        ItemList:DartIntroCompList);
  }
  }

/////////////////////////////////////////
class Flutter_Use_Roq extends StatelessWidget {
  const Flutter_Use_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return CmpIntroPage(
        Title:"Flutter Use",
        // BackRoute:"/Advanced9",
        // NextRoute:"/Production_App_Icon",
        ItemList:FlutterUseIntroCompList);
  }
}


