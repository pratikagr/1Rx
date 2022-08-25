import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class onboarding extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  const onboarding({super.key, required this.title, required this.desc, required this.image});

  @override
  Widget build(BuildContext context) {
    return    Container(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 400,
                  child: Image.asset(image),
                ),
                SizedBox(height: 40),
                //text
                Container(
                    child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(desc),
                  ],
                )),
              ],
            ),
          );
  }
}