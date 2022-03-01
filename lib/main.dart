import 'package:flutter/material.dart';

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
        backgroundColor: Colors.black,
      ),
      home: Container(
        child: Center(
          child: Text("Hello world"),
        ),
      ),
    );
  }
}
