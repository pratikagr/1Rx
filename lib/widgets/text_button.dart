import 'package:flutter/material.dart';

class TexButton extends StatelessWidget {
  final String buttonText;
  final Color?color;
  const TexButton({super.key, required this.buttonText, this.color});

  @override
  Widget build(BuildContext context) {
return 
   TextButton(
                style: TextButton.styleFrom(
                  textStyle:  TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                  
                ),
                onPressed: () {},
                child: Text(buttonText,style: TextStyle(color:Theme.of(context).primaryColor),),
              );
  }
}