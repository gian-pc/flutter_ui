import 'package:flutter/material.dart';
import 'package:flutter_codigo3_ui/pages/ui_2_page.dart';

class UI1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          //Page 1
          buildPage1(),

          //Page 2
          buildPage2(context),
        ],
      ),
    );
  }

  Widget buildPage2(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text("Ir al UI 2"),
        onPressed: (){
          Navigator.pushNamed(context, 'ui2');
        },
      ),
    );
  }

  Widget buildPage1() {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue,
          child: Image.network(
            "https://e00-marca.uecdn.es/assets/multimedia/imagenes/2021/02/23/16140471951208.jpg",
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 70.0),
                Text(
                  "Sábado",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                Text(
                  "24°",
                  style: TextStyle(color: Colors.white, fontSize: 50.0),
                ),
                Text(
                  "10:47",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 66,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
