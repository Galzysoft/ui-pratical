import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruddy/pages/myPage.dart';

void main() {
  print("ada");
  runApp(const MyApp());
}

/// this is teh root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        backgroundColor: Colors.red,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: Colors.orange,
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}
