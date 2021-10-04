import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UI2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackground(),
          buildTitle(),
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
                SizedBox(height: 10,),
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
