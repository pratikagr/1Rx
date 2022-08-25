import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myrx/models/edit.dart';
import 'package:myrx/widgets/social_card.dart';
import 'package:myrx/widgets/choose_font.dart';
import 'package:myrx/widgets/color_theme.dart';
import 'package:myrx/widgets/font_theme.dart';
import 'package:myrx/widgets/nav_bar.dart';
import 'package:myrx/widgets/tex_button_icon.dart';
import 'package:myrx/widgets/text_button.dart';
import 'package:myrx/screens/edit.dart';

class Profile extends StatefulWidget {
 final String? name;
 final String? des;
  const Profile({super.key ,this.name, this.des});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
String nameText = '';
String descText = '';

  void changeText(){
    setState(() {
      // nameText = name;
      // descText = des;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    //     bottomNavigationBar: 
    // bar(),
          backgroundColor: Color.fromARGB(255, 250, 253, 255),
          body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/edit');
                      },
                      child: Image.asset('assets/images/edit.png')),
                    InkWell(
                      onTap:(){ Navigator.pushNamed(context, '/logout');
                       } ,
                      child: Image.asset('assets/images/logout.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
         Container(
                      height: 140,
                      width: 140,
                     
                      decoration: BoxDecoration(
                         color: Colors.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(80))
                      ),
                    ),
              Center(
                  heightFactor: 1.4,
                  child: Column(
                    children: [
                      Text(
              'name' + editParams.name,
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                       'desc' + editParams.description,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w300),
                      )
                    ],
                  )),
                  SizedBox(
                    height: 24,
                  ),
                  colorthm(),
                  SizedBox(
                    height: 24,
                  ),
                  chfont(),
                  SizedBox(
                    height: 24,
                  ),
                  fontthm()
            ]),
          )),
    );
  }
}
