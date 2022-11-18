import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ruddy/pages/my_page/logic.dart';

class Header extends StatelessWidget {
   Header({
    Key? key, required this.headerText, required this.onPressed,

  }) : super(key: key);
final String headerText;
  ///we are creating a void function for our onPress fuction
  final void Function()? onPressed;
final logic= Get.put(MyPageLogic());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
        headerText,
          style: GoogleFonts.aladin(color: Colors.white, fontSize: 24),
        ),
        Expanded(child: SizedBox()),
        TextButton(
            onPressed: onPressed,
            child: Row(
              children: [
                Text(
                  "More",
                  style: GoogleFonts.aladin(
                      color: logic.higlighed, fontSize: 20),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14,
                  color: logic.higlighed,
                )
              ],
            ))
      ],
    );
  }
}