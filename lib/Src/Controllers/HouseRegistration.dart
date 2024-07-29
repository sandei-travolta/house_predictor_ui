
import 'dart:io';

import 'package:house_predictor/Src/FireBase/HousesDatabase.dart';

import 'imagePickerController.dart';

class HouseRegistration{
  HouseDataBase houseDataBase=HouseDataBase();
  void registerUser(String tittle,int price,int size,int parking,int rooms,int year,String location,String uid,File file)async{
    String? imgUrl=await uploadImage(file);
    bool isSaved=await houseDataBase.addHouse(tittle, price, size, parking, rooms, year, location,uid,imgUrl!);
    if(isSaved){
      print("Thats Why I'm the Goat");
    }
  }
}