
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_predictor/Src/FireBase/HousesDatabase.dart';
import 'package:house_predictor/Src/Screens/Widgets/Scaffolds.dart';

import 'imagePickerController.dart';


class HouseRegistration{
  HouseDataBase houseDataBase=HouseDataBase();
  void registerHouse(String tittle,int price,int size,int parking,int rooms,int year,int mobileNo,String location,String uid,File file,BuildContext context)async{
    String? imgUrl=await uploadImage(file);
    bool isSaved=await houseDataBase.addHouse(tittle, price, size, parking, rooms, year,mobileNo,location,uid,imgUrl!);
    if(isSaved){
      successCustomSnackBar("Ad Saved", context);
    }
    else{
      customSnackBar("Something Went Wrong", context);
    }
  }
}