import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../widgets/elevated_button.dart';
import '../widgets/rich_text.dart';
import '../widgets/text_button.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,90,16,0),
        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          rich(lineone: 'Verify your',linetwo: 'Account',linethree: 'Enter your otp'),
            SizedBox(
              height: 80,
            ),

 OTPTextField(
  length: 5,
  width: MediaQuery.of(context).size.width,
  fieldWidth: 56,
  style: TextStyle(
    fontSize: 17
  ),
  textFieldAlignment: MainAxisAlignment.spaceAround,
  fieldStyle: FieldStyle.underline,
  onCompleted: (pin) {
    print("Completed: " + pin);
  },
),

      SizedBox(
        height: 120,
      ),
      EleButton(buttonText: 'Login'),
       SizedBox(
        height: 12,
      ),
      Center(
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Didn"t"get the otp?',style: TextStyle(fontSize: 16),),
           TexButton(buttonText: 'Resend')
          ],
        ),
      ) 
      
      
        ]),
      ),
    );
  }
}