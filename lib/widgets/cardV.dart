import 'package:flutter/material.dart';

class CardV extends StatelessWidget {
  CardV(
      {Key? key,
      this.cardColor = Colors.teal,
      this.borderRadius,
      this.Maz,
      this.style})
      : super(key: key);
  final Color? cardColor;
  final BorderRadiusGeometry? borderRadius;
  final String? Maz;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.pink, width: 12),
          boxShadow: [
            BoxShadow(color: Colors.cyan, offset: Offset(8, 4), blurRadius: 10)
          ],
          // color: cardColor,
          gradient: RadialGradient(
            colors: [
              Colors.orange,
              Colors.black,
              Color(0xffA03A93),
            ],
          ),
          // gradient:LinearGradient(colors: [Colors.orange,Colors.black],begin: Alignment.bottomLeft, end: Alignment.center ) ,
          borderRadius:
              borderRadius == null ? BorderRadius.zero : borderRadius),
      alignment: Alignment.center,
      child: Text(
        Maz == null ? "aad" : Maz!,
        style: style == null
            ? TextStyle(fontStyle: FontStyle.italic, color: Colors.white)
            : style!,
      ),
    );
  }
}
