import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/moduleClasses_roq.dart';
import '../../../myApp_adapter_roq/production_roq.dart';

typedef void OnError(Exception exception);
class AppIcon_Roq extends StatefulWidget {
  const AppIcon_Roq({Key? key}) : super(key: key);

  @override
  _AppIcon_RoqState createState() => _AppIcon_RoqState();
}

class _AppIcon_RoqState extends State<AppIcon_Roq> {
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
        Title:"Change App Icon",
        // BackRoute:"/Advanced9",
        // NextRoute:"/Production_App_Icon",
        ItemList:Production_AppIcon_CompList);
  }
}

