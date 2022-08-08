import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myrx/models/card.dart';
import 'package:myrx/models/card.dart';
import 'package:myrx/widgets/dropdown_icon.dart';
import 'package:myrx/widgets/general_card.dart';
import 'package:myrx/widgets/outlined_button.dart';
import 'package:myrx/widgets/popup_button.dart';
import 'package:myrx/widgets/route_button.dart';
import 'package:myrx/widgets/text_input.dart';
import '../models/card.dart';
import 'color_theme.dart';
import 'drop_down.dart';
import 'elevated_button.dart';
import 'font_theme.dart';
import 'card_list.dart';

class generalLink extends StatefulWidget {
  const generalLink({super.key});

  @override
  State<generalLink> createState() => _generalLinkState();
}

class _generalLinkState extends State<generalLink> {

final headingController = TextEditingController();
final urlController = TextEditingController();
  String imagePathOne = '';
  final pickerOne = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        child: routeButton(
          buttonText: 'Add',
          route: '/tabone',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextField(
                        controller: urlController,
                          decoration: InputDecoration(     
                         border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColorLight
                          ),
                          borderRadius: BorderRadius.circular(4)),
                          labelText: 'Url of the link',  
                          )),
              SizedBox(
                height: 12,
              ),
       TextField(
                        controller:headingController ,
                          decoration: InputDecoration(     
                         border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColorLight
                          ),
                          borderRadius: BorderRadius.circular(4)),
                          labelText: 'Heading',  
                          )),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Icon',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    MyHomePage(),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                  child: Text(
                'or',
                style: TextStyle(fontSize: 24),
              )),
              SizedBox(
                height: 24,
              ),
              
              OutlinedButton(
                  child: Text('Upload'),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(600, 60),
                    primary: Colors.blue,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () async {
                    final pickedFileOne =
                        await pickerOne.getImage(source: ImageSource.gallery);
                    if (pickedFileOne != null) {
                      setState(() {
                        imagePathOne = pickedFileOne.path;
                      });
                    }
                  }),
              SizedBox(
                height: 24,
              ),
          

 imagePathOne != ""
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Image.file(File(imagePathOne),
                    height: 64,
                    width: 64,),
                  )
                : Container(),


              SizedBox(
                height: 24,
              ),
              colorthm(),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: fontthm(),
              ),
              SizedBox(
                height: 24,
              ),

             ElevatedButton(
        child: Text('Add'),
        style: ElevatedButton.styleFrom(
         
          primary: Theme.of(context).primaryColor,
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontStyle: FontStyle.normal),
        ),
        onPressed: () {
          
        //  addnewCard(headingController.text,urlController.text);
      
        },
      ),
            ],
          ),
        ),
      ),
    );
  }
}
