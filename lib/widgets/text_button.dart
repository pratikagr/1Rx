import 'package:flutter/material.dart';

class TexButton extends StatelessWidget {
  final String buttonText;
  const TexButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
return 
   TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  
                ),
                onPressed: () {},
                child: Text(buttonText),
              );
  }
}