import 'package:get/get.dart';
import 'package:house_predictor/Src/Controllers/UserStateController.dart';
import 'package:house_predictor/Src/Models/UserModel.dart';
import 'package:house_predictor/Src/Screens/HomePage/index.dart';
import 'package:house_predictor/Src/Screens/Widgets/Scaffolds.dart';

import '../FireBase/Authentcation.dart';
import '../FireBase/UserDatabase.dart';
import 'package:flutter/material.dart';
class LoginController{
  Authentication authentication=Authentication();
  UserDataBase userDataBase=UserDataBase();
  final userState=Get.find<UserStateControler>();
  void loginUser(String email,String password,BuildContext context)async{
    String? uid=await authentication.loginUser(email, password);
    UserModel? user=await userDataBase.fetchUser(uid!);
    if(user!=null){
      successCustomSnackBar("Logged in Successfully", context);
      userState.setCurrentUser(user);
      Navigator.push(context,MaterialPageRoute(builder: (_)=>HomePage()));
    }
    else{
      customSnackBar("Some Error Occored", context);
    }
  }
}