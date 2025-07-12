import 'package:flutter/material.dart';


import 'start.dart';

class Quiz_UserInfo_Roq extends StatefulWidget {

  @override
  _Quiz_UserInfo_RoqState createState() => _Quiz_UserInfo_RoqState();

  const Quiz_UserInfo_Roq({Key? key}) : super(key: key);
}

class _Quiz_UserInfo_RoqState extends State<Quiz_UserInfo_Roq> {
  // Define a key to access the form
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';
   bool? isValid;

  // This function is triggered when the user press the "Sign Up" button
  void _trySubmitForm() {

      isValid = _formKey.currentState!.validate();


    if (isValid!) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>Start()));
      //Navigator.pushReplacementNamed(context, 'start');
      print('Everything looks good!');
      print(_userEmail);
      print(_userName);
      print(_password);
      print(_confirmPassword);

      /*
      Continute proccessing the provided information with your own logic
      such us sending HTTP requests, savaing to SQLite database, etc.
      */
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //SvgPicture.asset("lib/Dart_Quiz_routs_roq/assets/icons/bg.svg",
              //fit: BoxFit.contain),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formKey,
                child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  Text(
                    "Let's Play Quiz,",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                       /* color: Colors.white,*/ fontWeight: FontWeight.bold),
                  ),
                  Text("Enter your informations below"),
                  //Spacer(), // 1/6
                  SizedBox(height: 10,),

                    TextFormField(
                      //decoration: InputDecoration(labelText: 'Your Name'),
                      decoration: InputDecoration(
                        labelText: 'Name',
                        //filled: true,
                        //fillColor: Color(0xFF1C2341),
                        hintText: "Full Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      validator: (String? value) {
                        if (value!.trim().isEmpty) {
                          return 'This field is required';
                        }
                        if (value.trim().length < 4) {
                          return 'Username must be at least 4 characters in length';
                        }
                        // Return null if the entered username is valid
                        return null;
                      },
                      onChanged: (value) => _userName = value,
                    ),
                  SizedBox(height: 10,),
                  /////////////////////////////////////////
                  /// Eamil
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        labelText: 'Email'),
                    validator: (value) {
                      // if(value != null){   ////// Or
                      if (value!.trim().isEmpty) {
                        return 'Please enter your email address';
                      }
                      // Check if the entered email has the right format
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      // Return null if the entered email is valid
                      return null;
                    },
                    onChanged: (value) => _userEmail = value,
                  ),

                  Spacer(),
                  OutlinedButton(
                      onPressed: _trySubmitForm,
                      child:// 1/6
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20.0* 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child:  Text(
                            "Lets Start Quiz",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.black),),)
                  ),

                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
          )
        ],


      ),
    );


  }
}

const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
