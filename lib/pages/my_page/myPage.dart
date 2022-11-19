import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ruddy/widgets/header.dart';
import 'package:ruddy/widgets/music_list.dart';
// import 'package:ruddy/widgets/music_list.dart';
import 'package:ruddy/widgets/recentlyCard.dart';

import 'logic.dart';

// classname();
class FirstPage extends StatelessWidget {
  /// a getxcontroller instance
  /// here am going to find this  controller becauswe i have   instanciate it in aur main .dart
   MyPageLogic logic = Get.find<MyPageLogic>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: logic.backGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              logic.musicTab(),
              Obx(() {
                return indicators();
              }),
              Header(headerText: "Recently Played", onPressed: () {
                print("obx");
              },),

              SizedBox(height: 180,width:double.infinity,
                child: ListView.builder(
                  /// its for the  scrollingdirection <--->
                  scrollDirection: Axis.horizontal,itemCount: logic.recentlyPlayedList.length,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RecentlyCard(imageUrl:logic.recentlyPlayedList[index].imageUrl,firstThree: logic.recentlyPlayedList[index].firstThree,play: logic.recentlyPlayedList[index].play, ),
                  );
                },),
              ),
              MusicList(onPressed: () {

              },headerText: "HotList",),
              SizedBox(height: 20,),
              MusicList(onPressed: () {

              },headerText: "HotList",)

            ]),
          ),
        ),
      ),
    );
  }
/// here we created a method for indicators
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



