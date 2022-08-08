import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class routeButton extends StatelessWidget {
  final String buttonText;
  final String route;
  Color? color;
  routeButton({super.key, required this.buttonText, required this.route,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 400,
      child: ElevatedButton(
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
         shape: RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(8.0),
               ),
         
          primary: Theme.of(context).primaryColor,
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),
        ),
        onPressed: () {
       Navigator.of(context).pushNamed(route);
        },
      ),
    );
  }
}