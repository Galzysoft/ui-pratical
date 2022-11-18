import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruddy/pages/my_page/logic.dart';

class RecentlyCard extends StatelessWidget {
  RecentlyCard({
    Key? key,
  }) : super(key: key);

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
                gradient: logic.backGradient,borderRadius: BorderRadius.circular(10)
            ),
            child: Row(children: []),
          ),

          /// positioned widget is been used to  to position things on the stack widget
          Positioned(
            bottom: -2,
            left: -1,
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
        ],
      ),
    );
  }
}
