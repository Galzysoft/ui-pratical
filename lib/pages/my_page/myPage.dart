import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ruddy/widgets/header.dart';

import 'logic.dart';

// classname();
class FirstPage extends StatelessWidget {
  /// a getxcontroller instance
  final MyPageLogic logic = Get.put(MyPageLogic());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff2F3032),
            Color(0xff202020),
            Color(0xff171717),
            Color(0xff121212),
            Color(0xff121212),
            Color(0xff121212)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            logic.musicTab(),
            Obx(() {
              return indicators();
            }),
            Header(),
            // ListView.builder(itemBuilder: itemBuilder)
          ]),
        ),
      ),
    );
  }
///
  Row indicators() {
    return Row(
      children: [
        Container(
          height: 6,
          width: logic.getMusic == true ? 25 : 6,
          decoration: BoxDecoration(
              color:
                  logic.getMusic == true ? logic.higlighed : logic.notHiglighed,
              borderRadius: BorderRadius.circular(20)),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 6,
          width: logic.getMusic == false ? 25 : 6,
          decoration: BoxDecoration(
              color: logic.getMusic == false
                  ? logic.higlighed
                  : logic.notHiglighed,
              borderRadius: BorderRadius.circular(20)),
        )
      ],
    );
  }
}


