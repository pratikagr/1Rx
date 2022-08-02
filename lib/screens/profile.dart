import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myrx/widgets/card.dart';
import 'package:myrx/widgets/tex_button_icon.dart';
import 'package:myrx/widgets/text_button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(19, 68, 120, 1),
          body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/back.png'),
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(
                    //       Icons.arrow_back_ios_new_rounded,
                    //       color: Colors.white,
                    //     )),
                    Image.asset('assets/Share.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      height: 700,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(children: [
                          card(),
                          SizedBox(
                            height: 12,
                          ),
                          card(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(160,200,0,0),
                            child: TexButtonIcon(buttonText: 'logout'),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -50,
                    right: 160,
                    child: CircleAvatar(
                        backgroundImage: AssetImage('assets/youtube.png'),
                        maxRadius: 61),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                      heightFactor: 4,
                      child: Column(
                        children: [
                          Text(
                            'Dr subhraminism',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Specialist',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w300),
                          )
                        ],
                      ))
                ],
              ),
              // Container(
              //   child: Column(children: [
              //     card()
            ]),
          )),
    );
  }
}
