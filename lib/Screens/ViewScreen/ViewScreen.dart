import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:postermaker/utils/global_variable.dart';
import 'package:postermaker/utils/list.dart';



import '../EditingScreen/EditScreen.dart';
import 'Components.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

int a = 0;
GlobalKey imgkey =GlobalKey();
TextEditingController txtinput = TextEditingController();
String input = '';
int colorindex = 0;

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          SizedBox(
            width: 10,
          )
        ],
        toolbarHeight: 60,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.pinkAccent,
            Colors.yellowAccent,
            Colors.greenAccent
          ])),
        ),
        title: Image.asset(
          'assets/img/logo2.png',
          height: 50,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: RepaintBoundary(
              key: imgkey,
              child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 1, blurRadius: 3),
                  ]),
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Image.asset(
                          festivalList[imgindex]['img'][a],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: lefts,
                        top: tops,
                        right: rigths,
                        bottom: bottoms,
                        child: Text(
                          '${txtinput.text}',
                          style: TextStyle(fontSize: fontsize,color: colorlist[fontcolorindex]),
                        ),
                      )
                    ],
                  )),
            ),
          ),

          IndexedStack(
            index: a,
            children: [],
          ),

          Spacer(),
          buildContainer(context, colorindex),
          // EditingBox(context),
        ],
      ),
    );
  }

  Widget buildContainer(BuildContext context, int index) {
    return Container(
      height: 100,
      width: 450,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.pinkAccent,
        Colors.yellowAccent,
        Colors.greenAccent
      ])),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 120,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            ...List.generate(
                                              festivalList[imgindex]['img']
                                                  .length,
                                              (index) => inkwal(index),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.image_outlined,
                      color: Colors.black,
                      size: 45,
                    ),
                  ),
                  Text(
                    'Background ',
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: TextField(
                                      controller: txtinput,
                                      textInputAction: TextInputAction.done,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        labelText: 'Your Text Here',
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.greenAccent),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'alignment',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              headofpostion(),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    bottoms += 4;
                                                    tops -= 4;
                                                  });
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 14.0),
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    alignment: Alignment.center,
                                                    decoration: const BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black,
                                                          blurRadius: 1,
                                                          spreadRadius: 0.5,
                                                        )
                                                      ],
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      color: Color(0xff1c2438),
                                                    ),
                                                    child: Icon(
                                                      Icons.arrow_drop_up,
                                                      size: 25,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        rigths += 4;
                                                        lefts -= 4;
                                                      });
                                                    },
                                                    child:Container(
                                                      width: 30,
                                                      height: 30,
                                                      alignment: Alignment.center,
                                                      decoration: const BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black,
                                                            blurRadius: 1,
                                                            spreadRadius: 0.5,
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius.all(Radius.circular(5)),
                                                        color: Color(0xff1c2438),
                                                      ),
                                                      child: Icon(
                                                        Icons.arrow_left_sharp,
                                                        size: 25,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 38,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        rigths -= 4;
                                                        lefts += 4;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      alignment: Alignment.center,
                                                      decoration: const BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black,
                                                            blurRadius: 1,
                                                            spreadRadius: 0.5,
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius.all(Radius.circular(5)),
                                                        color: Color(0xff1c2438),
                                                      ),
                                                      child: Icon(
                                                        Icons.arrow_right,
                                                        size: 25,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    tops += 4;
                                                    bottoms -= 4;
                                                  });
                                                },
                                                child:  Padding(
                                                  padding: const EdgeInsets.only(left: 14.0),
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    alignment: Alignment.center,
                                                    decoration: const BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black,
                                                          blurRadius: 1,
                                                          spreadRadius: 0.5,
                                                        )
                                                      ],
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      color: Color(0xff1c2438),
                                                    ),
                                                    child: Icon(
                                                      Icons.arrow_drop_down,
                                                      size: 25,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              fontsizetext(),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        fontsize++;
                                                      });
                                                    },
                                                    child: fontsizeincrease(),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        fontsize--;
                                                      });
                                                    },
                                                    child: fontsizereduce(),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ]),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          Navigator.of(context).pop();
                                        });
                                      },
                                      child: Text('Save'))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.text_fields,
                        color: Colors.black,
                        size: 45,
                      )),
                  Text(
                    'Text ',
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 85,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              width: double.infinity,
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 120,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              ...List.generate(
                                                colorlist.length,
                                                    (index) => fontcolor(index),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.color_lens_outlined,
                        color: Colors.black,
                        size: 45,
                      )),
                  Text(
                    'Font Color ',
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 95,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () async {
                        RenderRepaintBoundary? boundray = imgkey.currentContext!
                            .findRenderObject() as RenderRepaintBoundary;
                        ui.Image image = await boundray.toImage();
                        ByteData? bytedata =
                            await image.toByteData(format: ui.ImageByteFormat.png);
                        imgdata = bytedata!.buffer.asUint8List();
                        ImageGallerySaver.saveImage(imgdata!,
                            name: 'poster', quality: 100);
                        SnackBar(content: Text('img is Save'),);

                      },
                      icon: Icon(
                        Icons.save_alt,
                        color: Colors.black,
                        size: 45,
                      )),
                  Text(
                    'save',
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 65,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () async {
                        RenderRepaintBoundary? boundray = imgkey.currentContext!
                            .findRenderObject() as RenderRepaintBoundary;
                        ui.Image image = await boundray.toImage();
                        ByteData? bytedata =
                            await image.toByteData(format: ui.ImageByteFormat.png);
                        imgdata = bytedata!.buffer.asUint8List();
                        final directory = await getApplicationDocumentsDirectory();
                        File fileImage = await File('${directory.path}/img.png').create();
                        fileImage.writeAsBytesSync(imgdata!);
                        // await ShareExtend.share(fileImage.path, 'festival');
                      },
                      icon: Icon(
                        Icons.share,
                        color: Colors.black,
                        size: 45,
                      )),
                  Text(
                    'share',
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget inkwal(int index) {
    return InkWell(
        onTap: () {
          setState(() {
            a = index;
          });
        },
        child: Container(
            margin: EdgeInsets.all(5),
            child: Image.asset(festivalList[imgindex]['img'][index])));
  }
  Widget fontcolor(int index) {
    return InkWell(
        onTap: () {
          setState(() {
            fontcolorindex = index;
          });
        },
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: colorlist[index]
          ),
        ));
  }
}
