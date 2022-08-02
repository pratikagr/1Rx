import 'package:flutter/material.dart';

class TexButtonIcon extends StatelessWidget {
  final String buttonText;
  const TexButtonIcon({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
return 
   TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  
                ),
                onPressed: () {},
                child: Row(
                  children: [
                  Icon(Icons.logout),

                    Text(buttonText),

                  ],
                ),
              );
  }
}