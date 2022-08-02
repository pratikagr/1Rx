import 'package:flutter/material.dart';
import 'package:myrx/screens/onboarding_one.dart';
import 'package:myrx/screens/onboarding_three.dart';
import 'package:myrx/screens/profile.dart';
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
      debugShowCheckedModeBanner: false,
      home: Profile()
          
    );}
}