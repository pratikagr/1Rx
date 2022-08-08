import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myrx/widgets/color_picker.dart';
import 'package:myrx/widgets/sized_box_color.dart';

class fontthm extends StatelessWidget {
  const fontthm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Font Color',
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 4,
                        color: Color.fromRGBO(0, 0, 0, 0.05))
                  ]),
              height: 101,
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
              
                  box(color: Colors.black38,),
                  SizedBox(
                    width: 12,
                  ),
                  box(color: Colors.blueGrey),
                  SizedBox(
                    width: 12,
                  ),
                   colorPick(),
                 ]),
            ),
          ),
        ],
      ),
    );
  }
}
