import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UI2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //   ),
      //   itemCount: 13,
      //   itemBuilder: (BuildContext context, int index){
      //     return buildContainerItem();
      //   },
      // ),

      // body: GridView.count(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 20,
      //   primary: false,
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     Container(
      //       height: 100,
      //       width: 100,
      //       color: Colors.redAccent,
      //     ),
      //     Container(
      //       height: 100,
      //       width: 100,
      //       color: Colors.greenAccent,
      //     ),
      //     buildContainerItem(),
      //     buildContainerItem(),
      //     buildContainerItem()
      //   ],
      // ),
      
      body: Stack(
        children: [
          buildBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                buildTitle(),
                // Text("List Item"),
                // Text("List Item"),
                GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                  ),
                  itemCount: 13,
                  itemBuilder: (BuildContext context, int index){
                    return buildContainerItem();
                  },
                ),
                // Text("List Item"),
                // Text("List Item"),
              ],
            ),
          ),
        ],
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff23253A),
        selectedItemColor: Color(0xffFF4181),
        unselectedItemColor: Colors.white54,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart), label: "Share"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        ],
      ),
    );
  }

  Table buildTable() {
    return Table(
                children: [
                  TableRow(
                    children: [
                      buildContainerItem(),
                      buildContainerItem(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildContainerItem(),
                      buildContainerItem(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildContainerItem(),
                      buildContainerItem(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildContainerItem(),
                      buildContainerItem(),
                    ],
                  ),
                ],
              );
  }

  Container buildContainerItem() {
    return Container(
      height: 180,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Color(0xff515593).withOpacity(0.60),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 36.0,
            child: Icon(Icons.people, size: 34.0, color: Colors.white),
            backgroundColor: Color(0xffFF4081),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            "Contact",
            style: TextStyle(
              color: Color(0xffFF4081),
            ),
          )
        ],
      ),
    );
  }

  Widget buildTitle() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Classify transaction",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Classify this transaction into a particular category",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack buildBackground() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff515593),
                Color(0xff23253A),
              ],
            ),
          ),
        ),
        Positioned(
          top: -70,
          left: -30,
          child: Transform.rotate(
            angle: -pi / 4,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffDE54A6), Color(0xffF28CAB)],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
