import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ruddy/widgets/header.dart';

class MusicList extends StatelessWidget {
  const MusicList({Key? key, required this.headerText, required this.onPressed})
      : super(key: key);
  final String headerText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: Column(
          children: [
            Header(headerText: headerText, onPressed: onPressed),
            Expanded(
              child: SizedBox(
                height: 250,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 250,
                      width: 200,
                      child: Container(color: Colors.transparent,
                        child: Stack(
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/fine.jpg")),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 15,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(children: [
                                  Icon(
                                    Icons.headphones_outlined,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                      child: Text(
                                    "300m",
                                    style: GoogleFonts.aladin(color: Colors.white),
                                  ))
                                ]),
                              ),
                            ),
                            /// positioned widget is been used to  to position things on the stack widget
                            Positioned(
                              bottom: 42,
                              left: -1,
                              child: GestureDetector(onTap: () {

                              },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.purple,
                                      border: Border.all(color: Colors.black, width: 4),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.play_arrow_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 52,
                              right: 1,
                              child: GestureDetector(onTap: () {

                              },
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.purple,
                                      border: Border.all(color: Colors.transparent, width: 4),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.download,size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 1,
                              child:  Text(
                                "TopList",
                                style: GoogleFonts.aladin(color: Colors.white,fontSize: 22),
                              )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
