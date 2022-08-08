import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myrx/widgets/sized_box_color.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class colorthm extends StatefulWidget {
  const colorthm({super.key});

  @override
  State<colorthm> createState() => _colorthmState();
}

class _colorthmState extends State<colorthm> {
  Color mycolor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Color theme',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 4,
                        color: Color.fromRGBO(0, 0, 0, 0.05))
                  ]),
              height: 101,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    box(
                      color: Color.fromARGB(96, 204, 10, 10),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    box(color: Color.fromARGB(255, 2, 12, 17)),
                    SizedBox(
                      width: 12,
                    ),
                    OutlinedButton(
                      child: Icon(Icons.add,color: Colors.black,),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: Size(64, 61),
                       
                      ),      
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('pick a color'),
                                content: SingleChildScrollView(
                                    child: ColorPicker(
                                  pickerColor: Colors.transparent,
                                  onColorChanged: (Color color) {
                                    setState(() {
                                      mycolor = color;
                                    });
                                  },
                                )),
                                actions: <Widget>[
                                  ElevatedButton(
                                    child: Text('done'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });
                      },
                    
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
