import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/card.dart';
import 'general_card.dart';

class cardList extends StatefulWidget {
  
  const cardList({super.key});
  @override
  State<cardList> createState() => cardListState();
}

class cardListState extends State<cardList> {
  final List<card> carddetails = [
card(head: 'Youtube', url: 'url'),

card(head: 'YOutube', url: 'url'),
];

void addnewCard(String cdurl , String cdhead){

final newcd = card(
  head: cdhead,
   url: cdurl
);

setState(() {
  carddetails.add(newcd);
});
}
  @override
  Widget build(BuildContext context) {
    return Container(
              child: Column(children:
                 carddetails.map((cd){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: generalCard(heading: cd.head,url: cd.url,),
                  );
                 }).toList()
              ),
      );
    
  }
}