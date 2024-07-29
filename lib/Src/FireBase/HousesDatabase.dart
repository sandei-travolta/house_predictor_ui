import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:house_predictor/Src/Models/HouseModel.dart';

class HouseDataBase{
  FirebaseFirestore _db=FirebaseFirestore.instance;
  Future<bool> addHouse(String tittle,int price,int size,int parking,int rooms,int year,String location,String seller,List<String> images)async{
    try{
      HouseModel houseModel=HouseModel(
          tittle: tittle,
          price: price,
          size: size,
          parking: parking,
          rooms: rooms,
          year: year,
          location: location,
          seller: seller,
          images: images
      );
      await _db.collection("Houses").doc().set(houseModel.toJson());
      return true;
    }
    catch(e){
      return false;
    }
  }
  Future<List<HouseModel>> fetchHouses()async{
    List<HouseModel> houses=[];
    try{
      QuerySnapshot querySnapshot=await _db.collection("Houses").get();
      for(var doc in querySnapshot.docs){
        HouseModel houseModel=HouseModel.fromSnap(doc);
        houses.add(houseModel);
      }
      return houses;
    }
    catch(e){
      return houses;
    }
  }
}