import 'package:flutter/material.dart';
import 'package:myrx/main.dart';

class EleButton extends StatelessWidget {
  final String buttonText;
  Color? color;
  EleButton({super.key, required this.buttonText,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      height: 55,
      width: 400,
      child: ElevatedButton(
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
        
          primary: Theme.of(context).primaryColor,
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontStyle: FontStyle.normal),
        ),
        onPressed: () {
       
        },
      ),
    );
  }
}
