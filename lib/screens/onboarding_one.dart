import 'package:flutter/material.dart';
import 'package:myrx/widgets/ElevatedButton.dart';
import 'package:myrx/widgets/TextButton.dart';

class onboarding_one extends StatelessWidget {
  const onboarding_one({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyRx',
      home: Scaffold(
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
              TexButton(buttonText: 'Next')
            ],
          ),

          //image
        Container(
          height: 300,
          width: 400,
          child: Text('hello'),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 0, 0, 100)
          ),
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
          EleButton(buttonText: 'Next', ),
    
        ],
      )),
    );
  }
}
