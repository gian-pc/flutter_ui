

import 'package:flutter/material.dart';
import 'package:flutter_codigo3_ui/pages/ui_1_page.dart';
import 'package:flutter_codigo3_ui/pages/ui_2_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: UI1Page(),
      initialRoute: 'ui1',
      routes: {
        "ui1":(BuildContext context)=>UI1Page(),
        "ui2":(BuildContext context)=>UI2Page(),
      },
    );
  }
}
