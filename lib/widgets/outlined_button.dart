import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class outlineButton extends StatelessWidget {
  Color? color;
    final String buttonText;

   outlineButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 55,
      width: 400,
      child: OutlinedButton(
        child: Text(buttonText),
        style: OutlinedButton.styleFrom(
         
          primary: color,
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontStyle: FontStyle.normal),
        ),
        onPressed: () {
       
        },
      ),
    );
  }
}