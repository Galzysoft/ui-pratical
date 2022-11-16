import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ruddy/pages/atlanta.dart';
import 'package:ruddy/widgets/cardV.dart';
import 'package:ruddy/widgets/cardiB.dart';
import 'package:ruddy/widgets/myButton.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

// classname();
class _FirstPageState extends State<FirstPage> {
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
            SizedBox(height: 40,),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Music",
                      style: GoogleFonts.atomicAge(
                          fontSize: 24, color: Colors.white),
                    )),SizedBox(width:10), TextButton(
                    onPressed: () {},
                    child: Text(
                      "Music",
                      style: GoogleFonts.atomicAge(
                          fontSize: 24, color: Colors.white.withOpacity(0.6)),
                    )),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
