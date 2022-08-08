import 'package:flutter/material.dart';
import 'package:myrx/widgets/route_button.dart';

class onboarding_two extends StatefulWidget {
  const onboarding_two({Key? key}) : super(key: key);

  @override
  State<onboarding_two> createState() => _onboarding_twoState();
}

class _onboarding_twoState extends State<onboarding_two> {
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
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Text('Skip'),
              ),
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
          routeButton(buttonText: 'Next', route: '/onboardingthree')
        ]
      )
      
      );
    
  }
}
