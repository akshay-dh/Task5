import 'package:emp/AllUsers.dart';
import 'package:emp/homescreen.dart';
import 'package:emp/loginscreen.dart';
import 'package:emp/routes.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       //home:Loginpage(),
       routes: {
        "/":(context) => Loginpage(),
         MyRoutes.homeRoute:(context) => HomeScreen(),
        MyRoutes.loginRoute:(context) => Loginpage(),
        MyRoutes.allusersRoute:(context) => Allusers()
       },
       
        );
       }
      }