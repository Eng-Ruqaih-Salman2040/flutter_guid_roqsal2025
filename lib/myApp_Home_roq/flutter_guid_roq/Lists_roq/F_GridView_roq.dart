import 'package:flutter/material.dart';
import '../../../myApp_Data_Settings_roq/Utils_roq.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';

/////////////////////////////// Main Class /////////////////////
class GridView_Widget_roq extends StatefulWidget {
  const GridView_Widget_roq({Key? key}) : super(key: key);

  @override
  _GridView_Widget_roqState createState() =>
      _GridView_Widget_roqState();
}

class _GridView_Widget_roqState
    extends State<GridView_Widget_roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'GridView',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
        /* actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.listViewCode),
              ),
            ),
          )
        ],*/
      ),
      body:  Column(
          children: [
            buildText_funroq("Ex1:Baisc GridView Widget "),
            Expanded(child: Gridview_Roq_Ex1()),
            buildText_funroq("Ex2: GridView.builder Widget "),
            Expanded(child: GridView_builder_Roq_EX2()),
          ],

      ),
    );
  }
}
////////////////////////////////////// GridView Example 1 ////////////////
class Gridview_Roq_Ex1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 8.0,
                  children: List.generate(choices.length,(index) {
                    return Center(
                      child: SelectCard(choice: choices[index]),
                    );
                  }
                  )

      ),
    );
  }
}

class Choice {
  final String? title;
  final IconData? icon;
  const Choice({this.title,  this.icon});

}

const List<Choice> choices = const <Choice>
[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  final Choice choice;
  const SelectCard({ required this.choice});


  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.bodyLarge;
    return
      Card(
        color: Colors.orange.shade100,
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size:50.0, color: textStyle?.color)),
              Text(choice.title!, style: textStyle),
            ]
        ),
        )
    );
  }
}
////////////////////////////////////// End GridView Example 1 ////////////////

////////////////////////////////////////// GridView_builder Example 2////////////
class GridView_builder_Roq_EX2 extends StatelessWidget {

  List<String> images = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 2.0
              ),
              itemBuilder: (BuildContext context, int index){
                return  Container(
                  padding: EdgeInsets.all(5.0),
                  color: Colors.cyan.shade50,
                  child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    child:   ClipRRect(
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                ),
                child:Image.network(images[index],fit: BoxFit.fitHeight,)),
                ));




              },

      ),
    );
  }
}
//////////////////////// End GridView.builder Example /////////////////////