import 'package:emp/routes.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
       // appBar:AppBar(title: Text("Login")),
       
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Welcome",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color:(Color.fromARGB(255, 115, 46, 3))
          )
        ),

        const SizedBox(height: 45),

        Padding( padding: const EdgeInsets.symmetric(vertical: 0),
          child: Form(child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                keyboardType:TextInputType.emailAddress ,
                decoration: const InputDecoration(
                  labelText:"Username",
                  hintText: "Enter Username",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                onChanged:(String value){
                      
                },
                validator: (value){
                  return value!.isEmpty? "Please enter userid":null;
                }
                      
                ),
              ),
              const SizedBox(
                height: 40,
              ),
               Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                 child: TextFormField(
                             keyboardType:TextInputType.emailAddress ,
                             decoration: InputDecoration(
                  labelText:"Password",
                  hintText: "Enter password",
                  prefixIcon: Icon(Icons.password_rounded),
                  border: OutlineInputBorder(),
                             ),
                             onChanged:(String value){
                       
                             },
                             validator: (value){
                  return value!.isEmpty? "Please enter userid":null;
                             }
                       
                             ),
               ),
              SizedBox(height:30,),
              MaterialButton(onPressed: (){
                Navigator.pushNamed(context,MyRoutes.homeRoute);
              },
              child: Text("Login",
              style: TextStyle(color: Colors.white),),
              color: Color.fromARGB(255, 186, 109, 14),
              
              )
        
            ],
          )),
        )          
        
      ],
    ),  
  );
  }
}