import 'package:flutter/material.dart';

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
          ElevatedButton(
            child: Text('Next'),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(400, 55),
              primary: Colors.green,
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.normal),
            ),
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}
