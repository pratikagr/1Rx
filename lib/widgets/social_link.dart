import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myrx/widgets/dropdown_icon.dart';
import 'package:myrx/widgets/outlined_button.dart';
import 'package:myrx/widgets/route_button.dart';
import 'package:myrx/widgets/text_input.dart';
import 'color_theme.dart';
import 'drop_down.dart';
import 'elevated_button.dart';
import 'font_theme.dart';
class socialLink extends StatefulWidget {
  const socialLink({super.key});

  @override
  State<socialLink> createState() => _socialLinkState();
}

class _socialLinkState extends State<socialLink> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        child: routeButton(buttonText: 'Add',route:'/tabone',
        ),
      ),
       body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textInput(label: 'Url of the social link'),
                    SizedBox(
                      height: 12,
                    ),
                    textInput(label: 'Heading'),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Select Icon',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          MyHomePage(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                        child: Text(
                      'or',
                      style: TextStyle(fontSize: 24),
                    )),
                    SizedBox(
                      height: 24,
                    ),
                    outlineButton(buttonText: 'Upload'),
                    SizedBox(
                      height: 24,
                    ),
                    colorthm(),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: fontthm(),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    EleButton(buttonText: 'Add')
                  ],
                ),
              ),
            ),
     );
  }
}