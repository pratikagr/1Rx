import 'package:flutter/material.dart';

class onboarding_three extends StatelessWidget {
  const onboarding_three({Key? key}) : super(key: key);

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
              Padding(padding: EdgeInsets.only(top: 24,right: 16)),
              Card(
                color: Colors.black,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {},
                child: const Text('Skip'),
              ),
            ],
          ),

          //image
          Container(
            height: 350,
            width: 400,
            child: Text('hello'),
            decoration: BoxDecoration(color: Color.fromRGBO(255, 0, 0, 100)),
          ),
          //text
          Container(
              child: Column(
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text('Description'),
            ],
          )),

          //Button
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 16)),
            ElevatedButton(
              child: Text('Signin'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(190, 55),
                primary: Colors.green,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontStyle: FontStyle.normal),
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 16,
            ),
            // Padding(padding: EdgeInsets.only(right: 4)),
            OutlinedButton(
              child: Text('Signup'),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(190, 55),
                padding: const EdgeInsets.fromLTRB(24, 4, 24, 4),
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                primary: Colors.teal,
              ),
              onPressed: () {
                // print('Pressed');
              },
            )
          ]),
        ],
      )),
    );
  }
}
