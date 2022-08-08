import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class generalCard extends StatelessWidget {
  final String heading;
  final String url;
  const generalCard({super.key,required this.heading,required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 4,
                        color: Color.fromRGBO(0, 0, 0, 0.05))
                  ]),
      child: Card(
        elevation: 0,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/youtube.png',
                        height: 80,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            
                            children: [
                              Text(
                                heading,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  child: Text(
                                    'G',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 19,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                              )
                            ],
                          ),
                          Text(
                           url,
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Icon(Icons.more_vert_rounded),
              ),
            ]),
      ),
    );
  }
}