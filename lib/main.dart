import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/welcome.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  MyApp();

 @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcome(),
  );
  }
}