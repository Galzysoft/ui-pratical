import 'package:flutter/material.dart';

class Atlanta extends StatefulWidget {
  const Atlanta({Key? key}) : super(key: key);

  @override
  State<Atlanta> createState() => _AtlantaState();
}

class _AtlantaState extends State<Atlanta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Center(child: goTv(context)),
    );
  }

  InkWell goTv(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.pop(context);
    },child: Text("shdhdhhd${binta()}"));
  }


  Widget Garri(){
    return Container();
  }

  int  binta(){
    return 6;
  }
}
