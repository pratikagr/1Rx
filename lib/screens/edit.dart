import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myrx/models/edit.dart';
import 'package:myrx/models/profile.dart';
import 'package:myrx/screens/profile.dart';
import 'package:myrx/widgets/social_card.dart';
import 'package:myrx/widgets/choose_font.dart';
import 'package:myrx/widgets/color_theme.dart';
import 'package:myrx/widgets/font_theme.dart';
import 'package:myrx/widgets/tex_button_icon.dart';
import 'package:myrx/widgets/text_button.dart';
import 'package:myrx/widgets/text_input.dart';
import 'package:provider/provider.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
String nameB = '';
String descB = '';

void updateName(String name){
   editParams.name= name;
}

void updateDesc(String desc){
editParams.description = desc;

final namecontroller = TextEditingController();
final descontroller = TextEditingController();

  String imagePath = '';
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) { Myprofile(desc:descontroller.toString() ,name:namecontroller.text ); },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 250, 253, 255),
            body: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/cancel.png'),
                      InkWell(
                   onTap:()
              { Navigator.pushNamed(context, '/profile');
   updateName(namecontroller.text);
   updateDesc(descontroller.text);

                   },
                        child: Image.asset('assets/images/done.png')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Positioned(
                  top: -50,
                  right: 160,
                  child: Stack(
                    children: [
                      
     imagePath != ""
                      ?Container(
                        child: CircleAvatar(
                            child: ClipOval(
                              child: Image.file(
                                File(imagePath),
                                height: 140,
                                width: 140,
                                fit: BoxFit.fill,
                              ),
                            ),
                            maxRadius: 71),
                      )
                      :Container(
                        height: 140,
                        width: 140,
                       
                        decoration: BoxDecoration(
                           color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(80))
                        ),
                      ),
                      Positioned(
                        left: 95,
                        bottom: 0,
                        child: Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(32)),
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () async {
                              final pickedFile = await picker.getImage(
                                  source: ImageSource.gallery);
                              if (pickedFile != null) {
                                CroppedFile? croppedFile =
                                    await ImageCropper().cropImage(
                                  sourcePath: pickedFile.path,
                                  cropStyle: CropStyle.circle,
                                  aspectRatioPresets: [
                                    CropAspectRatioPreset.square,
                                    CropAspectRatioPreset.ratio3x2,
                                    CropAspectRatioPreset.original,
                                    CropAspectRatioPreset.ratio4x3,
                                    CropAspectRatioPreset.ratio16x9
                                  ],
                                  uiSettings: [
                                    AndroidUiSettings(
                                        toolbarTitle: 'Cropper',
                                        toolbarColor: Colors.deepOrange,
                                        toolbarWidgetColor: Colors.white,
                                        initAspectRatio:
                                            CropAspectRatioPreset.original,
                                        lockAspectRatio: false),
                                    IOSUiSettings(
                                      title: 'Cropper',
                                    ),
                                  ],
                                );
    
                                if (croppedFile != null) {
                                  setState(() {
                                    imagePath = croppedFile.path;
                                  });
                                }
                              }
                            },
                            child: Icon(
                              Icons.edit,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                    heightFactor: 1.4,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              TextField(
                             
                          controller: namecontroller,
                            decoration: InputDecoration(     
                           border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColorLight
                            ),
                            borderRadius: BorderRadius.circular(4)),
                            labelText: 'Name Of the Doctor',  
                            )),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                          controller: descontroller,
                            decoration: InputDecoration(     
                           border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColorLight
                            ),
                            borderRadius: BorderRadius.circular(4)),
                            labelText: 'Description',  
                            )),
                            ],
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 24,
                ),
                colorthm(),
                SizedBox(
                  height: 24,
                ),
                chfont(),
                SizedBox(
                  height: 24,
                ),
                fontthm()
              ]),
            )),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}