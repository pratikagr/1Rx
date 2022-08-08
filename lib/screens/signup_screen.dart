import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/route_button.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transparent Login App',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [


                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Welcome to ',
                            style: const TextStyle(
                              color: Color.fromRGBO(0, 6, 26, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 56,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '1Rx',
                            style: const TextStyle(
                              color: Color(0xff123456),
                            
                              fontWeight: FontWeight.w600,
                              fontSize: 56,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          _loginLabel(),
                          const SizedBox(
                            height: 20,
                          ),
                          _labelTextInput("UserName", "UserName", false),
                          const SizedBox(
                            height: 40,
                          ),
                          _labelTextInput2("Email", "Email", false),
                          const SizedBox(
                            height: 40,
                          ),
                          _labelTextInput3("Mobile Number", "Mobile Number", false),
                          const SizedBox(
                            height: 40,
                          ),
                          _labelTextInput("Password", "Password", true),
                          const SizedBox(
                            height: 40,
                          ),
                          _labelTextInput("Confirm Password", "Confirm Password", true),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: double.infinity,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color(0xff123456),
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            // child: TextButton(
                            //   onPressed: () => {
                            //     if(_formKey.currentState!.validate()) {
                            //     ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                            //           content: Text('Button moved to separate widget'))),
                            //     },
                            //   },
                            //   child: Text(
                            //     "Create",
                            //     style:  const TextStyle(
                            //       color: Colors.white,

                            //       fontSize: 18,
                            //       fontFamily: 'Hind',
                            //     ),
                            //   ),
                            // ),
                            child:Container(
      height: 56,
      width: 400,
      child: ElevatedButton(
        child: Text('Signup'),
        style: ElevatedButton.styleFrom(
         shape: RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(8.0),
               ),
         
          primary: Theme.of(context).primaryColor,
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),
        ),
        onPressed: () {
           if(_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Button moved to separate widget')));
                            
                          
       Navigator.of(context).pushNamed('/bar');
          }  },
      ),
    )
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style:  const TextStyle(
        color: Color.fromRGBO(40, 40, 40,0.7),
        fontWeight: FontWeight.bold,
        fontSize: 18,
        fontFamily: 'Hind'
    ),
  );

}

Widget _loginBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0xff123456),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextButton(
      onPressed: () => {},
      child: Text(
        "Create",
        style:  const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 24,
          fontFamily: 'Hind',
        ),
      ),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      TextFormField(
        validator: (text) {
          if (text == null || text.isEmpty) {
            return 'Can\'t be empty';
          }
          if (text.length < 4) {
            return 'Too short';
          }
          return null;
        },
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(94, 94, 94,0.7),
            fontWeight: FontWeight.w400,
            fontSize: 20,
            fontFamily: 'Hind',
          ),

          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(94, 94, 94,0.7),),
          ),
        ),
      ),
    ],
  );
}
Widget _labelTextInput2(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      TextFormField(
        validator: (text) {
          if (text == null || text.isEmpty) {
            return 'Can\'t be empty';
          }
          if (text.length < 4) {
            return 'Too short';
          }
          if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text))
            return 'Enter a valid email';
          return null;
        },
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(94, 94, 94,0.7),
            fontWeight: FontWeight.w400,
            fontSize: 20,
            fontFamily: 'Hind',
          ),

          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(94, 94, 94,0.7),),
          ),
        ),
      ),
    ],
  );
}
Widget _labelTextInput3(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      TextFormField(
        validator: (text) {
          if (text == null || text.isEmpty) {
            return 'Can\'t be empty';
          }
          if (text.length < 10) {
            return 'enter 10 digit number';
          }
          if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(text))
            return 'Enter a valid number';
          return null;
        },
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(94, 94, 94,0.7),
            fontWeight: FontWeight.w400,
            fontSize: 20,
            fontFamily: 'Hind',
          ),

          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(94, 94, 94,0.7),),
          ),
        ),
      ),
    ],
  );
}
Widget _labelTextInput4(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      TextFormField(
        validator: (text) {
          if (text == null || text.isEmpty) {
            return 'Can\'t be empty';
          }
          if (text.length < 4) {
            return 'Too short';
          }
          if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text))
            return 'Enter a valid email';
          return null;
        },
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(94, 94, 94,0.7),
            fontWeight: FontWeight.w400,
            fontSize: 20,
            fontFamily: 'Hind',
          ),

          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(94, 94, 94,0.7),),
          ),
        ),
      ),
    ],
  );
}

Widget _loginLabel() {
  return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Text(
            "Create your account",
            style:  const TextStyle(
              color: Color.fromRGBO(203,203, 203, 1),
              fontWeight: FontWeight.w500,
              fontSize: 24,
              fontFamily: 'Hind',
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )
  );
}

