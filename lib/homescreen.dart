import 'package:emp/AllUsers.dart';
import 'package:emp/routes.dart';
import 'package:flutter/material.dart';
import './services/user_services.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _idController =new TextEditingController();
  final TextEditingController _nameController=new TextEditingController();
  final TextEditingController _contactController=new TextEditingController();
  final TextEditingController _emailController=new TextEditingController();
  final TextEditingController _addressController=new TextEditingController();
  final services=UsersServices();
  
 
  @override
  Widget build(BuildContext context) {
    var _allu=[Allusers()];
    int _selectedTab=0;
    _changeTab(int index){
     setState(() {
       _selectedTab=index;
     });
    }
    
    return  Material(
      child: Scaffold(
        //body:SizedBox(height: 20),
        resizeToAvoidBottomInset: true,
     appBar: AppBar(),
    
      
     

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Center(
                child: Text("Detail Form",
                
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ), 
              SizedBox(height:20),
               Form(child: Column(children: [
                Padding(padding:EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: _nameController,
                   decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_2_outlined),
                    hintText: "Name",
                    border: OutlineInputBorder()
                   ), 
                  ),
                ),
                SizedBox(height: 20,),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                   child: TextFormField(
                    controller: _contactController,
                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: "Contact",
                      border: OutlineInputBorder()
                    ),
                    
                   ),
                 ),
                 SizedBox(height: 20,
                 ),
                 Padding(padding: EdgeInsets.symmetric(horizontal:25),
                   child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email_rounded)
                    ),
                    
                   ),
                 ),
                 SizedBox(height:20),
              
                  Padding(padding: EdgeInsets.symmetric(horizontal:25),
                   child: TextField(
                    controller: _addressController,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                    hintText: "Address",
                    prefixIcon: Icon(Icons.location_city_rounded),
                    ))
                    
                   ),
                   SizedBox(height: 30),
                   ElevatedButton(onPressed: (){
                    setState(() {
                     services.saveUsers(_idController.text, _nameController.text, _contactController.text, _emailController.text, _addressController.text);

                    });
                   }, child: Text("Submit")),
                   SizedBox(height:MediaQuery.of(context).viewInsets.bottom),
                   ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.allusersRoute);
                   }, child: Text("Next"))
                
              
               ],))
            ],
            
            
          ),
        ),
      ),
bottomNavigationBar: BottomNavigationBar(
  
  selectedItemColor: Color.fromARGB(255, 16, 123, 21),
  unselectedItemColor: Colors.grey,
  items: [
  BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label:"Home"),
  
  BottomNavigationBarItem(icon: Icon(Icons.menu),label:"Details"),
  
  ],
  
  currentIndex: _selectedTab,
  onTap: _changeTab,
       
      ),

),      
      );
      
    
    
  }
}