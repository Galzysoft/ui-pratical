import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPageLogic extends GetxController{
  Color notHiglighed=Color(0xff1A6465);
  Color higlighed=Color(0xff02F9FE);
  LinearGradient backGradient=LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff2F3032),
        Color(0xff202020),
        Color(0xff171717),
        Color(0xff121212),
        Color(0xff121212),
        Color(0xff121212)
      ]);
  ///obseble
  var ismusic=true.obs;
  bool  get  getMusic{
    return ismusic.value;
}
  Widget musicTab() {
    return Row(
      children: [
        TextButton(onPressed: () {
         setMusic = true;
        }, child: Obx(() {
          return Text(
            "Music",
            style: GoogleFonts.atomicAge(
                fontSize: getMusic == true ? 24 : 18,
                color: getMusic == true
                    ? Colors.white
                    : Colors.white.withOpacity(0.6)),
          );
        })),
        SizedBox(width: 10),
        TextButton(onPressed: () {
        setMusic = false;
        }, child: Obx(() {
          return Text(
            "Trending",
            style: GoogleFonts.atomicAge(
                fontSize: getMusic == false ? 24 : 18,
                color: getMusic == false
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
                    icon:
                    Icon(Icons.videogame_asset_outlined, color: Colors.white)),
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
                        Positioned(
                          top: 5,
                          right: 1,
                          child: SizedBox(
                            height: 10,
                            width: 10,
                            child: CircleAvatar(
                              child: Center(
                                child: Text(
                                  "2",
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 14),
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
                    icon: Icon(Icons.person_pin, size: 40, color: Colors.white)),
              ],
            ))
      ],
    );
  }
// bool getMusicx(){
//
//   return ismusic.value;
// }
  set setMusic(bool ismusic){
    this.ismusic.value=ismusic;
  }

  // void setMusuicx(bool ismusic){
  //   this.ismusic.value=ismusic;
  // }
}