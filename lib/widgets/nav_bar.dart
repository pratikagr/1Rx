import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myrx/screens/home.dart';
import 'package:myrx/screens/preview.dart';
import 'package:myrx/screens/profile.dart';
import 'package:myrx/screens/tab.dart';

class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {

  static const List<Widget> _pages = <Widget>[
  home(),
  WebViewApp(),
  Profile(),
];
  
   int _selectedIndex = 0;
    void _onItemTapped(int index) {
     setState(() {
    _selectedIndex = index;
  });
}

  @override
  
  Widget build(BuildContext context) {
  
    return Scaffold(
   
      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: _selectedIndex, //New
      onTap: _onItemTapped,  
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.remove_red_eye_rounded),
          label: 'Preview',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
         ),
            body:Center(
    child: _pages.elementAt(_selectedIndex), //New
  ),
    );
       
  }
}