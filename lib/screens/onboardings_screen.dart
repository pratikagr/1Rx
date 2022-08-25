import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myrx/screens/onboarding_one.dart';
import 'package:myrx/screens/onboarding_three.dart';
import 'package:myrx/screens/onboarding_two.dart';
import 'package:myrx/widgets/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/route_button.dart';
import '../widgets/text_button.dart';

class onboardingScreen extends StatefulWidget {
  const onboardingScreen({super.key});

  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                      radius: 8,
                      dotColor: Theme.of(context).secondaryHeaderColor),
                ),
                Padding(padding: EdgeInsets.only(left: 16, right: 16)),
                TextButton(
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          ),
          Container(
            height: 550,
            child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    isLastPage = index == 2;
                  });
                },
                controller: controller,
                children: [
                  onboarding(
                      title: 'title',
                      desc: 'desc',
                      image: '/assets/images/doctor.jpg'),
                  onboarding(
                      title: 'title',
                      desc: 'desc',
                      image: '/assets/images/doctor.jpg'),
                  onboarding(
                      title: 'title',
                      desc: 'desc',
                      image: '/assets/images/doctor.jpg')
                ]),
          ),

          //Button
        ],
      ),
      bottomSheet: isLastPage
          ? Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(children: [
                Padding(padding: EdgeInsets.only(left: 16)),
                ElevatedButton(
                  child: Text('Signin'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(190, 55),
                    primary: Theme.of(context).primaryColor,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                SizedBox(
                  width: 16,
                ),
                // Padding(padding: EdgeInsets.only(right: 4)),
                OutlinedButton(
                  child: Text('Signup'),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(190, 55),
                    padding: const EdgeInsets.fromLTRB(24, 4, 24, 4),
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    // print('Pressed');
                    Navigator.pushNamed(context, '/signup');
                  },
                )
              ]),
          )
          : Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(600, 60),
                      primary: Theme.of(context).primaryColor,
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                  )),
            ),
    );
  }
}
