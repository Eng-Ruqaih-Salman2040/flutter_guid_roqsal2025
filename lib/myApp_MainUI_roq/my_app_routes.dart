// This file declares routes of this app, in particular it declares the
// "structure" of the group of example routes, in a const List<Tuple2> object.
// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';

import '../myApp_Home_roq/flutter_guid_roq/More_Widget_roq/F_W_Timer_roq.dart';

import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_W_RatingBar_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Production_roq/appIcon_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Scrolling_roq/nestedScroll_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Scrolling_roq/refreshindicator_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/State_Management_roq/state_bloc_lib_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/State_Management_roq/state_bloc_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/State_Management_roq/state_inherited_widget_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/State_Management_roq/state_provider_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/F_M_Draggable_roq.dart';

///import '../Update_Roq.dart';
import '../myApp_Data_Settings_roq/constants.dart';

import '../myApp_Home_roq/flutter_demo_roq/UIappDemos_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/firbaseDemos1_2_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/firbaseDemos2_1_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/firbaseDemos2_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/firbaseDemos_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/gameDemos_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/more_demos_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/projectsDemos_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/templateDemos1_2_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/templateDemos_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/temple_bank_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/templeteDemoes2_roq.dart';
import '../myApp_Home_roq/flutter_demo_roq/widgetDemos_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Animation_roq/animation_animated_container_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Animation_roq/animation_animated_icons_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Animation_roq/animation_animations_pkg_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Animation_roq/animation_hero_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Animation_roq/animation_opacity_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Appbar_Widgets_roq/F_AppBar_Backdrop_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Appbar_Widgets_roq/F_AppBar_Baisc_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Appbar_Widgets_roq/F_AppBar_Banner_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Appbar_Widgets_roq/F_AppBar_Bottom_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Appbar_Widgets_roq/F_AppBar_Convex_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Appbar_Widgets_roq/F_AppBar_Search_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Appbar_Widgets_roq/F_AppBar_Sliver_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Appbar_Widgets_roq/F_AppBar_Tabs_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Async_roq/async_futurebuilder_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Async_roq/async_streambuilder_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Async_roq/async_streamcontroller_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_Buttons_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_Checkbox_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_Dropdown_Buttons_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_PupMenu_Button_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_Radio_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_Selectable_Text_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_Slider_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_Switch_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_TextFiled_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_TextForm_Field_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Baisc_Widget_roq/F_W_TextRich_roq.dart';

import '../myApp_Home_roq/flutter_guid_roq/Chart_roq/charts_fl_bar_chart_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Chart_roq/charts_fl_line_chart_roq.dart';

import '../myApp_Home_roq/flutter_guid_roq/Chart_roq/charts_pie_chart_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Chart_roq/charts_radar_chart_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Chart_roq/charts_time_series_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/InfoShow_Widgets_roq/F_M_Action_Chip_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/More_Widget_roq/F_M_Builder_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/More_Widget_roq/F_M_Expansion_Padding_List_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Navi_Examples_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Networking_roq/networking_chatgpt_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Networking_roq/networking_rest_api_fetch_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Networking_roq/networking_rest_api_send_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_ClipPoard_roq.dart';

import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_CustomSwitch_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_Custom_Clippers_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_FlipCard_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_Markdown_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_Progressive_Image_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_Quick_Actions_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_Shimmer_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_SliderButton_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Plugins_roq/F_M_WebView_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/F_M_Input_Chip_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/InfoShow_Widgets_roq/F_M_Stepper_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/InfoShow_Widgets_roq/F_W_Card_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/InfoShow_Widgets_roq/F_W_CircularProgressIndicator_roq.dart';

import '../myApp_Home_roq/flutter_guid_roq/InfoShow_Widgets_roq/F_W_LinearProgressIndicator_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/InfoShow_Widgets_roq/F_W_SnackBar_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/InfoShow_Widgets_roq/F_W_Toast_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/InfoShow_Widgets_roq/F_W_TollTip_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/InputByselect_Widgets_roq/F_Pickers_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Introduction_roq/flutter_introduction_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutMulti_roq/F_DataTable_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutMulti_roq/F_Lay_Column_Row_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutMulti_roq/F_Lay_IndexedStack_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutMulti_roq/F_Lay_Layout_Builder_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutMulti_roq/F_Lay_Stack_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutMulti_roq/F_Lay_Wrap_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutMulti_roq/F_Table_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_Align_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_AspectRatio_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_ConstrintBox_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_Continer_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_Expanded_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_FittedBox_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_Flexible_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_Fracionally_SizeBox_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_LimitedBox_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_Padding_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_Positioned_Widget_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/LayoutSingle_roq/F_Lay_SizedBox_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_Dismissiable_List_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_DynamicList_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_ExpansionPanel_Roq_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_ExpansionTile_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_GridView_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_ListTile_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_ListView_builder_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_ListView_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_ListWhel_ScrollView_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_ReorderableListView_roq.dart';

import '../myApp_Home_roq/flutter_guid_roq/Lists_roq/F_Sliver_List_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/More_Widget_roq/F_M_Autocomplet_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/More_Widget_roq/F_M_FloatingActionButton_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/More_Widget_roq/F_M_PlaceHolder_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/More_Widget_roq/F_M_ToggleButtons_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Multimedia_roq/ImagePicker_MultiSelect_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Multimedia_roq/imagepicker_OneSele_roq.dart';

import '../myApp_Home_roq/flutter_guid_roq/Multimedia_roq/multimedia_extended_image_ex.dart';

import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Nav_Drawer_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Nav_PageView_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Nav_Page_Selector_Naviroq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Nav_draggable_scrollable_sheet_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Navi_BottomNavigationBar_Naviroq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Navi_BottomSheet_Naviroq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Navi_Open_new_screen_and_Send_Data_w1_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Navi_Open_new_screen_and_back_w1_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Navi_Will_pop_scop_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Navigation_Rail_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Navigation_roq/F_Return_data_from_screen_w1_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Networking_roq/F_Net_Google_Books_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/F_M_Absorb_Pointer_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_Backdrop_Filter_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_Circle_Avatar_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_ClipOval_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_ClipPath_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_ClipRect_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_Color_Filter_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_Custom_Paint_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_Filter_Chip_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/F_M_Ignore_Pointer_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_Notivication_Listener_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_Physics_Model_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_RoatatedBox_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_SafeArea_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_Sematic_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_ShaderMask_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Paint_and_Efect_Widgets_roq/F_M_Transform_roq.dart';

import '../myApp_Home_roq/flutter_guid_roq/Persistence_roq/F_Pres_File_RW_internal_Stor_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Persistence_roq/F_Pres_Hive_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Persistence_roq/F_Pres_RW_File_assets_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Persistence_roq/F_Pres_SQLite_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Persistence_roq/F_Pres_Sambast_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Persistence_roq/F_Pres_SharedPrefernce_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Production_roq/appBuild_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Production_roq/appName_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Production_roq/appSign_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Scrolling_roq/F_M_Single_Child_Scrollview_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Scrolling_roq/customeScrollView_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Scrolling_roq/notivicationScroll_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Scrolling_roq/scrollConfigu_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Scrolling_roq/scrollControl_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Scrolling_roq/scrollable_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Scrolling_roq/scrollbar_Roq.dart';

import '../myApp_Home_roq/flutter_guid_roq/Styling_roq/F_M_Media_Query_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Styling_roq/F_M_Vertical_Divider_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Styling_roq/F_W_Divider_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Styling_roq/F_W_Spacer_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Text_Widgets_roq/F_W_Text_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/Text_Widgets_roq/F_W_defultTextStyle_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/icon_images_roq/F_W_Icone_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/icon_images_roq/F_W_Image_Filtered_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/icon_images_roq/F_W_Image_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/F_M_Interactive_Viewer_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/F_M_Mouse_Region_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/F_W_Gesture_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/dragTarget_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/dragable_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/listener_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/longPressDraggable_roq.dart';
import '../myApp_Home_roq/flutter_guid_roq/touchInteraction_roq/scrollable_roq.dart';


import 'about.dart';
///////////////////////////////////////////////////////////////////

import 'home_page.dart';
import 'my_route.dart';

///////////////////////////////////////
const MyRoute kHomeRoute = MyRoute(
  sourceFilePath: 'lib/myApp_MainUI_roq/about.dart',
  title: APP_NAME,
  routeName: Navigator.defaultRouteName,
  child: MyHomePage(),
);

const MyRoute kAboutRoute = MyRoute(
  sourceFilePath: 'lib/routes/about.dart',
  title: 'About',
  links: {'Doc': 'https://docs.flutter.dev/development/ui/widgets/material'},
  child: MyAboutRoute(),
);

class MyRouteGroup {
  const MyRouteGroup(
      {required this.groupName, required this.icon, required this.routes});

  final String groupName;
  final Widget icon;
  final List<MyRoute> routes;
}

/////////////////////////////////////////////////////////////////
//const List<MyRouteGroup> kMyAppRoutesBasic = <MyRouteGroup>[];

const List<MyRouteGroup> kMyAppRoutesBasic = <MyRouteGroup>[
  /////////////////////////// Flutter Introduction
  MyRouteGroup(
    groupName: 'Introduction',
    icon: Icon(Icons.first_page),
    routes: <MyRoute>[
      MyRoute(
        child: Flutter_Intron_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Introduction_roq/flutter_introduction_roq.dart',
        title: 'Flutter Intro',
      ),
      MyRoute(
        child: Dart_Intron_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Introduction_roq/flutter_introduction_roq.dart',
        title: 'Dart Intro',
        links: {'Dart Guide':''},
      ),
      MyRoute(
        child: Flutter_Use_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Introduction_roq/flutter_introduction_roq.dart',
        title: 'Use',
      ),
      //// ------------------------> Roq comments down
    ],
  ),
  //////////////////////////// Baisc And Keywords
  MyRouteGroup(
    groupName: ' Basic & Keywords',
    icon: Icon(Icons.vpn_key),
    routes: <MyRoute>[
      MyRoute(
        child: Key_Widgets_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'Widget',
        description: "Whate Is A Flutter Widget?",
      ),
      MyRoute(
        child: Key_Statless_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'Statless Widget',
        description: "Type of Widget",
      ),
      MyRoute(
        child: Key_Statfull_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'Statefull Widget',
        description: "Type of Widget",
      ),
      MyRoute(
        child: Key_Navigation_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'Navigation',
        description: "When Using Navigation?",
      ),
      MyRoute(
        child: Key_Scafolld_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'Scafolld',
        description: "What is Scafolld",
      ),
      MyRoute(
        child: Key_Scafolld_ResizFalse_Roq(),
        sourceFilePath:
        'lib/myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'Scafolld',
        description: "resizeToAvoidBottomPadding false",
      ),
      MyRoute(
        child: Key_Scafolld_ResizTrue_Roq(),
        sourceFilePath:
        'lib/myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'Scafolld',
        description: "resizeToAvoidBottomPadding True",
      ),

      MyRoute(
        child: Key_AppBar_Roq(),
        sourceFilePath:
            'lib/routes/Flutter_routes_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'Appbar',
          description:"What is AppBar?"

      ),
      MyRoute(
        child: Key_MaterialApp_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'MaterialApp',
          description:"What is MaterialApp?"
      ),
      MyRoute(
        child: Key_MaterialApp_Title_Theme_Roq(),
        sourceFilePath:
            'lib/myApp_Home_roq/flutter_guid_roq/Keywords_roq/flutter_keywords_roq.dart',
        title: 'MaterialApp Title & Theme',
        description: "MaterialApp Title and  Theme",
      ),
      MyRoute(
        child: Placeholder_Roq(),
        sourceFilePath: '${More_Widget_roq_routs}/F_M_PlaceHolder_roq.dart',
        title: 'Placeholder',
      ),
    ],
  ),
  /////////////////////////Single-child Layout Widget Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Single-child Layouts',
    icon: Icon(Icons.dashboard),
    routes: <MyRoute>[
      MyRoute(
        child: Container_Widget_roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_Continer_roq.dart',

        title: 'Container',
        description: 'Single child Layouts widgets for layout.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Container-class.html',
        },
      ),
      MyRoute(
        child: Felxible_Widgrt_roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_Flexible_roq.dart',
        title: 'Felxible',
        description: 'Wrap to the next row/column when run out of room.',
        links: {
          "Youtube video": "https://www.youtube.com/watch?v=z5iw2SeFx2M",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Wrap-class.html',
        },
      ),
      MyRoute(
        child: FractionallySizedBox_Widget_roq(),
        sourceFilePath:
            '${layoutSingl_routs}/F_Lay_Fracionally_SizeBox_roq.dart',
        title: 'FractionallySizedBox',
        description:
            'Sizing widgets to a fraction of the total available space.',
        links: {"Youtube video": "https://youtu.be/PEsY654EGZ0"},
      ),
      MyRoute(
        child: AspectRatio_Widget_roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_AspectRatio_roq.dart',
        title: 'AspectRatio',
        description: '',
        links: {
          'Doc': '',
          'Youtube video': '',
        },
      ),
      MyRoute(
        child: Align_Widget_roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_Align_roq.dart',
        title: 'Align',
        description: '',
        links: {
          'Doc': '',
          'Youtube video': '',
        },
      ),
      MyRoute(
        child: Expanded_Widget_roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_Expanded_roq.dart',
        title: 'Expanded',
        description: 'Dividing space by "weights" (flex).',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Expanded-class.html',
          'Youtube video':
              'https://www.youtube.com/watch?v=RJEnTRBxaSg&t=1072s',
        },
      ),

      MyRoute(
        child: FittedBox_Widget_Roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_FittedBox_roq.dart',
        title: 'FittedBox',
        description: '.',
        links: {
          "Youtube video": "",
          'Doc': '',
        },
      ),

      MyRoute(
        child: ConstrainedBox_Widget_Roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_ConstrintBox_roq.dart',
        title: 'ConstrainedBox',
        description: '.',
        links: {
          "Youtube video": "",
          'Doc': '',
        },
      ),
      MyRoute(
        child: LimitedBox_Widget_Roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_LimitedBox_roq.dart',
        title: 'LimitedBox',
        description: '.',
        links: {
          "Youtube video": "",
          'Doc': '',
        },
      ),
      MyRoute(
        child: SizedBox_Widget_Roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_SizedBox_roq.dart',
        title: 'SizedBox',
        description: '.',
        links: {
          "Youtube video": "",
          'Doc': '',
        },
      ),
      MyRoute(
        child: Padding_Widget_Roq(),
        sourceFilePath: '${layoutSingl_routs}/F_Lay_Padding_roq.dart',
        title: 'Padding',
        description: '.',
        links: {
          "Youtube video": "",
          'Doc': '',
        },
      ),

      // TODO TableExample(),
    ],
  ),
  /////////////////////////Multi-child Layout Widget Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Multi-child Layouts',
    icon: Icon(Icons.dashboard),
    routes: <MyRoute>[
      MyRoute(
        child: Column_Row_Widgets_roq(),
        sourceFilePath: '${layoutMulti_routs}/F_Lay_Column_Row_roq.dart',
        title: 'Row, Column',
        description: 'Align chidren widgets linearly.',
        links: {
          "Youtube video": "https://www.youtube.com/watch?v=RJEnTRBxaSg&t=75s",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Row-class.html',
        },
      ),
      MyRoute(
        child: Wrap_Widget_roq(),
        sourceFilePath: '${layoutMulti_routs}/F_Lay_Wrap_roq.dart',
        title: 'Wrap',
        description: 'Wrap to the next row/column when run out of room.',
        links: {
          "Youtube video": "https://www.youtube.com/watch?v=z5iw2SeFx2M",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Wrap-class.html',
        },
      ),
      MyRoute(
        child: Stack_Widget_roq(),
        sourceFilePath: '${layoutMulti_routs}/F_Lay_Stack_roq.dart',
        title: 'Stack',
        description: 'Putting widget on top of another.',
        links: {
          "Youtube video":
              "https://www.youtube.com/watch?v=RJEnTRBxaSg&t=1072s",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Stack-class.html',
        },
      ),
      MyRoute(
        child: IndexedStack_Widget_roq(),
        sourceFilePath: '${layoutMulti_routs}/F_Lay_IndexedStack_roq.dart',
        title: 'IndexedStack',
        description: '.',
        links: {
          "Youtube video":
              "https://www.youtube.com/watch?v=RJEnTRBxaSg&t=1072s",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Stack-class.html',
        },
      ),
      MyRoute(
        child: LayoutBuilder_Widget_roq(),
        sourceFilePath:
            '${layoutMulti_routs}/F_Lay_Layout_Builder_roq.dart',
        title: 'LayoutBuilder',
        description: '.',
        links: {
          "Youtube video": "",
          'Doc': '',
        },
      ),
      MyRoute(
        child: Positioned_Widget_roq(),
        sourceFilePath:
            '${layoutMulti_routs}/F_Lay_Positioned_Widget_roq.dart',
        title: 'Positioned',
        description: 'Used with  Stack widget',
        links: {
          "Youtube video": "",
          'Doc': '',
        },
      ),
      MyRoute(
        child: Table_Widget_Roq(),
        sourceFilePath: '${layoutMulti_routs}/F_Table_roq.dart',
        title: 'Table',
        description: 'Showing data in a table.',
        links: {
          'Docs':
              'https://docs.flutter.io/flutter/material/PaginatedTable-class.html'
        },
      ),
      MyRoute(
        child: DataTable_Widget_Roq(),
        sourceFilePath: '${layoutMulti_routs}/F_DataTable_roq.dart',
        title: 'DataTable',
        description: 'Showing data in a table.',
        links: {
          'Docs':
              'https://docs.flutter.io/flutter/material/PaginatedDataTable-class.html'
        },
      ),

      // TODO TableExample(),
    ],
  ),
  /////////////////////////Text Widget Flutter Routes //////////////////////////
  MyRouteGroup(
      groupName: 'Text',
      icon: Icon(Icons.text_fields),
      routes: <MyRoute>[
        MyRoute(
          child: Text_Widget_roq(),
          sourceFilePath: '${text_routs}/F_W_Text_roq.dart',
          title: 'Text',
        ),
        MyRoute(
          child: SelectableText_Widget_roq(),
          sourceFilePath: '${text_routs}/F_W_Selectable_Text_roq.dart',
          title: 'SelectableText',
        ),
        MyRoute(
          child: RichText_Widget_Roq(),
          sourceFilePath: '${text_routs}/F_W_TextRich_roq.dart',
          title: 'RichText',
        ),
        MyRoute(
          child: DefaultTextStyle_Roq(),
          sourceFilePath: '${text_routs}/F_W_TextRich_roq.dart',
          title: 'Default Text Style',
        ),
      ]),
  /////////////////////////Input and Selection Widget Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Input and Selection data',
    icon: Icon(Icons.input),
    routes: <MyRoute>[
      MyRoute(
        child: TextField_Widget_roq(),
        sourceFilePath: '${input_OneInfo_routs}/F_W_TextFiled_roq.dart',
        title: 'TextField',
        description: 'Text input.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/TextField-class.html'
        },
      ),
      MyRoute(
        child: TextFormField_roq(),
        sourceFilePath: '${input_OneInfo_routs}/F_W_TextForm_Field_roq.dart',
        title: 'TextFormField',
        description: 'Convenience widget wrapping a TextField in a FormField.',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/TextFormField-class.html'
        },
      ),
      MyRoute(
        child: Switch_Widget_roq(),
        sourceFilePath: '${input_BySelection_routs}/F_W_Switch_roq.dart',
        title: 'Switch',
        description:
            'A switch is a two-state user interface element used to toggle between ON (Checked) or OFF (Unchecked) states. ',
        links: {
          'Doc': 'https://api.flutter.dev/flutter/material/Switch-class.html',
        },
      ),
      MyRoute(
        child: Radio_Widget_roq(),
        sourceFilePath: '${input_BySelection_routs}/F_W_Radio_roq.dart',
        title: 'Radio',
        description:
            'It allows the user to choose only one option from a predefined set of options. ',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/Checkbox-class.html',
        },
      ),
      MyRoute(
        child: CheckBox_Widget_roq(),
        sourceFilePath: '${input_BySelection_routs}/F_W_Checkbox_roq.dart',
        title: 'CheckBox',
        description:
            'A checkbox is a type of input component which holds the Boolean value. It is a GUI element that allows the user to choose multiple options from several selections. ',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/Checkbox-class.html',
        },
      ),
      MyRoute(
        child: Slider_Widget_roq(),
        sourceFilePath: '${input_BySelection_routs}/F_W_Slider_roq.dart',
        title: 'Slider',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/Slider-class.html'
        },
      ),
      MyRoute(
        child: Autocomplete_Roq(),
        sourceFilePath: '${More_Widget_roq_routs}/F_M_Autocomplet_roq.dart',
        title: 'Autocomplete',
      ),
    ],
  ),
  /////////////////////////Buttons Widget Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Buttons',
    icon: Icon(Icons.tab),
    routes: <MyRoute>[
      MyRoute(
        child: Buttons_Widget_roq(),
        sourceFilePath: '${buttons_routs}/F_W_Buttons_roq.dart',
        title: 'Buttons',
      ),
      MyRoute(
        child: FloatingActionButton_Roq(),
        sourceFilePath:
            '${buttons_routs}/F_M_FloatingActionButton_roq.dart',
        title: 'FloatingActionButton',
      ),
      MyRoute(
        child: ToggleButtons_Roq(),
        sourceFilePath: '${More_Widget_roq_routs}/F_M_ToggleButtons_roq.dart',
        title: 'ToggleButtons',
      ),
      MyRoute(
        child: DropdownButton_Widget_roq(),
        sourceFilePath: '${buttons_routs}/F_W_Dropdown_Buttons_roq.dart',
        title: 'DropdownButton',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/DropdownButton-class.html'
        },
      ),
      MyRoute(
        child: PopupButton_Widget_roq(),
        sourceFilePath: '${buttons_routs}/F_W_PupMenu_Button_roq.dart',
        title: 'MenuButton',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/DropdownButton-class.html'
        },
      ),
    ],
  ),
  /////////////////////////Information Display  Widget Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Information Display',
    icon: Icon(Icons.info),
    routes: <MyRoute>[
      MyRoute(
        child: Card_Widget_roq(),
        sourceFilePath: '${infoDisplay_routs}/F_W_Card_roq.dart',
        title: 'Card, Inkwell',
        description:
            'Container with corner and shadow; inkwell (ripple) effects',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/Card-class.html',
          'Inkwell': 'https://flutter.io/cookbook/gestures/ripples/',
        },
      ),
      MyRoute(
        child: LinearProgress_Widget_roq(),
        sourceFilePath:
            '${infoDisplay_routs}/F_W_LinearProgressIndicator_roq.dart',
        title: 'LinearProgress',
        links: {'Doc': ''},
      ),
      MyRoute(
        child: CircularProgressIndicator_roq(),
        sourceFilePath:
            '${infoDisplay_routs}/F_W_CircularProgressIndicator_roq.dart',
        title: 'CircularProgress',
        links: {'Doc': ''},
      ),
      MyRoute(
        child: Toast_Widget_roq(),
        sourceFilePath: '${infoDisplay_routs}/F_W_Toast_roq.dart',
        title: 'Toast',
        links: {'Doc': ''},
      ),
      MyRoute(
        child: ActionChip_Roq(),
        sourceFilePath: '${infoDisplay_routs}/F_M_Action_Chip_roq.dart',
        title: 'ActionChip',
      ),
      MyRoute(
        child: InputChip_Roq(),
        sourceFilePath: '${infoDisplay_routs}/F_M_Input_Chip_roq.dart',
        title: 'InputChip',
      ),
     /* MyRoute(
        child: Flushbar_Widget_roq(),
        sourceFilePath: '${infoDisplay_routs}/F_W_Flushbar_roq.dart',
        title: 'Flushbar',
        links: {'Doc': ''},
      ),*/
      MyRoute(
        child: SnackBar_Widget_roq(),
        sourceFilePath: '${infoDisplay_routs}/F_W_SnackBar_roq.dart',
        title: 'SnackBar',
        links: {'Doc': ''},
      ),
      MyRoute(
        child: Tooltip_Widget_roq(),
        sourceFilePath: '${infoDisplay_routs}/F_W_TollTip_roq.dart',
        title: 'Tooltip',
        links: {'Doc': ''},
      ),
      MyRoute(
        child: Steper_Roq(),
        sourceFilePath: '${infoDisplay_routs}/F_M_Stepper_roq.dart',
        title: 'Steper',
      ),
    ],
  ),
/////////////////////////Flutter Paint and Effect  Widget Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Painting & Effect',
    icon: Icon(Icons.format_paint),
    routes: <MyRoute>[

      MyRoute(
        child: BackdropFilter_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Backdrop_Filter_roq.dart',
        title: 'BackdropFilter',
      ),
      MyRoute(
        child: CircleAvatar_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Circle_Avatar_roq.dart',
        title: 'CircleAvatar',
      ),
      MyRoute(
        child: ClipOval_Roq(),
        sourceFilePath: '${paint_routs}/F_M_ClipOval_roq.dart',
        title: 'ClipOval',
      ),
      MyRoute(
        child: ClipPath_Roq(),
        sourceFilePath: '${paint_routs}/F_M_ClipPath_roq.dart',
        title: 'ClipPath',
      ),
      MyRoute(
        child: ClipRRect_Roq(),
        sourceFilePath: '${paint_routs}/F_M_ClipRect_roq.dart',
        title: 'ClipRRect',
      ),
      MyRoute(
        child: ColorFiltered_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Color_Filter_roq.dart',
        title: 'ColorFiltered',
      ),
      MyRoute(
        child: CustomPainter_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Custom_Paint_roq.dart',
        title: 'CustomPainter',
      ),
      
      MyRoute(
        child: FiltrChip_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Filter_Chip_roq.dart',
        title: 'FiltrChip',
      ),
      MyRoute(
        child: IgnorePointer_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Ignore_Pointer_roq.dart',
        title: 'IgnorePointer',
      ),
     
      MyRoute(
        child: NotificationListener_Roq(),
        sourceFilePath:
            '${paint_routs}/F_M_Notivication_Listener_roq.dart',
        title: 'NotificationListener',
      ),
      MyRoute(
        child: PhysicalModel_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Physics_Model_roq.dart',
        title: 'PhysicalModel',
      ),
      MyRoute(
        child: RoatatedBox_Roq(),
        sourceFilePath: '${paint_routs}/F_M_RoatatedBox_roq.dart',
        title: 'RoatatedBox',
      ),
      MyRoute(
        child: SafeArea_Roq(),
        sourceFilePath: '${paint_routs}/F_M_SafeArea_roq.dart',
        title: 'SafeArea',
      ),
      MyRoute(
        child: Semantics_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Sematic_roq.dart',
        title: 'Semantics',
      ),
      MyRoute(
        child: ShaderMask_Roq(),
        sourceFilePath: '${paint_routs}/F_M_ShaderMask_roq.dart',
        title: 'ShaderMask',
      ),
      MyRoute(
        child: Transform_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Transform_roq.dart',
        title: 'Transform',
      ),
    ],
  ),
////////////////////////////////////////////////////////////
/////////////////////////Scrolling Widget Flutter Routes //////////////////////////
  MyRouteGroup(
      groupName: 'Scrolling',
      icon: Icon(Icons.scale),
      routes: <MyRoute>[
        MyRoute(
          child: SCSV_Roq(),
          sourceFilePath:
              '${scrolling_roq_routs}/F_M_Single_Child_Scrollview_roq.dart',
          title: 'SingleChildScrollview',
        ),
    /*    MyRoute(
          child: SingleChildScrollView_Roq(),
          sourceFilePath:
          '${paint_routs}/F_M_Single_Child_Scrollview_roq.dart',
          title: 'SingleChildScrollview',
        ),*/
        MyRoute(
          child: CustomScrollView_Roq(),
          sourceFilePath:
              '${scrolling_roq_routs}/customeScrollView_roq.dart',
          title: 'CustomScrollView',
        ),
        MyRoute(
          child: NestedScrollView_Roq(),
          sourceFilePath:
              '${scrolling_roq_routs}/nestedScroll_roq.dart',
          title: 'NestedScrollView',
        ),
        MyRoute(
          child: NotificationListener2_Roq(),
          sourceFilePath:
          '${scrolling_roq_routs}/notivicationScroll_roq.dart',
          title: 'NotificationListener',
        ),
        MyRoute(
          child: RefreshIndicator_Roq(),
          sourceFilePath:
              '${scrolling_roq_routs}/refreshindicator_roq.dart',
          title: 'RefreshIndicator',
        ),
        MyRoute(
          child: Scrollable_Roq(),
          sourceFilePath:
              '${scrolling_roq_routs}/scrollable_roq.dart',
          title: 'Scrollable',
        ),
        MyRoute(
          child: Scrollbar_Roq(),
          sourceFilePath:
              '${scrolling_roq_routs}/scrollbar_Roq.dart',
          title: 'Scrollbar',
        ),
        MyRoute(
          child: ScrollConfiguration_Roq(),
          sourceFilePath:
              '${scrolling_roq_routs}/scrollConfigu_roq.dart',
          title: 'ScrollConfiguration',
        ),
        MyRoute(
          child: ScrollController_Roq(),
          sourceFilePath:
              '${scrolling_roq_routs}/scrollControl_roq.dart',
          title: 'ScrollController',
        ),
      ]),
////////////////////////////////////////////////////////////
/////////////////////////Styling Widget Flutter Routes //////////////////////////
  MyRouteGroup(groupName: 'Styling', icon: Icon(Icons.style), routes: <MyRoute>[
    MyRoute(
      child: Divider_widget_roq(),
      sourceFilePath: '${styling_roq_routs}/F_W_Divider_roq.dart',
      title: 'Divider',
      links: {'Doc': ''},
    ),
    MyRoute(
      child: Spacer_Widget_roq(),
      sourceFilePath: '${styling_roq_routs}/F_W_Spacer_roq.dart',
      title: 'Spacer',
      links: {'Doc': ''},
    ),
    MyRoute(
      child: MediaQuery_Roq(),
      sourceFilePath: '${styling_roq_routs}/F_M_Media_Query_roq.dart',
      title: 'MediaQuery',
    ),


    MyRoute(
      child: VerticalDivider_Roq(),
      sourceFilePath: '${styling_roq_routs}/F_M_Vertical_Divider_roq.dart',
      title: 'VerticalDivider',
    ),
  ]),
////////////////////////////////////////////////////////////
/////////////////////////Touch Interaction Widget Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Touch Interaction',
    icon: Icon(Icons.touch_app),
    routes: <MyRoute>[
      MyRoute(
        child: GestureDetector_Widget_roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/F_W_Gesture_roq.dart',
        title: 'Gesture',
        links: {
          'Doc': 'https://docs.flutter.dev/development/ui/advanced/gestures'
        },
      ),
      MyRoute(
        child: IntractiveViewer_Roq(),
        sourceFilePath:
            '${touchInteraction_roq_routs}/F_M_Interactive_Viewer_roq.dart',
        title: 'IntractiveViewer',
      ),
      MyRoute(
        child: InputChip_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/F_M_Input_Chip_roq.dart',
        title: 'InputChip',
      ),

      MyRoute(
        child: AbsorbPointer_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/F_M_Absorb_Pointer_roq.dart',
        title: 'AbsorbPointer',
      ),
      MyRoute(
        child: Draggable_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/dragable_roq.dart',
        title: 'Draggable',
      ),
      MyRoute(
        child: DragTarget_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/dragTarget_roq.dart',
        title: 'DragTarget',
      ),
      MyRoute(
        child: Draggable_Target_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/F_M_Draggable_roq.dart',
        title: 'Draggable & DaragTarget',
      ),
      MyRoute(
        child: IgnorePointer_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/F_M_Ignore_Pointer_roq.dart',
        title: 'IgnorePointer',
      ),

      MyRoute(
        child:  Scrollable_T_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/scrollable_roq.dart',
        title: ' Scrollable',
      ),
      MyRoute(
        child:  MouseRegion_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/F_M_Mouse_Region_roq.dart',
        title: ' MouseRegion',
      ),
      MyRoute(
        child:  Listener_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/listener_roq.dart',
        title: ' Listener',
      ),
      MyRoute(
        child:  LongPressDraggableMain_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/longPressDraggable_roq.dart',
        title: ' LongPressDraggable',
      ),
      MyRoute(
        child:  WillPopScope_Roq(),
        sourceFilePath: '${touchInteraction_roq_routs}/WillPopScop_roq.dart',
        title: ' WillPopScope',
      ),


    ],
  ),

///////////////////////Icons & Images
  MyRouteGroup(
    groupName: 'Icons & Images',
    icon: Icon(Icons.image),
    routes: <MyRoute>[
      MyRoute(
        child: Icon_widget_roq(),
        sourceFilePath: '${icon_images_roq_routs}/F_W_Icone_roq.dart',
        title: 'Icon',
      ),
      //2025 Begine <-----------------------------------------------------
    /*  MyRoute(
        sourceFilePath: '${icon_images_roq_routs}/F_W_Image_roq.dart',
        title: 'Image',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Image-class.html'
        },
        child: Image_Widget_roq(),
      ),*/
      //2025 End <-----------------------------------------------------
      MyRoute(
        child: ImageFiltered_Widget_roq(),
        sourceFilePath: '${icon_images_roq_routs}/F_W_Image_Filtered_roq.dart',
        title: 'ImageFiltered',
        description: 'Adding blur or transformation to widgets.',
        links: {'Youtube video': 'https://youtu.be/7Lftorq4i2o'},
      ),
     
    ],
  ),
  //////////////////////////////////////// More Useful Widgets ////////////////////////////////////////////
  MyRouteGroup(
    groupName: 'Other useful widget',
    icon: Icon(Icons.format_paint),
    routes: <MyRoute>[

      MyRoute(
        child: Builder_Roq(),
        sourceFilePath: '${More_Widget_roq_routs}/F_M_Builder_roq.dart',
        title: 'Builder',
      ),
      MyRoute(
        child: Timer_Widget_roq(),
        sourceFilePath: '${More_Widget_roq_routs}/F_W_Timer_roq.dart',
        title: 'Timer',
        links: {'Doc': ''},
      ),

    
      MyRoute(
        child: ExpansionPanelList_Roq(),
        sourceFilePath:
            '${More_Widget_roq_routs}/F_M_Expansion_Padding_List_roq.dart',
        title: 'ExpansionPanelList',
      ), //========>
     
    


      
    ],
  ),
  //====>Rest  More
  //////---------------------------------

  /////////////////////////List Widgets Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Lists ',
    icon: Icon(Icons.view_stream),
    routes: <MyRoute>[
      MyRoute(
        child: ListTile_widget_roq(),
        sourceFilePath: '${lists_roq_routs}/F_ListTile_roq.dart',
        title: 'ListTile',
        description: ' ',
        links: {
          'Doc': 'https://api.flutter.dev/flutter/material/ListTile-class.html',
        },
      ),
      MyRoute(
        child: ListView_Widget_roq(),
        sourceFilePath: '${lists_roq_routs}/F_ListView_roq.dart',
        title: 'ListView',
        description: ' ',
        links: {
          'Doc': '',
        },
      ),
      MyRoute(
        child: ListView_Builder_Widget_roq(),
        sourceFilePath: '${lists_roq_routs}/F_ListView_builder_roq.dart',
        title: 'ListView.builder',
        description: ' ',
        links: {
          'Doc': '',
        },
      ),
      MyRoute(
        child: GridView_Widget_roq(),
        sourceFilePath: '${lists_roq_routs}/F_GridView_roq.dart',
        title: 'GridView',
        description: ' ',
        links: {
          'Cookbook': 'https://flutter.io/cookbook/lists/grid-lists/',
        },
      ),
      MyRoute(
        child: ExpansionTile_Widget_roq(),
        sourceFilePath: '${lists_roq_routs}/F_ExpansionTile_roq.dart',
        title: 'ExpansionTile',
        description: ' ',
        links: {
          'Cookbook': 'https://flutter.io/cookbook/lists/grid-lists/',
        },
      ),
      MyRoute(
        child: DismissibleList_Widget_Roq(),
        sourceFilePath: '${lists_roq_routs}/F_Dismissiable_List_roq.dart',
        title: 'Dismissible List',
        links: {
          'Cookbook': 'https://flutter.io/cookbook/gestures/dismissible',
        },
      ),
      MyRoute(
        sourceFilePath:
            '${lists_roq_routs}/F_ListWhel_ScrollView_roq.dart',
        child: ListWheelScrollView_Widget_Roq(),
        title: 'List Wheel Scroll View',
        description: 'fancy list view',
        links: {
          'Doc':
              'https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html',
          'Youtube': 'https://youtu.be/dUhmWAz4C7Y'
        },
      ),
      MyRoute(
        child: ExpansionPanelList_Widget_Roq(),
        sourceFilePath:
            '${lists_roq_routs}/F_ExpansionPanel_Roq_roq.dart',
        title: 'ExpansionPanelList',
        links: {
          'Doc': '',
        },
      ),

      MyRoute(
        child: SliverList_Widget_Roq(),
        sourceFilePath: '${lists_roq_routs}/F_Sliver_List_roq.dart',
        title: 'SliverList',
        description: '.',
        links: {'Docs': ''},
      ),
      MyRoute(
        child: ReorderableListView_Widget_Roq(),
        sourceFilePath:
            '${lists_roq_routs}/F_ReorderableListView_roq.dart',
        title: 'ReorderableListView',
        description: '',
        links: {'Docs': ''},
      ),
      MyRoute(
        child: DyanmicListDisplay(),
        sourceFilePath:
        '${lists_roq_routs}/F_DynamicList_roq.dart',
        title: 'DynamicList',
        description: '',
        links: {'Docs': ''},
      ),

      // TODO TableExample(),
    ],
  ),
  /////////////////////////AppBar Widget Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'AppBar',
    icon: Icon(Icons.dashboard),
    routes: <MyRoute>[
      MyRoute(
        child: Appbar_Widget_Roq(),
        sourceFilePath: '${Appbar_Widgets_roq_routs}/F_AppBar_Baisc_roq.dart',
        title: 'Basic AppBar',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/AppBar-class.html',
        },
      ),
      MyRoute(
        child: BottomAppbar_Roq(),
        sourceFilePath: '${Appbar_Widgets_roq_routs}/F_AppBar_Bottom_roq.dart',
        title: 'Bottom AppBar and Floating App Button (FAB)',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/BottomNavigationBar-class.html'
        },
      ),
      MyRoute(
        child: AppBar_Tabs_Roq(),
        sourceFilePath: '${Appbar_Widgets_roq_routs}/F_AppBar_Tabs_roq.dart',
        title: 'Tabs',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/TabBar-class.html'
        },
      ),

      MyRoute(
        child: Banner_Roq(),
        sourceFilePath: '${Appbar_Widgets_roq_routs}/F_AppBar_Banner_roq.dart',
        title: 'Banner',
        description: 'Banner bottom the Appbar .',
        links: {
          'Doc':
              'https://material.io/components/banners/flutter#banners-example',
          'Medium article': '',
        },
      ),
      MyRoute(
        child: SliverAppBar_Widget_Roq(),
        sourceFilePath: '${Appbar_Widgets_roq_routs}/F_AppBar_Sliver_roq.dart',
        title: 'SliverAppBar',
        description: 'Appbar that auto-hides.',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/SliverAppBar-class.html',
          'Medium article':
              'https://flutterdoc.com/animating-app-bars-in-flutter-cf034cd6c68b',
        },
      ),
      MyRoute(
        child: AppBarSearch_Roq(),
        sourceFilePath: '${Appbar_Widgets_roq_routs}/F_AppBar_Search_roq.dart',
        title: 'Search',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/SearchDelegate-class.html'
        },
      ),
      MyRoute(
        child: Backdrop_Roq(),
        sourceFilePath: '${Appbar_Widgets_roq_routs}/F_AppBar_Backdrop_roq.dart',
        title: 'BackdropAppBar',
        description: 'Switching between front and back layer.',
        links: {
          'Medium article':
              'https://medium.com/flutter/decomposing-widgets-backdrop-b5c664fb9cf4'
        },
      ),
      MyRoute(
        child: ConvexAppBar_Roq(),
        sourceFilePath: '${Appbar_Widgets_roq_routs}/F_AppBar_Convex_roq.dart',
        title: 'ConvexAppBar',
        description: 'Nicer-looking appbar (Flutter Favorite package).',
        links: {'Pub.dev': 'https://pub.dev/packages/convex_bottom_bar'},
       
      ),
    

      // TODO TableExample(),
    ],
  ),
  /////////////////////////Navigation & Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Routing',
    icon: Icon(Icons.view_carousel),
    routes: <MyRoute>[
      MyRoute(
        child: Route_Without_Send_Data_Roq(),
        sourceFilePath:
            '${Navigation_roq_routs}/F_Navi_Open_new_screen_and_back_w1_roq.dart',
        title: 'Routing (MaterialPageRoute)',
        description:
            'Jumping between pages without send Data by using MaterialPageRoute class',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Navigator-class.html',
          'Youtube video':
              'https://youtu.be/b2fgMCeSNpY?list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd',
        },
      ),
      MyRoute(
        child: Route_With_Send_Data_Roq(),
        sourceFilePath:
            '${Navigation_roq_routs}/F_Navi_Open_new_screen_and_Send_Data_w1_roq.dart',
        title: 'Routing (Named Routs)',
        description: 'Jumping between pages  and send Data by using Named Routs.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Navigator-class.html',
          'Youtube video':
              'https://youtu.be/b2fgMCeSNpY?list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd',
        },
      ),
      MyRoute(
        child: Route_With_Return_Data_Roq(),
        sourceFilePath:
            '${Navigation_roq_routs}/F_Return_data_from_screen_w1_roq.dart',
        title: 'Routes (Return)',
        description: 'Jumping between pages with Return Data.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Navigator-class.html',
          'Youtube video':
              'https://youtu.be/b2fgMCeSNpY?list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd',
        },
      ),
      ////////////////////////
      MyRoute(
        child: BottomAppbar_Roq(),
        sourceFilePath:
            '${Navigation_roq_routs}/F_Navi_Bottom_tabBar_Naviroq.dart',
        title: 'Bottom TabBar',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/TabBar-class.html'
        },
      ),
      MyRoute(
        child: Dialogs_Roq(),
        sourceFilePath: '${Navigation_roq_routs}/F_Navi_Dialogs_Navi_roq.dart',
        title: 'Dialogs & Picker',
        description: 'Show some dialoges, pickers as (Time, Date and Date Rang Picker dialog) and baisc Bottom Sheet dialog.',
      ),
      MyRoute(
        child: DrawerWidget_Roq(),
        sourceFilePath: '${Navigation_roq_routs}/F_Nav_Drawer_roq.dart',
        title: 'Navigation Drawer',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/Drawer-class.html',
        },
      ),
      MyRoute(
        child: BottomSheet_Roq(),
        sourceFilePath: '${Navigation_roq_routs}/F_Navi_BottomSheet_Naviroq.dart',
        title: 'Bottom sheet',
        links: {
          'Medium article':
              'https://medium.com/flutter-community/flutter-beginners-guide-to-using-the-bottom-sheet-b8025573c433',
        },
      ),
      MyRoute(
        child: BottomNavigationBar_Roq(),
        sourceFilePath:
            '${Navigation_roq_routs}/F_Navi_BottomNavigationBar_Naviroq.dart',
        title: 'Bottom navigation bar',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/BottomNavigationBar-class.html',
        },
      ),
      MyRoute(
        child: PageViewWidget_Roq(),
        sourceFilePath: '${Navigation_roq_routs}/F_Nav_Drawer_roq.dart',
        title: 'PageView',
        links: {
          'Doc': '',
        },
      ),
      MyRoute(
        child: PageSelector_Roq(),
        sourceFilePath:
            '${Navigation_roq_routs}/F_Nav_Page_Selector_Naviroq.dart',
        title: 'Page selector',
        links: {
          'Doc':
              'https://docs.flutter.io/flutter/material/TabPageSelector-class.html'
        },
      ),
      MyRoute(
        child: DraggableScrollableSheet_Roq(),
        sourceFilePath:
            '${Navigation_roq_routs}/F_Nav_draggable_scrollable_sheet_roq.dart',
        title: 'DraggableScrollableSheet',
        description: 'Scrollable sheet similar to Google Maps.',
        links: {'Youtube': 'https://www.youtube.com/watch?v=Hgw819mL_78'},
      ),
      /////

      MyRoute(
        child: RailNavBar_Roq(),
        sourceFilePath: '${Navigation_roq_routs}/F_Navigation_Rail_roq.dart',
        title: 'Navigation Rail',
        description: '',
        links: {'Youtube': 'https://www.youtube.com/......'},
      ),
      MyRoute(
        child: WillPopScope_Roq(),
        sourceFilePath: '${Navigation_roq_routs}/F_Navi_Will_pop_scop_roq.dart',
        title: 'WillPopScope',
        description: '',
        links: {
          'Youtube':
              'https://here4you.tistory.com/177#:~:text=import%20%27package%3Aflutter/material,return%20true%3B%0A%20%20%7D'
        },
      ),
      MyRoute(
        child: TabBarWidget_Ex_Roq(),
        sourceFilePath: '${Navigation_roq_routs}/F_Navi_Examples_roq.dart',
        title: 'Navigation Demo',
        description: '',
        links: {
          '':
          ''
        },
      ),
    ],
  ),

];
///////////////////////// Plugins  Flutter Routes //////////////////////////

const List<MyRouteGroup> kMyAppRoutesAdvance = <MyRouteGroup>[

  MyRouteGroup(
    groupName: 'Multimedia',
    icon: Icon(Icons.perm_media),
    routes: <MyRoute>[
      MyRoute(
        child: ImagePicker_Roq(),
        sourceFilePath: 'lib/routes/multimedia_image_picker_ex.dart',
        title: 'Image Picker',
        description: 'Pick image from gallery or from camera.',
      ),


   /*   MyRoute(
        child: ImagePlugin_Roq(),
        sourceFilePath: 'lib/routes/multimedia_image_plugin_ex.dart',
        title: 'Image manipulation',
        links: {
          'pub.dev': 'https://pub.dev/packages/image',
          'Full list of examples':
          'https://github.com/brendan-duncan/image/wiki/Examples',
        },
      ),*/



      // 2025 Begine  <-----------------------------------
      /*MyRoute(
        child: ExtendedImage_Roq(),
        sourceFilePath: 'lib/routes/multimedia_extended_image_ex.dart',
        title: 'Extended Image',
        description: 'View and edit images easily.',
        links: {'Pub': 'https://pub.dev/packages/extended_image'},
      ),

      MyRoute(
        child: ImagePicker_Multi_Roq(),
        sourceFilePath: 'lib/routes/multimedia_extended_image_ex.dart',
        title: 'multi_image_picker',
        description: 'View and edit multi images easily.',
        links: {'Pub': 'https://pub.dev/packages/extended_image'},
      ),*/
      // 2025 End <-----------------------------------




     /* MyRoute(
        child: Getx_Then_Roq(),
        sourceFilePath: 'lib/myApp_Home_roq/flutter_plugins_roq/demo_GetStorage_roq.dart',
        title: 'GetStorag & ThemMode',
        description: 'View and edit multi images easily.',
        links: {'Pub': 'https://pub.dev/packages/extended_image'},
      ),*/
      MyRoute(
        child: ProgressiveImageUI_Roq(),
        sourceFilePath:
        'lib/routes/Flutter_routes_roq/Flutter_Plugins_roq/F_M_Progressive_Image_roq.dart',
        title: 'ProgressiveImage ',
        description: '',
        links: {'Doc': 'https://'},
      ),

     /* MyRoute(
        child: Getx_Then_Roq(),
        sourceFilePath: 'lib/myApp_Home_roq/flutter_plugins_roq/demo_GetStorage_roq.dart',
        title: 'Other Useful Plugins',
        description: 'View and edit multi images easily.',
        links: {'Pub': 'https://pub.dev/packages/extended_image'},
      ),*/
    ],
  ),
  /////////////////////////Async Widget Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Asynchronous',
    icon: Icon(Icons.timer),

    routes: <MyRoute>[
      MyRoute(
        child: FutureBuilder_Roq(),
        sourceFilePath: '${Async_roq_routs}/async_futurebuilder_roq.dart',
        title: 'FutureBuilder',
        links: {
          'Video on dart futures': 'https://youtu.be/OTS-ap9_aXc',
          'Doc':
          'https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html',
        },
      ),
      MyRoute(
        child: StreamBuilder_Roq(),
        sourceFilePath: '${Async_roq_routs}/async_streambuilder_roq.dart',
        title: 'StreamBuilder (timer app)',
        description: 'Update UI according to the latest stream value.',
        links: {
          'Video on dart streams': 'https://youtu.be/nQBpOIHE4eE',
          'Doc':
          'https://docs.flutter.io/flutter/widgets/StreamBuilder-class.html',
          'Youtube': 'https://www.youtube.com/watch?v=MkKEWHfy99Y',
        },
      ),
      MyRoute(
        child: StreamController_Roq(),
        sourceFilePath: '${Async_roq_routs}/async_streamcontroller_roq.dart',
        title: 'StreamController',
        description:
        'Receive data from sink and output at stream, two StreamControllers can make a "Bloc".',
        links: {
          'Doc':
          'https://api.dartlang.org/stable/2.1.1/dart-async/StreamController-class.html',
        },
      ),
    ],
  ),

  ///////////////////////// Multimedia Widget Flutter Routes //////////////////////////
  /*MyRouteGroup(
    groupName: 'Multimedia',
    icon: Icon(Icons.perm_media),
    routes: <MyRoute>[
      MyRoute(
        child: ImagePicker_Roq(),
        sourceFilePath: 'lib/routes/multimedia_image_picker_ex.dart',
        title: 'Image Picker',
        description: 'Pick image from gallery or from camera.',
      ),
      MyRoute(
        child: VideoPlayer_Roq(),
        sourceFilePath: 'lib/routes/multimedia_video_player_ex.dart',
        title: 'Video Player',
        description: 'Video/audio player plugin by the flutter team.',
        links: {'Pub': 'https://pub.dev/packages/video_player'},
      ),
      MyRoute(
        child: EdgeDetection_Roq(),
        sourceFilePath: 'lib/routes/multimedia_edge_detection_ex.dart',
        title: 'Edge Detection',
        description: 'Plugin to scan documents.',
        links: {'Pub': 'https://pub.dev/packages/edge_detection'},
      ),
    ],
  ),*/
  ///////////////////////// Persistences  Flutter Routes //////////////////////////

  MyRouteGroup(
    groupName: 'Data Persistence',
    icon: Icon(Icons.sd_storage),
    routes: <MyRoute>[
      MyRoute(
        child: Assets_Files_Roq(),
        sourceFilePath: '${Persistence_roq_routs}/F_Pres_RW_File_assets_roq.dart',
        title: 'Files in assest',
        description:
        'Read & write to (txt,csv and json) file in assets directory by using rootBundle ',
        links: {
          'Cookbook': '',
        },
      ),
      MyRoute(
        child: FileReadWrite_Roq(),
        sourceFilePath:
        '${Persistence_roq_routs}/F_Pres_File_RW_internal_Stor_roq.dart',
        title: 'Local file read/write',
        description: 'Read and write to local file using path_provider.',
        links: {
          'Cookbook':
          'https://flutter.io/docs/cookbook/persistence/reading-writing-files',
        },
      ),
      MyRoute(
        child: Shared_Preferences_Roq(),
        sourceFilePath:
        '${Persistence_roq_routs}/F_Pres_SharedPrefernce_roq.dart',
        title: 'Shared preference',
        description: 'Key-value pairs stored locally using shared_preference.',
        links: {
          'Cookbook': 'https://flutter.io/docs/cookbook/persistence/key-value',
        },
      ),
      MyRoute(
        child: Sqflite_Roq(),
        sourceFilePath: '${Persistence_roq_routs}/F_Pres_SQLite_roq.dart',
        title: 'SQLite',
        description:
        'A CRUD (Create-Read-Update-Delete) mini todo app using sqflite.',
        links: {
          'Pub package': 'https://pub.dev/packages/sqflite',
          'Doc': 'https://www.kindacode.com/article/flutter-sqlite/',
        },
      ),
      MyRoute(
        child: Sembast_Roq(),
        sourceFilePath: '${Persistence_roq_routs}/F_Pres_Sambast_roq.dart',
        title: 'Sembast',
        description: 'NoSQL db, mini todo CRUD app.',
        links: {
          'Pub package': 'https://pub.dev/packages/sembast',
          'ResoCoder blog':
          'https://resocoder.com/2019/04/06/flutter-nosql-database-sembast-tutorial-w-bloc/'
        },
      ),
      MyRoute(
        child: Hive_Roq(),
        sourceFilePath: '${Persistence_roq_routs}/F_Pres_Hive_roq.dart',
        title: 'Hive',
        description:
        'Easier NoSQL db with less bolierplate code. Mini todo CRUD app.',
        links: {
          'Documentation': 'https://docs.hivedb.dev',
          'ResoCoder blog':
          'https://resocoder.com/2019/09/30/hive-flutter-tutorial-lightweight-fast-database'
        },
      ),
    ],
  ),
  ///////////////////////// State Management  Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'State Management',
    icon: Icon(Icons.developer_mode),
    routes: <MyRoute>[
      MyRoute(
        child: InheritedWidget_Roq(),
        sourceFilePath: '$State_Management_roq/state_inherited_widget_roq.dart',
        title: 'InheritedWidget',
        description: 'Access state of widgets up the tree.',
        links: {
          'Doc':
          'https://docs.flutter.io/flutter/widgets/InheritedWidget-class.html',
          'Youtube': 'https://www.youtube.com/watch?v=4I68ilX0Y24',
        },
      ),
     
      MyRoute(
        child: Bloc_Roq(),
        sourceFilePath: '$State_Management_roq/state_bloc_roq.dart',
        title: 'Vanilla BLoC pattern',
        description:
        'Combining StreamBuilder, StreamController, and InheritedWidget.',
        links: {
          "I/O'18 talk": 'https://youtu.be/RS36gBEp8OI?t=1090',
          'Video by Reso Coder': 'https://youtu.be/oxeYeMHVLII',
        },
      ),
      MyRoute(
        child: BlocLib_Roq(),
        sourceFilePath: '$State_Management_roq/state_bloc_lib_roq.dart',
        title: 'Flutter bloc',
        description: 'Simpler BLoC implementation with flutter_bloc package.',
        links: {
          'Flutter Europe talk': 'https://youtu.be/knMvKPKBzGE',
          'flutter_bloc doc': 'https://felangel.github.io/bloc/#/coreconcepts',
          'Video by Reso Coder': 'https://youtu.be/LeLrsnHeCZY',
        },
      ),
      MyRoute(
        child: Provider_Roq(),
        sourceFilePath: '$State_Management_roq/state_provider_roq.dart',
        title: 'Provider',
        description: 'Officially recommended state management solution.',
        links: {
          'Flutter Europe talk': 'https://youtu.be/BulIREvHBWg',
          "I/O'19 talk": 'https://www.youtube.com/watch?v=d_m5csmrf7I',
          'Flutter documentation ':
          'https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple',
          'pub.dev': 'https://pub.dev/packages/provider',
        },
      ),
     
    ],
  ),

  ///////////////////////////////// Plugines Routes /////////////////////////
  MyRouteGroup(
    groupName: 'Plugins',
    icon: Icon(Icons.power),
    routes: <MyRoute>[
      //-------------------------------------------------------- Begine Comment 2025 ----------------------------------
      MyRoute(
        child: RatingBar_Roq(),
        sourceFilePath: '${Plugins_roq}/F_W_RatingBar_roq.dart',
        title: 'RatingBar',
        links: {
          'Doc':
          'https://pub.dev/documentation/flutter_rating_bar/latest/flutter_rating_bar/RatingBar-class.html'
        },
      ),
      MyRoute(
        child: SliderButton_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_SliderButton_roq.dart',
        title: 'SliderButton',
      ),
      MyRoute(
        child: CustomSwitch_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_CustomSwitch_roq.dart',
        title: 'CustomSwitch',
        description:
        'An easy to implement custom switch created for Flutter. Give it a custom height and width, border for the switch and toggle, border radius, colors, toggle size, a choice to display an \'On\' and \'Off\' text and able to add an icon inside the toggle.',
        links: {
          'Doc':
          'https://pub.dev/packages/flutter_switch/versions/0.3.0-nullsafety.0'
        },
      ),
      MyRoute(
        child: Clipboard_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_ClipPoard_roq.dart',
        title: 'Clipboard',
        description: '',
        links: {
          'Doc': 'https://'
        },
      ),
      MyRoute(
        child: CustomClippers_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_Custom_Clippers_roq.dart',
        title: 'Custom Clippers',
        description: '',
        links: {
          'Doc': 'https://'
        },
      ),
      MyRoute(
        child: Markdown_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_Markdown_roq.dart',
        title: 'Markdown ',
        description: '',
        links: {
          'Doc': 'https://'
        },
      ),
      MyRoute(
        child: ProgressiveImageUI_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_Progressive_Image_roq.dart',
        title: 'ProgressiveImage ',
        description: '',
        links: {
          'Doc': 'https://'
        },
      ),
      MyRoute(
        child: QuickActions_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_Quick_Actions_roq.dart',
        title: 'QuickActions ',
        description: 'I will delete it .......',
        links: {
          'Doc': 'https://'
        },
      ),
      MyRoute(
        child: Shimmer_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_Shimmer_roq.dart',
        title: 'Shimmer ',
        description: '',
        links: {
          'Doc': 'https://'
        },
      ),
      MyRoute(
        child: SliderButton_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_SliderButton_roq.dart',
        title: 'SliderButton ',
        description: '',
        links: {
          'Doc': 'https://'
        },
      ),
      MyRoute(
        child: FlipCard_Anim_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_FlipCard_roq.dart',
        title: 'FlipCard ',
        description: '',
        links: {
          'Doc': 'https://'
        },
      ),
      MyRoute(
        child: WebViewWidget_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_WebView_roq.dart',
        title: 'WebView',
        description: '.',
        links: {
          'Doc': 'https://codelabs.developers.google.com/codelabs/flutter-webview#0'
        },
      ),
      MyRoute(
        child: WebViewWidget_Roq(),
        sourceFilePath: '${Plugins_roq}/F_M_WebView_roq.dart',
        title: 'More Usful Plugines',
        description: '.',
        links: {
          'Doc': 'https://codelabs.developers.google.com/codelabs/flutter-webview#0'
        },
      ),
//-------------------------------------------------------- End Comment 2025 ----------------------------------

      /*MyRoute(
        child: AuthButton_Widget_roq(),
        sourceFilePath: '${Plugins_roq}/F_M_Buttons_Auth.dart',
        title: 'AuthButton',
      ),*/
    ],
  ),

  ///////////////////////// Charts  Flutter Routes //////////////////////////
  MyRouteGroup(
    groupName: 'Charts',
    icon: Icon(Icons.show_chart),
    routes: <MyRoute>[
      // 2025 Begine <-----------------------------------
     /* MyRoute(
        child: TimeseriesChart_Roq(),
        sourceFilePath: '${Chart_roq}/charts_time_series_roq.dart',
        title: 'Time Series Chart',
        links: {
          'Demo gallery': 'https://google.github.io/charts/flutter/gallery.html'
        },
      ),
      MyRoute(
        child: PieChart_Roq(),
        sourceFilePath: '${Chart_roq}/charts_pie_chart_roq.dart',
        title: 'Pie Chart',
        links: {
          'Demo gallery': 'https://google.github.io/charts/flutter/gallery.html'
        },
      ),*/
      // 2025 End <-----------------------------------
      MyRoute(
        child: FlLineChart_Roq(),
        sourceFilePath: '${Chart_roq}/charts_fl_line_chart_roq.dart',
        title: 'LineChart with fl_chart',
        links: {
          'doc':
          'https://github.com/imaNNeoFighT/fl_chart/blob/master/repo_files/documentations/line_chart.md'
        },
      ),
      MyRoute(
        child: FlBarChart_Roq(),
        sourceFilePath: '${Chart_roq}/charts_fl_bar_chart_roq.dart',
        title: 'BarChart with fl_chart',
        links: {
          'doc':
          'https://github.com/imaNNeoFighT/fl_chart/blob/master/repo_files/documentations/bar_chart.md'
        },
      ),

    ],
  ),
  ///////////////////////// Animation Baisc Routes //////////////////////////////
  MyRouteGroup(
    groupName: 'Animation (Baisc)',
    icon: Icon(Icons.movie_filter),
    routes: <MyRoute>[
      MyRoute(
        child: HeroAnimation_Roq(),
        sourceFilePath: '${Animation_roq}/animation_hero_roq.dart',
        title: 'Hero',
        description: 'Hero animation between routes.',
        links: {
          'cookbook':
          'https://flutter.io/docs/development/ui/animations/hero-animations',
          'Youtube video': 'https://www.youtube.com/watch?v=Be9UH1kXFDw',
        },
      ),
      MyRoute(
        child: AnimationsPackage_Roq(),
        sourceFilePath: '${Animation_roq}/animation_animations_pkg_roq.dart',
        title: 'Animations package',
        description: 'Fancy pre-built animations provided by Flutter team.',
        links: {
          'Tutorial by Robert Brunhage': 'https://youtu.be/vWBWfTgUaRI',
          'pub.dev': 'https://pub.dev/packages/animations',
        },
      ),
      MyRoute(
        child: AnimatedIcons_Roq(),
        sourceFilePath: '${Animation_roq}/animation_animated_icons_roq.dart',
        title: 'AnimatedIcon',
        links: {'Youtube video': 'https://youtu.be/pJcbh8pbvJs'},
      ),
      MyRoute(
        child: AnimatedContainer_Roq(),
        sourceFilePath: '${Animation_roq}/animation_animated_container_roq.dart',
        title: 'AnimatedContainer',
        description:
        'Implicit animation when container property changes, without controllers.',
        links: {
          'Cookbook':
          'https://flutter.dev/docs/cookbook/animation/animated-container',
          'Widget of the Week (YouTube)': 'https://youtu.be/yI-8QHpGIP4',
        },
      ),
      MyRoute(
        child: OpacityAnimation_Roq(),
        sourceFilePath: '${Animation_roq}/animation_opacity_roq.dart',
        title: 'Opacity',
        description: 'Making a widget transparent/visible.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Opacity-class.html',
          'Youtube video':
          'https://www.youtube.com/watch?v=9hltevOHQBw&index=5&list=PLOU2XLYxmsIL0pH0zWe_ZOHgGhZ7UasUE',
        },
      ),
    ],
  ),
  ///////////////////////// Networking  Flutter Routes //////////////////////////
  MyRouteGroup(
      groupName: 'API',
      icon: Icon(Icons.http),
      routes: <MyRoute>[
        MyRoute(
          child: RestApiGoogleBooks_Roq(),
          sourceFilePath: '${Networking_roq}/F_Net_Google_Books_roq.dart',
          title: 'Google Books',
          description: 'Another REST example using the Google books seach API.',
          links: {'Hacker News API': 'https://github.com/HackerNews/API'},
        ),
        MyRoute(
          child: RestApiFetch_Roq(),
          sourceFilePath: '${Networking_roq}/networking_rest_api_fetch_ex.dart',
          title: 'Fetching data',
          links: {
            'Cookbook': 'https://flutter.dev/docs/cookbook/networking/fetch-data'
          },
        ),
        MyRoute(
          child: RestApiSend_Roq(),
          sourceFilePath: '${Networking_roq}/networking_rest_api_send_ex.dart',
          title: 'Sending data',
          links: {
            'Cookbook': 'https://flutter.dev/docs/cookbook/networking/send-data'
          },
        ),
        MyRoute(
          child: RestApiSend_Roq(),//ChatGpt_Roq(),
          sourceFilePath: '${Networking_roq}/networking_chatgpt_ex.dart',
          title: "ChatGPT",
          description: 'Interact with ChatGPT in Flutter',
          links: {'pub.dev': 'https://pub.dev/packages/chat_gpt_sdk'},
        ),
      ]),
  MyRouteGroup(
    groupName: 'Firebase',
    icon: Icon(Icons.perm_media),
    routes: <MyRoute>[],
  ),
  MyRouteGroup(
    groupName: 'Production',
    icon: Icon(Icons.android),
    routes: <MyRoute>[
      MyRoute(child: AppName_Roq(),
          title: "App Name",
          description: "Set App Name",
          sourceFilePath: '${emptyCode_roq_routs}'),
      MyRoute(child: AppIcon_Roq(),
        title: "App Icon",
        description: "Set App Icon",
        sourceFilePath: '${emptyCode_roq_routs}',
        links: {
          'Doc': 'https://www.flutterbeads.com/change-app-launcher-icon-flutter/'
        },),
      MyRoute(child: AppSign_Roq(),
        title: "Sign App",
        description: "Getting Release App",
        sourceFilePath: '${emptyCode_roq_routs}',
      ),
      MyRoute(child: AppBuild_Roq(),
        title: "Build App ",
        description: "Getting App Apk",
        sourceFilePath: '${emptyCode_roq_routs}',),

    ],
  ),

  ///////////////////////////////////////////////////////// I will Move To Plugin projects


];
///////////////////////// Plugins  Flutter Routes //////////////////////////

const kMyAppRoutesDemos = <MyRouteGroup>[
  MyRouteGroup(
    groupName: 'Widgets UI',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: WidDemoAtomic_Roq(),
        title: 'Atomic Widgets',
        description: 'Login and Register UI with Atomic Widgets',
        sourceFilePath:
        '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: WidDemoStar_Net_Roq(),
        sourceFilePath:
        '',
        title: 'Starlight NetChecker Widget',

        description:
            "It is a typically widget that will check your internet connection.",
        indexdemo_roq: 1,
      ),
      MyRoute(
        child: WidDemohepler_Roq(),
        sourceFilePath:
        '',
        title: 'Helper Widget',
        description: "It simply balances the lines of two-line text ",
        indexdemo_roq: 2,
      ),
      MyRoute(
        child: WidDemodragH_Roq(),
        sourceFilePath: '',
        title: "Draggable Home",
        indexdemo_roq: 3,
      ),
      MyRoute(
        child: WidDemoAutoCompl_Roq(),
        sourceFilePath: '',
        title: "TypeAhead Widget",
        indexdemo_roq: 4,
        description:
            'A TypeAhead (autocomplete) widget where you can show suggestion to users as they type.',
      ),
      MyRoute(
        child: WidDemoGitImage_Roq(),
        sourceFilePath: '',
        title: "Gif image Widget ",
        indexdemo_roq: 5,
      ),
      MyRoute(
        child: More_WidgetsDemo_Roq(),
        sourceFilePath: '',
        title: "More Widget Demoes ",
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'App UIs',
    icon: Icon(Icons.api),
    routes: <MyRoute>[
      MyRoute(
        child: DemoLogin_Roq(),
        sourceFilePath: '',
        title: 'Login App',
        description: 'Login Screen with Firebase Auth and Facebook Login',
        indexdemo_roq: 6,
      ),
      MyRoute(
        child: DemoNote_Roq(),
        sourceFilePath: '',
        title: 'Lightweight Note App',
        indexdemo_roq: 7,
      ),
      MyRoute(
        child: DemoMusic_Roq(),
        sourceFilePath: '',
        title: 'Music player App',
        indexdemo_roq: 8,
      ),
      MyRoute(
        child: DemoQuiz_Roq(),
        sourceFilePath: '',
        title: "Quiz App",
        indexdemo_roq: 9,
      ),
      MyRoute(
        child: DemoCal_Baisc_Roq(),
        sourceFilePath: '',
        title: "Baisc Calculator",
        indexdemo_roq: 10,
      ),
      MyRoute(
        child: DemoSmartHome_Roq(),
        sourceFilePath: '',
        title: "Smart Home IOT",
        indexdemo_roq: 11,
      ),
      MyRoute(
        child: More_AppsDemo_Roq(),
        sourceFilePath: '',
        title: "More App Demoes",
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Games UIs',
    icon: Icon(Icons.videogame_asset),
    routes: <MyRoute>[
      MyRoute(
        child: GaDemoTic_Roq(),
        sourceFilePath: '',
        title: 'Tic Tac Toe',
        indexdemo_roq: 12,
      ),
      MyRoute(
        child: GaDemo2DRunn_Roq(),
        sourceFilePath: '',
        title: 'T-rex-runner 2D',
        indexdemo_roq: 13,
      ),
      MyRoute(
        child: GaDemoHang_Roq(),
        sourceFilePath: '',
        title: 'Hangman gaming',
        indexdemo_roq: 14,
      ),
      MyRoute(
        child: GaDemoQuiziy_Roq(),
        sourceFilePath: '',
        title: "Quizy game",
        indexdemo_roq: 15,
      ),
      MyRoute(
        child: GaDemoRock_Roq(),
        sourceFilePath: '',
        title: "Rock-Paper-Scissors",
        indexdemo_roq: 16,
      ),
      MyRoute(
        child: GaDemoFunnyM_Roq(),
        sourceFilePath: '',
        title: "Funny Memory game",
      ),
      MyRoute(
        child: More_GamesDemo_Roq(),
        sourceFilePath: '',
        title: "More Game Demoes",
      ),
      // More ==>'https://flutterawesome.com/tag/games/',
    ],
  ),
  /////////////////////////////// Templeats Flutter Demos
  MyRouteGroup(
    groupName: 'Templates',
    icon: Icon(Icons.style),
    routes: <MyRoute>[
      MyRoute(
        child: Templ_Ecommer_Roq(),
        sourceFilePath: '',
        title: 'E-Commerce Template',
      ),
      MyRoute(
        child: Templ_TaskMang_Roq(),
        sourceFilePath: '',
        title: 'Task Management',
        description: '',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: Templ_BlixStudio_Roq(),
        sourceFilePath: '',
        title: 'BlixtStudio',
        description: 'A fully coded app template built for Flutter',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: Templ_Bank_Roq(),
        sourceFilePath: '',
        title: 'Banking Template',
        description:
            'A Complete Mobile Banking Template(Dark+Light Theme) built with with Flutter',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: Templ_Choos_ColSch_Roq(),
        sourceFilePath: '',
        title: 'Choose Color/Schema',
        description: 'A template will help you choose a color '
            'scheme for the application, '
            'show how widgets interact with it',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: Templ_MusicApp_Roq(),
        sourceFilePath: '',
        title: 'Music App Template',
        description: '',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: Templ_Travel_Roq(),
        sourceFilePath: '',
        title: 'Travel App',
      ),
      MyRoute(
        child: Templ_Gallery_Roq(),
        sourceFilePath: '',
        title: 'Template Gallery App',
      ),
      MyRoute(
        child: Templ_Boast_Roq(),
        sourceFilePath: '',
        title: 'Boats Challenge',
      ),
      MyRoute(
        child: Templ_Book_Roq(),
        sourceFilePath: '',
        title: 'Bookstore App',
      ),
      MyRoute(
        child: IstagTempl_Roq(),
        sourceFilePath: '',
        title: 'Instagram Redesign App',
      ),
      MyRoute(
        child: SuperTempl_Roq(),
        sourceFilePath: '',
        title: 'Superhero Movies App',
      ),

      MyRoute(
        child: SocialPhotoTempl_Roq(),
        sourceFilePath: '',
        title: 'Social App Photographers',
      ),
      MyRoute(
        child: GamingTempl_Roq(),
        sourceFilePath: '',
        title: 'Gaming App',
      ),
      MyRoute(
        child: MedicaTempl_Roq(),
        sourceFilePath: '',
        title: 'My Medical Appointment',
      ),

      MyRoute(
        child: MusicAlbumsTempl_Roq(),
        sourceFilePath: '',
        title: 'Music Albums Collection',
      ),
      MyRoute(
        child: MusicAlbumsTempl_Roq(),
        sourceFilePath: '',
        title: 'Music Vinyl Animation',
      ),
      MyRoute(
        child: FindOutTempl_Roq(),
        sourceFilePath: '',
        title: 'FindOut',
      ),
      MyRoute(
        child: MovieSelecTempl_Roq(),
        sourceFilePath: '',
        title: 'Movie Selections',
      ),

      /////////////////

      MyRoute(
        child: More_AppsDemo_Roq(),
        sourceFilePath: '',
        title: 'More Templets ',
        description: 'To help get you up and running quickly '
            'with your next app in flutter, '
            'we have curated this collection'
            ' of many Best Flutter UI Kit Templates.',
        //https://flutterawesome.com/tag/templates/
      ),

      // More ==>'https://flutterawesome.com/tag/games/',
    ],
  ),
  /////////////////////////////// Firbase Flutter Demos
  MyRouteGroup(
    groupName: 'Firebase',
    icon: Icon(Icons.book_online),
    routes: <MyRoute>[
      MyRoute(
        child: firImage_Roq(),
        sourceFilePath: '',
        title: 'Image Sharing & Cloud Storage',
        description:
            'A full-stack image sharing and cloud storage using Flutter, Firebase and GetX',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: firChat_Roq(),
        sourceFilePath: '',
        title: 'Chat app',
        description:
            'Chat app in Firebase with Group Based Functionalities (Email/Password Auth)',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: firVoit_Roq(),
        sourceFilePath: '',
        title: 'Voting System',
        description: 'A voting system app made with firebase',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: firTodo_Roq(),
        sourceFilePath: '',
        title: 'Todo flutter app',
        description:
            'A full-stack image sharing and cloud storage using Flutter, Firebase and GetX',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: fir_Auth_Roq(),
        sourceFilePath: '',
        title: 'Authentication using riverpod',
        description: '',
        //https://flutterawesome.com/tag/firebase/
      ),

      MyRoute(
        child: fir_CompleApp_Roq(),
        sourceFilePath: '',
        title: 'Completed Functional Flutter App',
        description: 'FindSeat (BLoC + Json API + Unit Test + Firebase Auth)',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: fir_Messag_Roq(),
        sourceFilePath: '',
        title: 'Message App ',
        description: '',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: fir_MangTask_Roq(),
        sourceFilePath: '',
        title: 'Manage Tasks ',
        description: 'An App To manage all your tasks with firebase backend',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: fir_SendNotif_Roq(),
        sourceFilePath: '',
        title: 'Send Notification ',
        description:
            'Send notification to flutter app using firebase messaging',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: fir_DelivRestu_Roq(),
        sourceFilePath: '',
        title: 'Delivery App for Restaurants',
        description:
            'Send notification to flutter app using firebase messaging',
//https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: fir_ProudMang_Roq(),
        sourceFilePath: '',
        title: 'Product Management',
        description: 'A Simple product management app with Firebase Auth',
//https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '',
        title: 'More Firebase Apps',
        description: 'A collection of 182 posts',
        //https://flutterawesome.com/tag/firebase/
      ),
      // More ==>'https://flutterawesome.com/tag/games/',
    ],
  ),
/////////////////////////////// Projects Flutter Demos
  MyRouteGroup(
    groupName: 'Project Sample UIs',
    icon: Icon(Icons.pages),
    routes: <MyRoute>[
      MyRoute(
        child: ProDemoAsus_Roq(),
        sourceFilePath: '',
        title: 'Asus Product UI',
        indexdemo_roq: 18,
      ),
      MyRoute(
        child: ProDemoHomeRant_Roq(),
        sourceFilePath: '',
        title: 'Home Rental',
        indexdemo_roq: 19,
      ),
      MyRoute(
        child: ProDemoBank_Roq(),
        sourceFilePath: '',
        title: 'Bank App',
        indexdemo_roq: 20,
      ),
      MyRoute(
        child: ProDemoTravl_Roq(),
        sourceFilePath: '',
        title: "Travel UI",
        indexdemo_roq: 21,
      ),
      MyRoute(
        child: ProDemoChat_Roq(),
        sourceFilePath: '',
        title: "Full Chat App",
        indexdemo_roq: 22,
      ),
      MyRoute(
        child: ProDemoSchoMang_Roq(),
        sourceFilePath: '',
        title: "School Management App",
        indexdemo_roq: 23,
      ),
      MyRoute(
        child: ProDemoFinance_Roq(),
        sourceFilePath: '',
        title: "Finance App",
        indexdemo_roq: 24,
      ),
      MyRoute(
        child: ProDemofruit_Roq(),
        sourceFilePath: '',
        title: "Fruit Shopnig App",
        indexdemo_roq: 25,
      ),
      MyRoute(
        child: ProDemoCloths_Roq(),
        sourceFilePath: '',
        title: "Baisc Clothes App",
        indexdemo_roq: 26,
      ),
      MyRoute(
        child: ProDemoMakeupStore_Roq(),
        sourceFilePath: '',
        title: "Makeup Shopping Store",
        description:
            'A makeup shopping store for luxury items at affordable rate',
      ),
      MyRoute(
        child: ProDemoCovid_Roq(),
        sourceFilePath: '',
        title: "The Plandemic/Covid-19 App",
        indexdemo_roq: 27,
      ),
      MyRoute(
        child: ProDemoCovid_Roq(),
        sourceFilePath: '',
        title: "More Projects UI",
        indexdemo_roq: 27,
      )
    ],
  ),
  //////////////////////////////// Animation
  MyRouteGroup(
      groupName: 'Animation',
      icon: Icon(Icons.animation),
      routes: <MyRoute>[
        MyRoute(
          child: ProDemoAsus_Roq(),
          sourceFilePath: '',
          title: 'Animation',
          description: 'A collection of 189 posts',
//https://flutterawesome.com/tag/animation/
        ),
      ]),
/////////////////////////// More Demo Samples //////////////////////////////////////
  MyRouteGroup(
    groupName: 'More Demo Samples',
    icon: Icon(Icons.developer_mode),
    routes: <MyRoute>[
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '',
        title: 'API',
        description: 'A collection of 149 posts',
        //https://flutterawesome.com/tag/api/
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '',
        title: '',
        description: '',
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '',
        title: '',
        description: '',
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '',
        title: '',
        description: '',
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '',
        title: '',
        description: '',
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '',
        title: '',
        description: '',
      ),
      ///////////////////////////////

      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '',
        title: 'UI Demos',
        description: 'A collection of 558 posts',
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Buttons_Auth.dart',
        title: 'Apps',
        description: 'A collection of 2175 posts',
        indexdemo_roq: 1,
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Buttons_Auth.dart',
        title: 'Widgets',
        description: 'A collection of 325 posts',
        indexdemo_roq: 1,
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Buttons_Auth.dart',
        title: 'Games',
        description: 'A collection of 201 posts',
        indexdemo_roq: 1,
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Buttons_Auth.dart',
        title: 'Games',
        description: 'A collection of 201 posts',
        indexdemo_roq: 1,
      ),
      MyRoute(
        child: MoreDemos_Roq(),
        sourceFilePath: '${paint_routs}/F_M_Buttons_Auth.dart',
        title: 'Games',
        description: 'A collection of 201 posts',
        indexdemo_roq: 1,
      ),
      MyRoute(
        child: GaDemoTic_Roq(),
        sourceFilePath: '',
        title: 'Firebase',
        description: 'A collection of 182 posts',
        //https://flutterawesome.com/tag/firebase/
      ),
      MyRoute(
        child: GaDemoTic_Roq(),
        sourceFilePath: '',
        title: 'Login',
        description: 'A collection of 85 posts',
        //https://flutterawesome.com/tag/login-tag/
      ),
      MyRoute(
        child: GaDemoTic_Roq(),
        sourceFilePath: '',
        title: 'Templates',
        description: 'A collection of 186 posts',
        //https://flutterawesome.com/tag/templates/
      ),
      MyRoute(
        child: GaDemoTic_Roq(),
        sourceFilePath: '',
        title: 'API',
        description: 'A collection of 149 posts',
        //https://flutterawesome.com/tag/api/
        //
      ),
      MyRoute(
        child: GaDemoTic_Roq(),
        sourceFilePath: '',
        title: 'Tutorial',
        description: 'A collection of 59 posts',
        //https://flutterawesome.com/tag/tutorial/
        //
      ),
    ],
  ),
];
/////////////////////////////////////// All Exercises Groups //////
const kMyAppRoutesExercises = <MyRouteGroup>[
/////////////////////////Exercises Flutter Routes //////////////////////////
];
///////////////////////////////////Root Sample section routes////////////////////////
const kMyAppRoutesQuiz = <MyRouteGroup>[
/////////////////////////Exercises Flutter Routes //////////////////////////
];
////////////////////////////////////////////////////////////////
final List<MyRouteGroup> kAllRouteGroups = <MyRouteGroup>[
//...kMyAppRoutesBasic,
  ...kMyAppRoutesBasic,
  ...kMyAppRoutesAdvance,
  ...kMyAppRoutesDemos,
  ...kMyAppRoutesExercises,
  ...kMyAppRoutesQuiz,
];

final List<MyRoute> kAllRoutes = <MyRoute>[
  ...kAllRouteGroups.expand((group) => group.routes),
];

final Map<String, MyRoute> kRouteNameToRoute = <String, MyRoute>{
  for (final route in kAllRoutes) route.routeName: route
};

final kRouteNameToRouteGroup = <String, MyRouteGroup>{
  for (final group in kAllRouteGroups)
    for (final route in group.routes) route.routeName: group
};

// This app's root-level routing table.
final Map<String, WidgetBuilder> kAppRoutingTable = <String, WidgetBuilder>{
  Navigator.defaultRouteName: (context) => kHomeRoute,
  kAboutRoute.routeName: (context) => kAboutRoute,
  for (MyRoute route in kAllRoutes) route.routeName: (context) => route,
};
