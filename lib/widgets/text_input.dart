import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class textInput extends StatelessWidget {
  final String label;
  const textInput({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
                          decoration: InputDecoration(     
                         border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green
                          ),
                          borderRadius: BorderRadius.circular(4)),
                          labelText: label,  
                          ));
                      
  }
}