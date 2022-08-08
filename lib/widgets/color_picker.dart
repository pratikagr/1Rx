import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class colorPick extends StatefulWidget {
  const colorPick({super.key});

  @override
  State<colorPick> createState() => _colorPickState();
}

class _colorPickState extends State<colorPick> {
  Color mycolor = Colors.lightBlue;
  @override
  Widget build(BuildContext context) {
    return   OutlinedButton(
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
                    
                    );
  }
}