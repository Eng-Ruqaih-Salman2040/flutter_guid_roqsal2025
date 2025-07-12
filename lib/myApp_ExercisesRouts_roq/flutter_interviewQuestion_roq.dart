import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

void main() => runApp(
      new MaterialApp(
        home: new Flutter_InterViewQuestionBaisc_Roq(),
        debugShowCheckedModeBanner: false,
      ),
    );
const String BisecQI_markdownSrc = '''
Flutter Interview Questions and Answers
--------------------------------
Below are the most basic Flutter interview questions with solutions, which help you clear your interview.
''';
const String FAQs_QI_markdownSrc = '''
FAQs Dart interview Questions and Answers
--------------------------------
Below are the most commonly asked Dart interview questions with answers
''';
////////////////////////// Biasc Dart Question Interview
class Flutter_InterViewQuestionBaisc_Roq extends StatefulWidget {
  @override
  _Flutter_InterViewQuestionBaisc_RoqState createState() =>
      new _Flutter_InterViewQuestionBaisc_RoqState();

  const Flutter_InterViewQuestionBaisc_Roq({Key? key}) : super(key: key);
}

class _Flutter_InterViewQuestionBaisc_RoqState
    extends State<Flutter_InterViewQuestionBaisc_Roq> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: [
          buildMakdown_FunRoq(1),
          Expanded(
            child: new ListView.builder(
              itemCount: Bisec_Qinterviews.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 10,
                  child: new ExpansionTile(
                    title: new Text(
                      Bisec_Qinterviews[i].title,
                      /*style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),*/
                    ),
                    children: <Widget>[
                      new Column(
                        children: _buildExpandableContent(Bisec_Qinterviews[i]),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _buildExpandableContent(Bisec_Qinterview Bisec_Qinterview) {
    List<Widget> columnContent = [];

    for (String content in Bisec_Qinterview.contents)
      columnContent.add(
        Card(
          elevation: 10,
          child: new ListTile(
            title: new Text(
              content, /* style: new TextStyle(fontSize: 18.0),*/
            ),
            //leading: new Icon(Bisec_Qinterview.icon),
            leading: new Icon(Icons.question_answer_outlined),
          ),
        ),
      );

    return columnContent;
  }
}

Container buildMakdown_FunRoq(int Qtype) {
  return Container(
    height: 140,
    width: double.infinity,
    child: Scrollbar(
      child: Markdown(
        data: Qtype==1?BisecQI_markdownSrc
            :FAQs_QI_markdownSrc,
        //onTapLink: _onTapLink,
        selectable: true,
        //syntaxHighlighter: _MyDartSyntaxHighligher(),
        //// We use [GitHub flavored Markdown]: https://github.github.com/gfm/.
        extensionSet: md.ExtensionSet(
          /*blockSyntaxes=*/
          md.ExtensionSet.gitHubFlavored.blockSyntaxes,
          /*inlineSyntaxes=*/
          md.ExtensionSet.gitHubFlavored.inlineSyntaxes,
        ),
      ),
    ),
  );
}

////////////////////////// Advanced Dart Question Interview
class Dart_InterViewQuestionAdvaces_Roq extends StatefulWidget {
  @override
  _Dart_InterViewQuestionAdvance_RoqState createState() =>
      new _Dart_InterViewQuestionAdvance_RoqState();

  const Dart_InterViewQuestionAdvaces_Roq({Key? key}) : super(key: key);
}

class _Dart_InterViewQuestionAdvance_RoqState
    extends State<Dart_InterViewQuestionAdvaces_Roq> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: [
          buildMakdown_FunRoq(2),
          Expanded(
            child: new ListView.builder(
              itemCount: Advance_Qinterviews.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 10,
                  child: new ExpansionTile(
                    title: new Text(
                      Advance_Qinterviews[i].title,
                      /*style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),*/
                    ),
                    children: <Widget>[
                      new Column(
                        children: _buildExpandableContent(Advance_Qinterviews[i]),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _buildExpandableContent(Bisec_Qinterview Bisec_Qinterview) {
    List<Widget> columnContent = [];

    for (String content in Bisec_Qinterview.contents)
      columnContent.add(
        Card(
          elevation: 10,
          child: new ListTile(
            title: new Text(
              content, /* style: new TextStyle(fontSize: 18.0),*/
            ),
            //leading: new Icon(Bisec_Qinterview.icon),
            leading: new Icon(Icons.question_answer_outlined),
          ),
        ),
      );

    return columnContent;
  }
}

class Bisec_Qinterview {
  final String title;
  List<String> contents = [];
  final IconData icon;

  Bisec_Qinterview(this.title, this.contents, this.icon);
}

List<Bisec_Qinterview> Bisec_Qinterviews = [
  new Bisec_Qinterview(
    '1. What Is Google Dart?',
    //Multi itemes
    // ['Bisec_Qinterview no. 1', 'Bisec_Qinterview no. 2', 'Bisec_Qinterview no. 7', 'Bisec_Qinterview no. 10'],
    [
      "Dart is used in association with Flutter to create mobile apps. This is one of Dart's most popular applications nowadays. The fact that Dart and Flutter are cross-platform is a significant advantage. It means that instead of creating two different apps for iPhone and Android, you can create an app with simply one codebase. React Native, a cross-platform implementation of React is Flutter's closest competition. "
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '2. What is the use of Dart?',
    //Multi itemes
    // ['Bisec_Qinterview no. 1', 'Bisec_Qinterview no. 2', 'Bisec_Qinterview no. 7', 'Bisec_Qinterview no. 10'],
    [
      "Dart is used in association with Flutter to create mobile apps. This is one of Dart's most popular applications nowadays. The fact that Dart and Flutter are cross-platform is a significant advantage. It means that instead of creating two different apps for iPhone and Android, you can create an app with simply one codebase. React Native, a cross-platform implementation of React is Flutter's closest competition. "
    ],

    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '3. What are the Features of Dart?',
    [
      """Dart is a Class-Based, Object-Oriented Language with Single Inheritance that follows C Style Syntax.Lexical scoping, closures and optional static types are also supported.
     Dart supports features such as refactoring, breakpoints, and virtual machines, and it comes with a Dart Editor and SDK for an integrated experience.
      Dart can be converted to javascript using the dart2js tool, which is extremely valuable because it allows it to work on all modern browsers with very little code and run on servers using the SDK's Virtual Machine.
      """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '4. What are the ways to execute a Dart Program?',
    [
      """The following are the methods for executing a Dart Program:
Command-line
Dart console applications
    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '5. Define Dart language?',
    [
      """The Dart programming language is type-safe, and it employs static type checking to ensure that a variable's value always corresponds to the fixed type of the variable. This is sometimes referred to as "sound typing." Even though types are required, type annotations are unnecessary due to type inference. Dart's typing system is also versatile, allowing for the usage of a dynamic kind mixed with runtime checks, which can be beneficial for experimentation or for code that requires a lot of emotional behavior.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '6. How will Google Dart get Popular?',
    [
      """Google is working hard to get Dart embraced by web developers and the community and provide support, tools, and an execution environment.

Google will enable Dart in Google Chrome by incorporating a native virtual machine, while Microsoft and Mozilla will be encouraged to follow suit.
Google will release a Cross Compiler that will convert Dart to ECMAScript 3 in browsers that aren't Dart. This will be a big step in integrating Dart Virtual Machine with all major browsers, and it may take some time.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '7. What are the data types in the Dart language?',
    [
      """Strings: String values are represented by the keyword String.
Booleans: A Boolean value is represented by the bool keyword.
Lists: Predefined List classes are used to describe lists.
Maps: Predefined Map classes are used to describe Maps.
The Dynamic Type: The dynamic keyword is explicitly used as a type annotation.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '8. What is type-checking in Dart?',
    [
      """Type checking in Dart is the process of testing and enforcing the constraints of types at either compile-time (i.e., statically) or runtime (i.e., dynamically).

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '9. What is the use of typedef in Dart?',
    [
      """In Dart, Typedef is used to generate a function's user-defined identity (alias). That identity can be used in place of the process in the program code. The function's parameters are defined using typedef. It can also provide the variable with a process.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '10. Does Dart have a syntax for declaring interfaces?',
    [
      """Interface declaration does not have a syntax in Dart. Dart considers class definitions to be interfaces. To use an interface, classes should use the implements keyword. It is required that the implementing class offer a concrete implementation of all of the implemented interface's functions.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '11. What are Streams in Dart?',
    [
      """The longer-term and Stream classes define asynchronous programming in Dart.
A stream can be thought of as a series of asynchronous occurrences. It's similar to an asynchronous Iterable in that instead of receiving a future event once you invite it, the stream informs you that an occasion has arrived.
Streams are formed in various methods, but they have always been used the same way; the asynchronous loop is one.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '12. Which editor is used to enable breakpoint and step-by-step debugging?',
    [
      """Breakpoints and step-by-step debugging are available in the WebStorm editor. At the place where the breakpoint is set, the program will crash. This capability is similar to what you'd find in a Java or C# program. From the WebStorm Editor, you may observe variables, traverse the stack, and step over and into method and function calls.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '13. What is the file extension of Dart?',
    [
      """Dart has a file extension of. Dart.
   """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '14. What is a pub in Dart?',
    [
      """The pub is the Dart programming language's package manager, with reusable libraries and packages for Flutter, AngularDart, and standard Dart apps. Some fundamental commands: To get dependencies, use pub get. To upgrade a dependency, use pub upgrade.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '15. Does Dart Support Comment?',
    [
      """Dart can support remarks. There are different types of comments:
Single-line comments( // )
Multi-line comments ( /**/ )
    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '16. What Are The Various Types Of Operators In Dart?',
    [
      """There are many different types of operators in Dart:

Arithmetic Operators
Equality and Relational Operators
Type test Operators
Bitwise Operators
Assignment Operators
Logical Operators
    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '17. Is Dart easier than JavaScript?',
    [
      """Dart is around two times as quick as JavaScript. Dart is a type-safe programming language that can be compiled using both AOT and JIT compilers. Dart is a flexible programming language that may be used in various tasks. Dart is a scripting language similar to Javascript and is simple to learn if you already know Javascript.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '18. Does Dart support overloading?',
    [
      """Dart doesn't support function overloading in any way. Only within the class where they are declared can static methods be accessed without the class name as a prefix.
    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '19. What are various string functions in Dart?',
    [
      """Various string functions are provided:


toLowerCase(): It is a function that turns all string characters to lowercase.
toUpperCase()	It turns all string characters in this to uppercase.
trim()	removes all whitespace from the string.
compareTo()	It is a function that compares one object to another.
    """
    ],
    Icons.question_answer_outlined,
  ),];

List<Bisec_Qinterview> Advance_Qinterviews = [
  new Bisec_Qinterview(
    '20. What are the core libraries in Dart?',
    [
      """1. Dart includes a large set of core libraries that cover a wide range of programming tasks.

2. Every Dart application has built-in types, collections, and other essential functions (dart: core)

3. Queues, linked lists, hashmaps, and binary trees are more advanced collection types (dart: collection)

4. Converting between multiple data representations, such as JSON and UTF-8, with encoders and decoders (dart: convert)

5. Random number creation and mathematical constants and functions (dart: math)

6. Non-web apps can use file, socket, HTTP, and other I/O methods (dart: io)

7. Future and Stream classes provide asynchronous programming support (dart: async)

8. Fixed-size data (for example, unsigned 8-byte integers) and SIMD numeric types (dart: typed data) are effectively handled by lists.

9. For interoperability with other code that uses a C-style interface, foreign function interfaces are used (dart:ffi)

10. Concurrent programming using isolates- autonomous workers that are comparable to threads but don't share memory and communicate only via messages — are used in concurrent programming (dart: isolate)

11. HTML components and other resources for web applications that require interaction with the browser and the Document Object Model (DOM) (dart: Html)


    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '21. What are the supplementary packages published by Dart?',
    [
      """Many necessary supplemental packages are available from the Dart team, including:
Characters: Characters, also known as Unicode (extended) grapheme clusters, are strings seen as sequences of user-perceived characters. The Characters class provides access to a string's feelings and a mechanism to move between them using a CharacterRange.

Intl: Intl is the most important library. It declares the Intl class, the default locale, and methods for interacting with most internationalization processes. The DateFormat, NumberFormat, and BidiFormatter classes are also defined in this package.

HTTP: This package includes a collection of high-level methods and classes for consuming HTTP resources. It's cross-platform, with mobile, desktop, and browser support. The top-level functions provide the most convenient access to this library.

Crypto: A collection of cryptographic hashing methods written entirely in Dart in a single input digest. It can Invoke the convert method on the sha1, sha256, or md5 objects to hash a list of bytes.

Markdown: Markdown library is a Dart-based portable. On both the client and the server, it can parse Markdown into HTML. A few Markdown extensions are supported and provided in the initial Perl Markdown implementation. The ones that CommonMark supports are activated by default.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '22. What are the platforms used in Dart?',
    [
      """Dart's compiler technology allows you to run code in a variety of ways, including:

Native platform: Dart features a Dart VM with a just-in-time (JIT) compilation and an ahead-of-time (AOT) compiler to produce machine code for programs targeting mobile and desktop platforms.
Web platform: Dart offers both a development time compiler (dartdevc) and a production time compiler (dartprod) for web projects (dart2js). Dart is translated into JavaScript by both compilers.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '23. What is run in Dart?',
    [
      """A Dart runtime is required to execute code, regardless of which platform you use or how you create it. This runtime handles the following essential tasks:

Dart has a managed memory model, which means that unneeded memory is reclaimed by a garbage collector (GC).
Enforcing the Dart type system: While most type checks in Dart are static (at build time), there are a few dynamic type checks (runtime). The Dart runtime, for example, uses type check and cast operators to enforce vigorous checks.
Isolates are managed by the Dart runtime, which is in charge of the primary isolate (where code generally runs) and any secondary isolates that the app creates.
The Dart runtime is included automatically inside self-contained executables on native platforms and is part of the Dart VM provided by the dart run command.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '24. What is the set of writing rules defined by syntax?',
    [
      """A collection of rules for writing programs is defined by syntax. Every language specification has its own set of syntax rules. A Dart program is developed from the following:

Variables and Operators
Classes
Functions
Expressions and Programming Constructs
Decision Making and Looping Constructs
Comments
Libraries and Packages
Typedefs
Data structures represented as Collections / Generics
    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '25. What is Lambda Function?',
    [
      """Lambda is a short way to represent tiny functions.
Arrow functions and lambda functions are both terms for the same thing.
However, keep in mind that you can only return one expression with the Lambda function syntax. It can only be a single-line expression. A lambda function cannot run a block of code, just like a regular function.
To summarise, if your function only returns one expression, you can use the lambda function to quickly represent it in only one line.
Example:
void main() {
printMsg();
print(test());
}
printMsg()= >
print("hello");
int test()= 123;
// returning function
    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '26. What are Getters and Setters?',
    [
      """
The class methods getter and setter interpret data in class fields. A setter is used to set the class field’s data to some variable, whereas a getter is used to read or get the data of the class field.
Getter method
    It's used to get a specific class field and save it in a variable. The default getter function is available in all classes, although it can be changed explicitly. The getter method is defined as follows:

return_type get field_name{
         . . .
}
Setter method
It's used to put data into a variable that the getter method has returned. A default setter function exists for all classes, but it can be explicitly overridden. Using the set keyword, the setter method can be defined as:

set field_name{
         . . .
}
    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '27. What Is Method Overriding In Dart?',
    [
      """
In Dart, method overriding happens when a child class attempts to override the method of the parent class. When a child class extends a parent class, it gains full access to the parent class's methods and thereby overrides the parent class's methods. It's accomplished by redefining a method from the parent class.
When you need to conduct different functions for each child class, this technique comes in handy because we can simply re-define the content by overriding it.

Only the child class, not the parent class, can override a method.
Except for the information present inside the method, which can and cannot be identical, both the child and parent class methods should be perfect copies, from name to parameter list.
The child class cannot override a method that is designated final or static in the parent class.
Because parent class constructors cannot be inherited, the child class cannot override them.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '28. What is a constructor in Dart?',
    [
      """
When an object is created in a program, constructors are used to initialize it. However, the default function Object() { [native code] } will not be built and will be disregarded if you do so. Dart constructors have the same name as the class and no return type.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '29. What is polymorphism in Dart?',
    [
      """
Dart supports polymorphism. Polymorphism allows a group of objects to share the same interface yet have various implementations. Let's add a new concrete class called Plane to the mix. You can use polymorphism to create Blimp and Plane and apply them to the Aircraft variable. You can use their shared attributes because they are both descendants of Aircraft. Each object instance has its own set of class properties and instance values and output that is exclusive to each object's class instance.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '30. What is the Dart final?',
    [
      """
In Dart, the last keyword defines immutable constants or objects. The main difference between the final and const keywords is that absolute is a runtime constant, which means its value can be assigned at runtime rather than at compile-time like the const keyword.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '31. What is a double dot in Dart?',
    [
      """
If you want to call many methods on the same object, you can avoid repeating the same target.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '32. What is encapsulation in Dart?',
    [
      """
Encapsulation is a technique for hiding property or method while still allowing access to it within the scope of the function. Unlike other object-oriented programming languages, Dart encapsulates data at the library level rather than the class level.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '33. What is an optional parameter in Dart?',
    [
      """
Optional parameters are those that are not required to be specified when invoking a function. After the essential parameters, optional parameters must be stated. Optional parameters can also have a default value that is utilized if the function call does not provide one.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '34. What are streams in Dart?',
    [
      """
Streams are a type of data that is delivered asynchronously. User-generated events and data read from files are both included in data sequences. The Stream API provides two methods for processing streams: await for and listen(). Streams allow you to react to mistakes. Single subscription and broadcast streaming are the two types of streams available.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '35. What is Null -aware operator in Dart?',
    [
      """
Dart's null-aware operators allow you to perform calculations based on whether or not a value is null. It's a shortened version of a longer expression. Instead of throwing an error, a null-aware operator can be used to make nullable types useful in Dart. These operators are used in fullback in such a way that you get a value rather than null at the end. Null-aware operators are used in practically every programming language to determine whether a variable's value is Null. Null is represented by the keyword null in the computer language Dart.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '36. What are the types of Inheritance in Dart?',
    [
      """
Single Inheritance: This inheritance occurs when a class inherits from a single parent class.
Multiple Inheritance: This inheritance occurs when a class inherits from more than one parent class. This is not supported by Dart.
Multi-Level Inheritance: This inheritance occurs when a class inherits another child class.
Hierarchical Inheritance: More than one class has the same parent class under hierarchical inheritance.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '37. What are the Snapshots in Dart?',
    [
      """
The Dart relies heavily on snapshots. Snapshots are files that include objects and other runtime information. 
Script snapshots
Snapshot files can be created from Dart programs. All of the program code and dependencies are prepared and ready to run in these folders. This enables quick start-ups.
Full snapshots
The Dart core libraries can be compiled into a snapshot file, allowing them to be loaded quickly. The core libraries are prebuilt snapshots that are loaded at runtime in most standard distributions of the main Dart 
Object snapshots
Dart is an asynchronous programming language. For concurrency, it takes advantage of isolates. Because these are message-passing workers, a mechanism to serialize a message is required. This is accomplished by creating a snapshot from a particular object, which is then passed to another isolate for deserialization.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    '38. What is Dart Strings?',
    [
      """
A sequence of characters is represented by the String data type. A Dart string is made up of UTF 16 code units in a specific order. Single, double, or triple quotes can be used to represent string values in Dart. Single or double quotations are used to denote single-line strings. Multi-line strings are represented by triple quotations.

    """
    ],
    Icons.question_answer_outlined,
  ),
  new Bisec_Qinterview(
    'Conclusion',
    [
      """
Now that you have the Dart interview questions to prepare for your next possible job. Examine the questions mentioned above and try to learn and understand the answers to the best of your abilities to land a well-paying job.


    """
    ],
    Icons.question_answer_outlined,
  ),
];
