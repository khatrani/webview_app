import 'package:flutter/material.dart';
import 'package:webview_app/bottom.dart';
import 'package:webview_app/demobottom.dart';
import 'package:webview_app/myhomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyNavigationBar(),
      home:BottombarPage(),
    );
  }
}
