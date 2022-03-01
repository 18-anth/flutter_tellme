import 'package:flutter/material.dart';
import 'package:flutter_tellme/color/Constraint.dart';
import 'package:flutter_tellme/info.dart';

class web_app_chat_bar extends StatelessWidget {
  const web_app_chat_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.087,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg"),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                info[0]['name'].toString(),
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, 
              icon: Icon(Icons.search, size: 20, color: tabColor,),  
              ),
            ],
          )
        ],
      ),
    );
  }
}
