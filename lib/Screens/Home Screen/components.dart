import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/list.dart';




Widget festivalbox(int index) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(height: 8,),
      Container(
        height: 100,
        width: 430,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: festivalList[index]['Color']
        ),child: Row(
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(festivalList[index]['Festival name'], style: GoogleFonts.lobster(
                textStyle:
                TextStyle(color: Colors.black, letterSpacing: .5,fontSize: 25),
              ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(festivalList[index]['Text'],style: GoogleFonts.kalam(
                textStyle:
                TextStyle(color: Colors.black, letterSpacing: .5,fontSize: 15),
              ),),
            ),
          ],
        ),
          Spacer(),
          CircleAvatar(
            backgroundImage: AssetImage(festivalList[index]['Images']),
            radius: 30,
          ),
          SizedBox(width: 15,)
        ],
      ),
      ),
      SizedBox(height: 5,),

    ],
  );
}
Widget festivalbox2(int index) {
  return Column(
    children: [
      SizedBox(height: 10,),
      Container(
        height: 210,
        width: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: festivalList[index]['Color'],
        ),child: Column(
        children: [
          SizedBox(height: 5,),
          CircleAvatar(
            backgroundImage: AssetImage(festivalList[index]['Images']),
            radius: 70,
          ),
          Text(festivalList[index]['Festival name'], style: GoogleFonts.lobster(
            textStyle:
            TextStyle(color: Colors.black, letterSpacing: .5,fontSize: 25),
          ),
          ),

        ],
      ),
      ),


    ],
  );
}