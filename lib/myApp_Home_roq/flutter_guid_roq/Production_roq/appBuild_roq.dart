import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/moduleClasses_roq.dart';
import '../../../myApp_adapter_roq/production_roq.dart';

typedef void OnError(Exception exception);
class AppBuild_Roq extends StatefulWidget {
  const AppBuild_Roq({Key? key}) : super(key: key);

  @override
  _AppBuild_RoqState createState() => _AppBuild_RoqState();
}

class _AppBuild_RoqState extends State<AppBuild_Roq> {
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
        Title:" App Build",
        // BackRoute:"/Advanced9",
        // NextRoute:"/Production_App_Icon",
        ItemList:Production_AppBuild_CompList);
  }
}

