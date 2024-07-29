import 'package:get/get.dart';
import 'package:house_predictor/Src/Models/UserModel.dart';

class UserStateControler extends GetxController{
  final Rx<UserModel?> currentUser=Rx<UserModel?>(null);
  setCurrentUser(UserModel user){
    this.currentUser.value=user;
  }
  clearUser(){
    this.currentUser.value=null;
  }
}