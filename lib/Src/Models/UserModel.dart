
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
   final String name;
   final String uid;
   final String email;

  UserModel({required this.name, required this.uid, required this.email});
  Map<String,dynamic> toJson()=>{
    "Name":name,
    "Uid":uid,
    "Email":email
  };
  static UserModel fromSnap(DocumentSnapshot snapshot){
    var snap=snapshot.data() as Map<String,dynamic>;
    return UserModel(name: snap["Name"],
        uid:snap["Uid"],
        email:snap["Email"]
    );
}
}