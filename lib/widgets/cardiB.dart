import 'package:flutter/material.dart';

class CardiB extends StatelessWidget {
  const CardiB({Key? key, this.backColor, this.borderRadius, this.gradient, this.child}) : super(key: key);
  final Color? backColor;
  final BorderRadiusGeometry? borderRadius;
final Gradient? gradient;
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backColor == null ? Colors.black45 : backColor,
          gradient: gradient==null?LinearGradient(colors: [Colors.black45,Colors.white]):gradient,
          borderRadius:
              borderRadius == null ? BorderRadius.zero : borderRadius),
  child: child==null?Container():child,  );
  }
}
