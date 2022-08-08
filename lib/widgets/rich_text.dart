import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class rich extends StatelessWidget {
  final String lineone ;
   final String linetwo ;
    final String linethree ;
  const rich({super.key,required this.lineone, required this.linetwo, required this.linethree});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
Text(lineone,style: TextStyle(fontSize: 56,color:Theme.of(context).primaryColorDark,fontWeight: FontWeight.w500)),
Text(linetwo,style: TextStyle(fontSize: 56,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w500)),
Text(linethree,style: TextStyle(fontSize: 24,color:Theme.of(context).indicatorColor,fontWeight: FontWeight.w500)),
    ],

    );
      
  
  }
}