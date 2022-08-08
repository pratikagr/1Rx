import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selected;
  

  List<Map> _myJson = [
    {"id": '0', "image": "assets/images/youtube.png", "name": "youtube"},
    {"id": '1', "image": "assets/images/youtube.png", "name": "utube"},
    {"id": '2', "image": "assets/images/youtube.png", "name": "utube"},
  ];
  
  @override
  Widget build(BuildContext context) {
   
    return DropdownButtonHideUnderline(
      
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton<String>(
          isDense: true,
          hint:  Text("Select icon"),
          // value: _selected,
          value: _selected,
          onChanged: (newValue) {
            setState(() {
              _selected = newValue!;
            });
          },
          items: _myJson.map((Map map) {
            return new DropdownMenuItem<String>(
              value: map["id"].toString(),
              // value: _mySelection,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    map["image"],
                    width: 25,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(map["name"])),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
