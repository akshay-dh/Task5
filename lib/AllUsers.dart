import 'package:flutter/material.dart';
import './services/user_services.dart';
import './helper/DBHelper.dart';
import './model/user.dart';
import 'eachUser.dart';
class Allusers extends StatefulWidget {
 Allusers({super.key});
  @override
  State<Allusers> createState() => _AllusersState();
}

class _AllusersState extends State<Allusers> {
final services=UsersServices();

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Scaffold(
      appBar: AppBar(title: Text("All Users"),),
      body: FutureBuilder(future: services.fetchUsers(),
      builder: (context, snap){
        List<User>? users=snap.data;
        if(!snap.hasData){
          return const Center(
            child: Text("No Data Found"),
          );
        }
        return ListView.builder(
           itemCount:users?.length ,
          itemBuilder: (ctx,idx){
           
          return Padding(padding: EdgeInsets.all(5),
            child: Card(
               child:  InkWell(
                      onTap: () {
                        print("printed");
                        Navigator.push(context,
                         MaterialPageRoute(builder: 
                         (context)=>Eu(),
                         
                         )
                      //print("tapped");
               );},
             child: ExpansionTile(title: Text("Name:${users![idx].name}"),
             children:[
              ListTile(title: Text("Contact:${users![idx].contact}"),),
                            ListTile(title: Text("Email:${users![idx].email}"),),
                                          ListTile(title: Text("Address:${users![idx].address}"),)



             ]
              
                )
                ))
          );
          
                
          
      });
  })));
      
      
        
        
    
    
  }
}