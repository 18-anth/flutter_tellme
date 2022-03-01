// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_tellme/widgets/contacts_list.dart';
import 'package:flutter_tellme/widgets/web_app_chat_bar.dart';
import 'package:flutter_tellme/widgets/web_chat_List.dart';
import 'package:flutter_tellme/widgets/web_chat_input_box.dart';
import 'package:flutter_tellme/widgets/web_profile_bar.dart';
import 'package:flutter_tellme/widgets/web_search_bar.dart';

class webScreenLayout extends StatelessWidget {
  const webScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
              child: Column(
            children: [
              web_profile_bar(),
              web_search_bar(),
              contact_list(),
            ],
          )),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/backgroundImage.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              //  CHAT APP BAR
              const web_app_chat_bar(),
              // CHAT LIST
              const web_chat_List(),
              // MESSAGE INPUT BOX
              const web_chat_input_box(),
            ],
          ),
        ),
      ],
    ));
  }
}
