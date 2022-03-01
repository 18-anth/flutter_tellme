// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_tellme/color/Constraint.dart';
import 'package:flutter_tellme/screens/Call.dart';
import 'package:flutter_tellme/screens/Camera.dart'; 
import 'package:flutter_tellme/screens/status.dart';
import 'package:flutter_tellme/widgets/contacts_list.dart';

class mobileScreenLayout extends StatelessWidget {
  const mobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text(
              "TellMe",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.grey,
                ),
              ),
            ],
            bottom: TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                tabs: [
                  //CHATS
                  Tab(
                    icon: Icon(Icons.chat_bubble),
                  ),
                  //Camera
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  //Call
                  Tab(
                    icon: Icon(Icons.call),
                  ),
                  //status
                  Tab(
                    icon: Icon(
                      Icons.replay_sharp,
                    ),
                  ),
                ]),
          ),
          // ignore: prefer_const_constructors
          body: TabBarView(
            
            children: [
              contact_list(),
             Camera(),
              Call(),
             status(),
          ]),
        ));
  }
}
