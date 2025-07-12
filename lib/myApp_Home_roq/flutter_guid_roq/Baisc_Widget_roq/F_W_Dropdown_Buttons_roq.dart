import 'package:flutter/material.dart';

// Inspired by dropdown buttons demo in offical flutter gallery:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/buttons_demo.dart
class DropdownButton_Widget_roq extends StatefulWidget {
  const DropdownButton_Widget_roq({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButton_Widget_roq> {
  String? _selecteditem_roq, _selecteditem_roq2;
  List _listItems_roq = ["Sana'a", "Aden", "Thmar", "Abian"];
  static const menuItems = <String>[
    'One',
    'Two',
    'Three',
    'Four',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    ),
  )
      .toList();

  String _btn1SelectedVal = 'One';
  String? _btn2SelectedVal;
////////////////////////////////////////////// var and list of give value from DropDown Example
  List<ListItem_roq> _dropdownItems_roq = [
    ListItem_roq(1, "Joan Salman"),
    ListItem_roq(2, "Ruqaih Salman"),
    ListItem_roq(3, "Jory Salman"),
    ListItem_roq(4, "Elias Salman")
  ];

  List<DropdownMenuItem<ListItem_roq>>? _dropdownMenuItems_roq;
  ListItem_roq? _itemSelected_roq;

  void initState() {
    super.initState();
    _dropdownMenuItems_roq = buildDropDownMenuItems(_dropdownItems_roq);
    _itemSelected_roq = _dropdownMenuItems_roq![1].value;
  }

  List<DropdownMenuItem<ListItem_roq>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem_roq>> items = List<DropdownMenuItem<ListItem_roq>>.empty(growable: true);// Or [];/*List();   Error*/
    for (ListItem_roq listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }


  ////////////////////////////// End Var of Example

  @override
  Widget build(BuildContext context) {
    return
      ListView(
      children: <Widget>[
        /*ListTile(
          title: const Text('DropDownButton with default:'),
          trailing: DropdownButton<String>(
            // Must be one of items.value.
            value: _btn1SelectedVal,
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() => _btn1SelectedVal = newValue);
              }
            },
            items: this._dropDownMenuItems,
          ),
        ),
        ListTile(
          title: const Text('DropDownButton with hint:'),
          trailing: DropdownButton(
            value: _btn2SelectedVal,
            hint: const Text('Choose'),
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() => _btn2SelectedVal = newValue);
              }
            },
            items: _dropDownMenuItems,
          ),
        ),*/
        buildText("Add itemes to DorpdownButton Way 1 : "),
        buildDropdownbutton_way1_funRoq(),
        buildText("Add itemes to DorpdownButton Way 2 : "),
        buildDropdownbutton_way2_funRoq(),
        buildText("Disabling the dropdown : "),
        Disabling_Dropdown_funroq(),
        buildText("Default DropDownButton : "),
        DropDownButton_default_funroq(),
        ///////////////////////////////  DropDownButton with hint
        buildText("DropDownButton with hint : "),
        DropDownButton_hint_funroq(),
        buildText("Styling the dropdown :"),
        styling_dropdown_funroq(),
        buildText("DropdownButtonFormField :"),
        buildDropdownButtonFormField_funRoq(),
        buildText("Example to take selected item from Dropdown:"),
        Tack_val_DropDown_EX1_funroq(),
        SizedBox(height: 10,),

      ],
    );
  }

  Column Tack_val_DropDown_EX1_funroq() {
    return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all()),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    value: _itemSelected_roq,
                    items: _dropdownMenuItems_roq,
                    onChanged: (ListItem_roq? value) {
                      setState(() {
                        _itemSelected_roq = value;
                      });
                    }),
              ),
            ),
          ),
          Text("We have selected ${_itemSelected_roq!.name}"),
        ],
      );
  }
  Container buildDropdownbutton_way1_funRoq() {
    return Container(
      padding: EdgeInsets.all(4),
      width: double.infinity,
      //height: 150,
      //color: Colors.yellow.shade100,
      child: Row(
        children: [
          //Text("Select Your Country"),
          DropdownButton(
            hint: Text("Select Your Country"),
            items: [
              DropdownMenuItem(child: Text("Yemen"), value: "Yemen_valroq"),
              DropdownMenuItem(child: Text("USAroq"), value: "USA_valroq"),
              DropdownMenuItem(child: Text("Canada"), value: "Canada_valroq"),
              DropdownMenuItem(child: Text("Brazil"), value: "Brazil_valroq"),
              DropdownMenuItem(child: Text("England"), value: "England_valroq"),
            ],
            onChanged: (Object? valu_DdB_roq) {
              setState(() {
                _selecteditem_roq = valu_DdB_roq as String?;
              });
            },
            value: _selecteditem_roq,
          ),
        ],
      ),
    );
  }
  Container styling_dropdown_funroq() {
    return Container(
      padding: EdgeInsets.all(4),
      width: double.infinity,
      //height: 150,
      color: Colors.pinkAccent.shade100,
      child: Row(
        children: [
          //Text("Select Your Country"),
          DropdownButton(
            value: _selecteditem_roq2,
            hint: Text("Select Your Country"),
            ////////////////////////////////////////////////////

            disabledHint:Text("Can't Selected"),
            elevation: 8,
            style:TextStyle(color:Colors.white, fontSize: 16),
            icon: Icon(Icons.arrow_drop_down_circle),
            iconDisabledColor: Colors.red,
            iconEnabledColor: Colors.green,
            //isExpanded: true,
            dropdownColor: Colors.purple,

            /////////////////////////////////////////////////
            items: _listItems_roq.map((item) {
              return DropdownMenuItem(
                child: Text(item),
                value: item,
              );
            }).toList(),
            onChanged: ( Object? valu_DdB_roq) {
              setState(() {
                _selecteditem_roq2 = valu_DdB_roq! as String?;
              });
            },
          ),
        ],
      ),
    );
  }
  ////////////////////////////////////////////////////////////////////////////
  DropdownButtonFormField<String> buildDropdownButtonFormField_funRoq() {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
          fillColor: Colors.blueAccent,
        ),
        dropdownColor: Colors.blueAccent,
        value: _selecteditem_roq,
        onChanged: ( newValue) {
          setState(() {
            _selecteditem_roq = newValue;
          });
        },
        items: dropdownItems);
  }
/////////////////////////////////////////////////////
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"),value: "USA"),
      DropdownMenuItem(child: Text("Canada"),value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
      DropdownMenuItem(child: Text("England"),value: "England"),
    ];
    return menuItems;
  }
  ////////////////////////////////////////////////////////////////
  Container Disabling_Dropdown_funroq() {
    return Container(
      padding: EdgeInsets.all(4),
      width: double.infinity,
      //height: 150,
      //color: Colors.yellow.shade100,
      child: Row(
        children: [
          //Text("Select Your Country"),
          DropdownButton(
            disabledHint: Text("Can't select"),
            hint: Text("Select Your Country"),
            items: [
              DropdownMenuItem(child: Text("Yemenroq"), value: "Yemen"),
              DropdownMenuItem(child: Text("USAroq"), value: "USA"),
              DropdownMenuItem(child: Text("Canada"), value: "Canada"),
              DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
              DropdownMenuItem(child: Text("England"), value: "England"),
            ],
            onChanged: null,
            value: _selecteditem_roq,
          ),
        ],
      ),
    );
  }

  Container buildDropdownbutton_way2_funRoq() {
    return Container(
      padding: EdgeInsets.all(4),
      width: double.infinity,
      //height: 150,
      //color: Colors.lightGreen.shade400,
      child: Row(
        children: [
          //Text("Select Your Country"),
          DropdownButton(
            value: _selecteditem_roq2,
            hint: Text("Select Your Country"),
            items: _listItems_roq.map((item) {
              return DropdownMenuItem(
                child: Text(item),
                value: item,
              );
            }).toList(),
            onChanged: (Object? valu_DdB_roq) {
              setState(() {
                _selecteditem_roq2 = valu_DdB_roq as String?;
              });
            },
          ),
        ],
      ),
    );
  }
  buildText(String text_roq) {
    return
      Column(
        children: [
          Divider(height: 10,thickness: 3,),
          Text("$text_roq",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,
            color: Colors.deepPurple[500],), ),
          Divider(height: 10,thickness: 3,),
        ],
      );

  }
  ListTile DropDownButton_hint_funroq() {
    return ListTile(
      title: const Text('DropDownButton with hint:'),
      trailing: DropdownButton(
        value: _btn2SelectedVal,
        hint: const Text('Choose'),
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() => _btn2SelectedVal = newValue);
          }
        },
        items: _dropDownMenuItems,
      ),
    );
  }

  ListTile DropDownButton_default_funroq() {
    return ListTile(
      title: const Text('DropDownButton with default:'),
      trailing: DropdownButton<String>(
        // Must be one of items.value.
        value: _btn1SelectedVal,
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() => _btn1SelectedVal = newValue);
          }
        },
        items: this._dropDownMenuItems,
      ),
    );
  }
}

class ListItem_roq {
  int? value;
  late String name;
  ListItem_roq(this.value, this.name);
}
