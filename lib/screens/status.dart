import 'package:flutter/material.dart';
import 'package:flutter_tellme/color/Constraint.dart';
import 'package:flutter_tellme/info.dart';

class status extends StatelessWidget {
  const status({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: (() {}),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: 
                      Text(
                        info[index]['status'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),          
                    ),
                    
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(info[index]['profilePic'].toString()),
                      radius: 30, 
                    ),
                    
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(fontSize: 13),
                      
                    ),
                    
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 85,
              ),
            ],
          );
        },
      ),
    );
  }
}
