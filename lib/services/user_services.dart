
import '../helper/DBHelper.dart';
import '../model/user.dart';
class UsersServices{
void saveUsers(var id,var name,var contact,var email,var address ){
  
  DBHelper.insert("users", {
 
  "name":name,
  "contact":contact,
  "email":email,
  "address":address});

}
Future<List<User>> fetchUsers() async{
  final usersList=await DBHelper.getData("users");
   // ignore: unnecessary_constructor_name
   return usersList.map((item) =>
      User(
   name:item["name"],
   contact:item["contact"],
   email:item["email"],
   address:item["address"],)).toList();
}
}