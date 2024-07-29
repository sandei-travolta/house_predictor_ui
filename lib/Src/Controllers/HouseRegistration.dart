
import 'dart:io';

import 'package:house_predictor/Src/FireBase/HousesDatabase.dart';

import 'imagePickerController.dart';

class HouseRegistration{
  HouseDataBase houseDataBase=HouseDataBase();
  void registerUser(String tittle,int price,int size,int parking,int rooms,int year,int mobileNo,String location,String uid,File file)async{
    String? imgUrl=await uploadImage(file);
    bool isSaved=await houseDataBase.addHouse(tittle, price, size, parking, rooms, year,mobileNo,location,uid,imgUrl!);
    if(isSaved){
      print("Thats Why I'm the Goat");
    }
  }
}