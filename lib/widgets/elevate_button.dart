import 'package:flutter/material.dart';

class EleButton extends StatelessWidget {
  final String buttonText;
  Color? color;
  EleButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 400,
      child: ElevatedButton(
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
         
          primary: color,
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontStyle: FontStyle.normal),
        ),
        onPressed: () {},
      ),
    );
  }
}
