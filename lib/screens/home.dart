import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myrx/widgets/card_list.dart';
import 'package:myrx/widgets/social_card.dart';
import 'package:myrx/widgets/route_button.dart';
import '../widgets/elevated_button.dart';
import '../widgets/general_card.dart';
import '../widgets/general_link.dart';
import '../models/card.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 247, 247),
      body: SingleChildScrollView(child: 
      Padding(
        padding: const EdgeInsets.fromLTRB(16,48,16,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          Row(children: [

           Container(
                      height: 80,
                      width: 80,
                     
                      decoration: BoxDecoration(
                         color: Colors.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(80))
                      ),
                    ),

                      SizedBox(
                        width: 24,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          Text('Hey Doctor Sibasis',style:Theme.of(context).textTheme.headline1 ),
                          SizedBox(
                            height: 2,
                          ),
                               Text('Good morning',style: Theme.of(context).textTheme.headline2)
                        ],
                      )
          ],

          ),
          SizedBox(
            height: 32,
          ),
          Text('Your Links',style: Theme.of(context).textTheme.bodyText1,
          ),
          cardList(),
          SizedBox(
            height: 300,
          ),
        //  routeButton(buttonText: 'Add links', route: '/tabone')
        ],),
      )
      ),
       bottomSheet: Padding(
        padding: EdgeInsets.all(16),
         child: Container(
          width: MediaQuery.of(context).size.width,
          child: routeButton(buttonText: 'Add links',route:'/tabone',
          ),
             ),
       ),
    );
  }
}