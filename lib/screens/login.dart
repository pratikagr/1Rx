import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:myrx/widgets/rich_text.dart';
import 'package:myrx/widgets/route_button.dart';
import 'package:myrx/widgets/text_button.dart';
import 'package:myrx/widgets/text_input.dart';

import '../widgets/elevated_button.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16,90,16,0),
          child: Column(
           
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            rich(lineone: 'Welcome to',linetwo: '1Rx',linethree: 'Login to your account'),
              SizedBox(
                height: 80,
              ),
      
              textInput(label: 'Username'),
              SizedBox(
                height: 24,
              ),
              textInput(label: 'Password'),
       SizedBox(
                height: 24,
              ),
      
               Center(child: Text('or')),
                SizedBox(
                height: 24,
              ),
            OutlinedButton(
          child: Text('Login with OTP',
          style: TextStyle(color:Theme.of(context).primaryColor,fontSize: 18,fontWeight: FontWeight.w600),),
          style: ElevatedButton.styleFrom(
           fixedSize: Size(400, 66),
           
          ),
          onPressed: () {
             Navigator.pushNamed(context,'/otpdetail');
          },
        ),
      
        SizedBox(
          height: 120,
        ),
        routeButton(buttonText: 'Login', route: '/bar'),
         SizedBox(
          height: 12,
        ),
        Center(
          child: Row(
      
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              Text('New user?',style: TextStyle(fontSize: 16),),
             TexButton(
              buttonText: 'Sign up'
              
              )
            ],
          ),
        ) 
          ]),
        ),
      ),
    );
  }
}