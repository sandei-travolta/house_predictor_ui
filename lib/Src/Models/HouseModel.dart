import 'package:cloud_firestore/cloud_firestore.dart';

class HouseModel{
  final String tittle;
  final int price;
  final String location;
  final String seller;
  final List<String> images;

  HouseModel({required this.tittle, required this.price, required this.location, required this.seller, required this.images});
  Map<String,dynamic> toJson()=>{
    "Tittle":tittle,
    "Price":price,
    "Location":location,
    "Sell":seller,
    "Images":images
  };
  static HouseModel fromSnap(DocumentSnapshot snapshot){
    var snap=snapshot.data() as Map<String,dynamic>;
    return HouseModel(
        tittle: snap["Tittle"],
        price: snap["Price"],
        location: snap["Location"],
        seller: snap["Seller"],
        images: snap["Images"]
    );
  }
}