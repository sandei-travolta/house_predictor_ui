import 'package:house_predictor/Src/FireBase/Authentcation.dart';
import 'package:house_predictor/Src/FireBase/UserDatabase.dart';
import 'package:flutter/material.dart';
import 'package:house_predictor/Src/Screens/LoginPage/index.dart';
class RegistrationController{
  Authentication authentication=Authentication();
  UserDataBase userDataBase=UserDataBase();
  void registerUser(String name,String email,String password,BuildContext context)async{
    String? uid=await authentication.registerUser(email, password);
    bool? register=await userDataBase.registerUser(name, email, uid!);
    if(register){
      Navigator.push(context,MaterialPageRoute(builder: (_)=>LoginPage()));
      print("registered");
    }
    else{
      print("some error");
    }
  }
}