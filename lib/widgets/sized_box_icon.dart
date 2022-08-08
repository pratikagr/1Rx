import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class boxi extends StatelessWidget {
  final Color color;
 
  const boxi({super.key,required this.color});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                     width: 64.0,
                     height: 61.0,
                     child: DecoratedBox(
                      child: Icon(Icons.font_download_rounded),
                       decoration: BoxDecoration(

                        border: Border.all(
                          width: 2,
                          color: Color.fromRGBO(229, 235, 255, 1)
                        ),
                        borderRadius: BorderRadius.circular(4),
                        ),
                     ),
                   );
  }
}