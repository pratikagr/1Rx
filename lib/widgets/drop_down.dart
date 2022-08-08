import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class dropDown extends StatefulWidget {
  const dropDown({super.key});

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {

late String dropdownvalue;

  final List<String> items = <String>[
    '1',
    '2',
    '3',
    '4',
  ];
  @override
  void initState(){
   super.initState();
    dropdownvalue = items[0];

  }

  @override
  Widget build(BuildContext context) {
  return DropdownButtonFormField(
               borderRadius: BorderRadius.circular(8),
               
              // Initial Value
              value: dropdownvalue,
               
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),   
               
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
   
            );
  }
}