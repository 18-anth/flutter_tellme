import 'package:flutter/material.dart';
import 'package:flutter_tellme/color/Constraint.dart';
import 'package:flutter_tellme/components/responsiveLayout.dart';
import 'package:flutter_tellme/screens/mobileScreenLayout.dart';
import 'package:flutter_tellme/screens/webScreenLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TellMe',
      theme: ThemeData.dark().copyWith(
        backgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout: mobileScreenLayout(),
          webScreenLayout: webScreenLayout()),
    );
  }
}