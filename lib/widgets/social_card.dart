import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class socCard extends StatelessWidget {
  const socCard({super.key});

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
                                'Youtube',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  child: Text(
                                    'S',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 19,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                              )
                            ],
                          ),
                          Text(
                            'link',
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
