import 'package:flutter/material.dart';
import 'package:myrx/widgets/elevated_button.dart';
import 'package:myrx/widgets/route_button.dart';
import 'package:myrx/widgets/text_button.dart';

class onboarding_one extends StatelessWidget {
  const onboarding_one({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Padding(padding: EdgeInsets.only(top: 2)),
          //header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.only(left: 16, right: 16)),
              Card(
                color: Colors.black,
              ),
              TexButton(buttonText: 'Skip')
            ],
          ),

          //image
        Container(
          height: 300,
          width: 400,
          child: Image.asset('assets/images/doctor.jpg'),
     
),
          //text
          Container(
              child: Column(
            children: [
              Text('Title',style: TextStyle(
                fontSize: 24,
              ),),
              SizedBox(
                height: 24,
              ),
              Text('Description'),
            ],
          )),

          //Button
        routeButton(buttonText: 'Next', route: '/onboardingtwo')
    
        ],
      ));
    
  }
}
