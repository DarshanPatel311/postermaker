

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:postermaker/Screens/EditingScreen/EditScreen.dart';
import 'package:postermaker/Screens/Home%20Screen/components.dart';

import '../../utils/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool click = false;

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                click = !click;
              });
            },
            icon: (click)
                ? Icon(
                    Icons.list_sharp,
                    size: 35,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.grid_view_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
          ),
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
          (click)
              ? Expanded(
                  child: GridView.builder(
                    itemCount: festivalList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                        crossAxisCount: 2),
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('View');
                            imgindex=index;
                          });
                        },
                        child: festivalbox2(index)),
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: festivalList.length,
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        setState(() {
                          imgindex=index;
                          Navigator.of(context).pushNamed('Edit');
                        });
                      },
                      child: festivalbox(index)),
                ))
        ],
      ),
    );
  }


}
