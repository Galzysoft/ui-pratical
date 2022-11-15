import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  const myButton({
    Key? key, this.onTap, this.btnText,
  }) : super(key: key);
  final Function()? onTap;
  final String ?btnText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(20)),
      child: InkWell(
          onTap:onTap

          ,
          child: Center(
              child: Text(
               btnText==null?"":btnText!,
                style: TextStyle(color: Colors.white),
              ))),
    );
  }
}