import 'package:flutter/material.dart';
import 'package:myrx/screens/edit.dart';
import 'package:myrx/screens/home.dart';
import 'package:myrx/screens/login.dart';
import 'package:myrx/screens/login_with_otp.dart';
import 'package:myrx/screens/onboarding_two.dart';
import 'package:myrx/screens/onboardings_screen.dart';
// import 'package:myrx/screens/otp_details.dart';
import 'package:myrx/screens/otp_verification.dart';
// import 'package:myrx/screens/otp_verify.dart';
import 'package:myrx/screens/signup_screen.dart';
import 'package:myrx/screens/tab.dart';
import 'package:myrx/screens/onboarding_one.dart';
import 'package:myrx/screens/onboarding_three.dart';
import 'package:myrx/screens/preview.dart';
import 'package:myrx/screens/profile.dart';
import 'package:myrx/widgets/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyRx',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(19, 68, 120, 1),
        accentColor: Color.fromRGBO(255, 0, 0, 1),
        primaryColorLight: Color.fromRGBO(143, 143, 143, 1),
        primaryColorDark: Color.fromRGBO(0, 6, 26, 1),
        indicatorColor: Color.fromRGBO(203,203, 203, 1),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 6, 26, 1)),
          headline2: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic,color: Color.fromRGBO(143, 143, 143, 1),),
          bodyText1: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            color: Color.fromRGBO(0, 6, 26, 1),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: onboarding_one(),
        initialRoute: '/',
          routes: {
            '/' :(context) => onboardingScreen(),
            '/onboardingtwo':(context) => onboarding_two(),
            '/onboardingthree':(context) => onboarding_three(),
            '/signup':(context) => details(),
            '/login':(context) => login(),
            '/otpdetail':(context) => LoginPage(),
            '/verify':(context) => verification(),
            '/bar':(context) => bar(),
            '/tabone':(context) => tabOne(),
            '/edit':(context) => Edit(),
             '/logout':(context) => login(),
             '/profile':(context) => Profile(),
          },
    );}
} 