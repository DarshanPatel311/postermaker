import 'package:flutter/material.dart';
import 'package:postermaker/utils/list.dart';
import 'package:google_fonts/google_fonts.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
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
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: Container(
                height: 450,
                width: 350,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black, spreadRadius: 0.5, blurRadius:2)
                ]),
                child: Image.asset(
                  festivalList[imgindex]['Images'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 70, horizontal: 150),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('View');
                },
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          begin: AlignmentDirectional.bottomStart,
                          end: AlignmentDirectional.bottomEnd,
                          colors: [
                            Colors.pinkAccent,
                            Colors.yellowAccent,
                            Colors.greenAccent
                          ])),
                  child: Center(
                      child: Text(
                    'Edit',
                    style: GoogleFonts.lobster(
                        color: Colors.black,
                        fontSize: 30,
                        ),
                    )),
                ),
              ),
            ),



          ],
        ));
  }
}

int imgindex = 0;
