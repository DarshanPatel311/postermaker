

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/list.dart';
import '../EditingScreen/EditScreen.dart';
import 'ViewScreen.dart';



Container alignmentleft() {
  return Container(
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
  );
}
Container alignmentrigth() {
  return Container(
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
  );
}
Container fontsizereduce() {
  return Container(
    width: 40,
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
    child: Text(
      'A-',
      style: TextStyle(color: Colors.white),
    ),
  );
}
Container fontsizeincrease() {
  return Container(
    width: 40,
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
    child: Text(
      'A+',
      style: TextStyle(color: Colors.white),
    ),
  );
}
Padding fontsizetext() {
  return Padding(
    padding: const EdgeInsets.only(right: 38.0),
    child: Text(
      'Font size',
      style: TextStyle(color: Colors.white),
    ),
  );
}
Text headofpostion() {
  return Text(
    'Alignament',
    style: TextStyle(color: Colors.white),
  );
}
Padding alignmenttop() {
  return Padding(
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
  );
}
Text headofalignments() {
  return Text(
    'Edit Your Font Style',
    style: TextStyle(color: Colors.white, fontSize: 15),
  );
}

Widget inkwal(int index) {
  return InkWell(
      onTap: () {
        // setState(() {
          a = index;
        // });
      },
      child: Container(
          child: InkWell(
            onTap: () {
              a=index;
            },

              child: Image.asset(festivalList[imgindex]['img'][index]))));
}
Padding alignmentbottom() {
  return Padding(
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
  );
}
