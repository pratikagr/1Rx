import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class box extends StatelessWidget {
  final Color color;
 
  const box({super.key,required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: color,
        fixedSize: Size(64, 61)
      ),
      onPressed: (){

    }, child: null);
  }
}