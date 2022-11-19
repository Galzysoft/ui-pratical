import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ruddy/pages/my_page/logic.dart';

class RecentlyCard extends StatelessWidget {
  RecentlyCard({
    Key? key, required this.imageUrl, required this.play, required this.firstThree,
  }) : super(key: key);
  final String imageUrl;
  final void Function() play;
  final List<String> firstThree;
  /// a getxcontroller instance
  /// here am going to find this  controller becauswe i have   instanciate it in aur main .dart
  final MyPageLogic logic = Get.find<MyPageLogic>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 340,
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 340,
            decoration: BoxDecoration(
                gradient: logic.backGradient,
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Expanded(
                child: ClipRRect(
                  child: Image.asset(fit: BoxFit.cover, imageUrl),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:List.generate(firstThree.length, (index) =>  Text(
                  firstThree[index],
                    style: GoogleFonts.aladin(
                        color: Colors.white60, fontSize: 24),
                  ),),
                ),
              )
            ]),
          ),

          /// positioned widget is been used to  to position things on the stack widget
          Positioned(
            bottom: -2,
            left: -1,
            child: GestureDetector(onTap: play,
              child: Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xff757678),
                    border: Border.all(color: Colors.black, width: 4),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.play_arrow_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
