import 'package:emp/AllUsers.dart';
import 'package:emp/model/user.dart';
import 'package:flutter/material.dart';
import './AllUsers.dart';
class Eu extends StatelessWidget {
 

 
  @override
  Widget build(BuildContext context) {
    var idx;var users;
    return  Scaffold(
      appBar: AppBar(title:Text(""),),
      body: Column(
        children: [
          Text("Contact:${users[idx].contact}")
        ]
      ),
    );
  }
}