import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(
      new MaterialApp(
        home: new Flutter_Exercises_Roq(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Flutter_Exercises_Roq extends StatefulWidget {
  @override
  _Flutter_Exercises_RoqState createState() => new _Flutter_Exercises_RoqState();

  const Flutter_Exercises_Roq({Key? key}) : super(key: key);
}

class _Flutter_Exercises_RoqState extends State<Flutter_Exercises_Roq> {
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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, i) {

          return Card(
            elevation: 10,
            child: new ExpansionTile(
              leading: Icon(Icons.library_books),

              title: new Text(
                vehicles[i].title,
                style: Theme.of(context).textTheme.titleMedium,
               /* style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),*/
              ),
              children: <Widget>[
                new Column(
                  children: _buildExpandableContent(vehicles[i]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _buildExpandableContent(Vehicle vehicle, {Widget? leading/*, IconData trialing = Icons.keyboard_arrow_right*/}) {
/*
final MyAppSettings mySettings = context.watch<MyAppSettings>();
*/
final TextStyle routeTitleTextStyle = Theme.of(context)
    .textTheme
    .bodyLarge!
    .copyWith(fontWeight: FontWeight.bold);

    List<Widget> columnContent = [];
int i=0;
    for (String content in vehicle.contents) {
     /* final Widget leadingWidget =
          leading ?? mySettings.starStatusOfRoute(content);
      final bool isNew = mySettings.isNewRoute(content);*/

      columnContent.add(

        Card(

            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          child: new ListTile(
            leading: Text("Q.${++i}"),
           /* isNew
                ? Badge(
              position: BadgePosition.topEnd(top: 2, end: 2),
              child: leadingWidget,
            )
                : leadingWidget,*/
            title: Text(content, style: routeTitleTextStyle),
            trailing:  Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: () {setState(() {
                  _launched = _launchInWebViewOrVC(
                      "https://dartpad.dev/?id");
                });}, icon: const Icon(Icons.open_in_new)),
                IconButton(
                    onPressed:()=>Share_Exercise_FunRoq(context,content), icon: const Icon(Icons.share)),

              ],
            ),
            onTap: () {
              /*if (isNew) {
                mySettings.markRouteKnown(content);*/
              }

            ,
           /* title: new Text(
              content,
              *//*style: new TextStyle(fontSize: 18.0),*//*),
            leading: new Icon(vehicle.icon),*/
          ),
        ),
      );
    }

    return columnContent;
  }


    void Share_Exercise_FunRoq(BuildContext context,String LinkN_Sh) async {
      final box = context.findRenderObject() as RenderBox?;
      ShareResult result;

      result = await Share.share('Q: $LinkN_Sh', subject: 'Look what I made!',
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);

      /*ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Share result: ${result.status}"),
      ));*/

    }

}

class Vehicle {
  final String title;
  List<String> contents = [];
  final IconData icon;

  Vehicle(this.title, this.contents, this.icon);
}

List<Vehicle> vehicles = [
  new Vehicle(
    'Introduction Exercises',
    [
      'What is Dart?',
      'Who is the developer of Dart?',
      ' What are the differences between Dart and JavaScript?',
      'Which command is used to compile Dart into JavaScript?',
      'Does Dart support comment?',
      'What are the various types of operators in Dart?',
      ' What is the file extension of Dart?',
      'What is pub in Dart?',
      'Which editor is used to enables breakpoint and step by step debugging?',

      'How to create a simple program?',
      'What are the ways to execute Dart Program?'
          'Dart is ( object-oriented programming / Functional Programming ) language.',
      'Dart is developed by ( Facebook / Google / Microsoft',
      'Vs Code is ( framework /programming language / ide )',
      'Dart extension is( .dt / .dart / .dar ).'
          'Semicolons are ( required / optional ).',
      'Do the dart program require a main() function to run the code ( Yes / No ).',
      'Dart uses ( () / {} / [] ) to create a block.'
    ],
    Icons.question_mark,
  ),
  new Vehicle(
    'Varibles Exercises',
    ['Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.',
      'Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.',

      """Write a program that accepts two Strings from user : first_name and last_name and print :
Dr. last_name first_name.""",
      """Write a program that accepts three integers from user : a, b, c , create these new variables and print their value :  
 1) sum = a+b+c  
    
 2) mul = a\*b\*c  
    
 3) diff = mul - sum  
    
 4) aa=a++ (use Unary Operators)  
    
 5) bb=++b (use Unary Operators)  
    
 6) cc=--c  (use Unary Operators) 
 7) aa=aa+bb  (use Assignment Operators)  
    
 8) cc=cc-aa  (use Assignment Operators)  
    
 9) d=a/(b/c)  
    
10) check if d is of type double using is keyword. """,
      """"Write a program that accepts a string from user and check if the first letter and the last letter are equals then print “Equals” else print “Not equals”.
Try to use Conditional Operators.""",
      """What is the ouput of this program?
>```
voidmain() {

const pi = 3.14;

int a = 5, b = -12, c = 27;

bool test1 = (c + b) % a == 0;

print(test1);

c -= 20;

bool test2 = ((c > 0) || (b > 0)) && (5 != a++);

print(test2);

bool test3 = !test1 || !test2;

print(test3);

bool test4 = a + --b + c > pi;

print(test4);
>```
}""",
      """Write a program to print your name in Dart.""",
      """Declare constant type of int set value 7.""",
      """Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100""",
      """Write a program to print an integer entered by the user.""",
      """Write a program to print String entered by the user.""",
      """Write a program to multiply two floating-point numbers.""",
      """Write a program to find quotient and remainder of two integers.""",
      """Write a program to swap two numbers.""",
      """Write a program to calculate the square of a number.""",
      """Write a program in Dart to remove all whitespaces from String.""",
      """Write a dart program to convert String to int.
      """,
    ],
    Icons.question_mark,
  ),
  new Vehicle(
    'Decision Control Exercises',
    [
      """Write a dart program to check if the number is odd or even.""",
      """Write a dart program to check whether a character is a vowel or consonant.""",
      """Write a dart program to create a simple calculator using a switch case.""",
      """Write a dart program to check whether a number is positive, negative, or zero.""",
    ],
    Icons.question_mark,
  ),
  new Vehicle(
      'Loops Exercises',
      [
        """Write a dart program to print your name 100 times.""",
        """Write a dart program to calculate the sum of natural numbers.""",
        """Write a dart program to generate multiplication tables of 5.""",
        """Write a dart program to generate multiplication tables of 1-9.""",
        """Write a dart program to print 1 to 100 but not 41."""
      ],
      Icons.question_mark),
  new Vehicle(
    'Collections in Dart Exercises',
    ['What are the types of list in Dirt?',
      'What is the syntax for declare the map'
          """Create a enum Weekday with constants for MONDAY, TUESDAY,... until SUNDAY.  
Write a program that takes a day from user using its reference (1,2..7) and print "Holiday" if the day is SATURDAY or SUNDAY else print "not Holiday".""",
      """Print the result of every question  
1) Declare and initialize 2 lists :  
- li1 : 1,2,3,4,5,6,7,8  
- li2 : 0,1,4,5,6  
2) Add 9 to li1 and add 7,8,9 to li2  
3) Insert 0 at the beginning of li1 and insert 2,3 after 1 in li2  
4) Replace the last element in li1 with 10 and Replace the first 3 elements in li2 with 11,12,13  
5) Remove 5 and the element at index 3 from li1 and remove 3 elements with index from 4 to 6 from li2  
6) Print "Yes" if li2 contains 7 else print "No"  
7) Shuffle li1 and clear li2  
8) Create new list containing the elements from 2 to 5 of li1.""",
      """Print the result of every question  
1) Declare and initialize 2 Sets :  
- boys : Peter,John,Jamie,Kit,Iain,Taylor  
- girls : Lena,Emilia,Taylor,Sophie,Jamie,Maisie  
2) Add Daniel to boys and Anna & Betsy to girls.  
3) Create new set called "all" that contains both sets.  
4) Create new set called "both" that contains the unisex names(both boys and girls).  
5) Create new set called "onlyBoys" that contains all male-specific name (without unisex names).  
6) remove all the unisex names from boys and remove "Lena" from girls.  
7) Print Yes if "only" contains "Taylor" else print No.  
8) Remove all elements from "all".  
9) Create a list called "listOfBoys" from "onlyBoys" and print its length.""",
      """Print the result of every question  
1) Declare and initialize this Map :  
\- student :  
     name : "John Kane"  
     gender : "Male"  
     age : 21  
     id : 12345678  
     phone : 565689891  
     email : "johnkane@gmail.com"  
2) Add "stateID" : "WA" and "yearEnrolled" : 2017  
3) Check if there is a key called "phone" then delete it else print "NO"  
4) Print all keys  
5) Check if there is a value equal to 20 then print "Yes" else print "No"  
6) Print all values  
7) Update the "age" with 23 and "phone" with 213456789 with diffrent methods  
8) Print the length of this map  
9) Clear it""",
      """Take a list, say for example this one:

  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  and write a program that prints out all the elements of the list that are less than 5.""",
      """Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

If you don’t know what a divisor is, it is a number that divides evenly into another number. For example, 13 is a divisor of 26 because 26 / 13 has no remainder.""",
      """"Take two lists, for example:

  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

  b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
and write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.""",
      """Let’s say you are given a list saved in a variable:

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]. 
Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.""",
      """Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.""",
      """Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.""",
    ],
    Icons.question_mark,
  ),
  new Vehicle(
    'Function Exercises',
    [
      """Write a program in Dart to create print your own name using function.""",
      """Write a program in Dart to print even numbers between intervals using function""",
      """Write a program in Dart that find the number is prime or not using function.""",
      """Write a program in Dart that find the area of a circle using function.""",
      """Write a program in a dart that implements the Pythagorean theorem using function.""",
      """Write a program in Dart to reverse a String using function.""",
      """Write a program in Dart to calculate power of a certain number. For e.g 5^3=125""",
      'What is Lambda Function?',
      """Ask the user for a number and determine whether the number is prime or not.

Do it using a function""",
      """Write a program that takes a list of numbers for example

a = [5, 10, 15, 20, 25]
and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.""",
      """Write a program (function) that takes a list and returns a new list that contains all the elements of the first list minus all the duplicates.""",
      """Write a program (using functions!) that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.""",
      """Implement a function that takes as input three variables, and returns the largest of the three. Do this without using the Dart max() function!""",
    ],
    Icons.question_mark,
  ),
  new Vehicle(
    'OOP Exercises',
    [
      'What is the syntax to declare class?',
      'Does Dart has a syntax for declaring interfaces?',
      'What is the use of this keyword in Dart?',
      'How to create an example of this keyword in Dart?',
      'What are Getters and Setters?',
      'What is Method Overriding in Dart?',
      'What are the types of constructors functions in Dart?',
      """Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.""",
      """Write a dart program to create a class House with properties [id, name, price]. Create a constructor of it and create 3 objects of it. Add them to the list and print all details.""",
      """Write a dart program to create an enum class for gender [male, female, others] and print all values.""",
      """Write a dart program to create a class Animal with properties [id, name, color]. Create another class called Cat and extends it from Animal. Add new properties sound in String.Create an object of a Cat and print all details.""",
      """Write a dart program to create a class Camera with private properties [id, brand, color, price]. Create a getter and setter to get and set values. Also, create 3 objects of it and print all details."""
          ''
    ],
    Icons.question_mark,
  ),
  new Vehicle(
    'Null Safty Exercises',
    [
      """Write a program in a dart to create an age variable and assign a null value to it using ?.""",
      """Write a function named generateRandom() in dart that randomly returns 100 or null. Also, assign a return value of the function to a variable named status that can’t be null. Give status a default value of 0, if generateRandom() function returns null.""",
      '',
      ''
    ],
    Icons.question_mark,
  ),
  new Vehicle(
    'Imports Exercises',
    [
      """
Create the following directory tree :
      
  1.  msg.dart
     Create two fuctions the first print "Program starts" and the second print "Program ends".

  3.  trigo.dart
     Create three functions that print the sin , cos and tan of a given number using math library.

  5.  cal.dart
     Create two functions that print the square and the logarithm of a given number using math library.

  7.  main.dart
    \- Import msg.dart and cal.dart.  
    \- Import trigo.dart with a perfix "trigo".  
    \- Use all functions inside all these 3 files.
      """
    ],
    Icons.question_mark,
  ),


 ///////////////////////// String Exercises
  /*new Vehicle(
    'Strings Lab',
    [
      'What is the use of truncate methods?',
      'What are the various methods to manipulate strings?',
      """Ask the user for a string and print out whether this string is a palindrome or not.

A palindrome is a string that reads the same forwards and backwards.""",
      ''
    ],
    Icons.question_mark,
  ),*/

];



///////////////////////// Befor Update

/**/