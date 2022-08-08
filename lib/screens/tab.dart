import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myrx/widgets/color_theme.dart';
import 'package:myrx/widgets/drop_down.dart';

import 'package:myrx/widgets/font_theme.dart';
import 'package:myrx/widgets/general_link.dart';
import 'package:myrx/widgets/social_link.dart';
import 'package:myrx/widgets/text_input.dart';



class tabOne extends StatefulWidget {
  const tabOne({super.key});

  @override
  State<tabOne> createState() => _tabOneState();
}

class _tabOneState extends State<tabOne>  {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 11, 60, 98),
            bottom: TabBar( tabs: <Widget>[
              Tab(
                text: 'General',
              ),
              Tab(
                text: 'Social',
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(child:generalLink(),
            ),
            Center(child:socialLink(),
            ),
            
          ],)),
    );
  }
}