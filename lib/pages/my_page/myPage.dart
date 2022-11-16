import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ruddy/pages/atlanta.dart';
import 'package:ruddy/widgets/cardV.dart';
import 'package:ruddy/widgets/cardiB.dart';
import 'package:ruddy/widgets/myButton.dart';

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
            Row(
              children: [
                TextButton(onPressed: () {
                  logic.setMusic = true;

                }, child: Obx(() {
                  return Text(
                    "Music",
                    style: GoogleFonts.atomicAge(
                        fontSize: logic.getMusic == true ? 24 : 18,
                        color: logic.getMusic == true
                            ? Colors.white
                            : Colors.white.withOpacity(0.6)),
                  );
                })),
                SizedBox(width: 10),
                TextButton(onPressed: () {
                  logic.setMusic = false;
                }, child: Obx(() {
                  return Text(
                    "Trending",
                    style: GoogleFonts.atomicAge(
                        fontSize: logic.getMusic == false ? 24 : 18,
                        color: logic.getMusic == false
                            ? Colors.white
                            : Colors.white.withOpacity(0.6)),
                  );
                })),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.videogame_asset_outlined,
                            color: Colors.white)),
                    IconButton(
                        onPressed: () {},
                        icon: Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white30,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.notifications_outlined,
                                    color: Colors.white),
                              ),
                            ),
                            Positioned(top: 5,right: 1,
                              child: SizedBox(
                                height: 10,
                                width: 10,
                                child: CircleAvatar(
                                  child: Center(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            )
                          ],
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person_pin,size: 40,
                            color: Colors.white)),
                  ],
                ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
