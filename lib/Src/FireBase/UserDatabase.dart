import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:house_predictor/Src/Models/UserModel.dart';

class UserDataBase{
  FirebaseFirestore db=FirebaseFirestore.instance;
  Future<bool> registerUser(String name,String email,String uid)async{
    try{
      UserModel userModel=UserModel(
          name: name,
          uid: uid,
          email: email
      );
      await db.collection("Users").doc(uid).set(userModel.toJson());
      return true;
    }
    catch(e){
      return false;
    }
  }
  Future<UserModel?> fetchUser(String uid)async{
    try{
      DocumentSnapshot<Map<String, dynamic>> user=await db.collection("Users").doc(uid).get();
      return UserModel.fromSnap(user);
    }
    catch(e){
      return null;
    }
  }
}