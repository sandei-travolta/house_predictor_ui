import 'package:cloud_firestore/cloud_firestore.dart';

class HouseModel{
  final String tittle;
  final int price;
  final int size;
  final int parking;
  final int rooms;
  final int year;
  final int mobileNo;
  final String location;
  final String seller;
  final String image;

  HouseModel({required this.tittle, required this.price, required this.size, required this.parking, required this.rooms, required this.year,required this.mobileNo,required this.location, required this.seller, required this.image});


  Map<String,dynamic> toJson()=>{
    "Tittle":tittle,
    "Price":price,
    "Size":size,
    "Parking":parking,
    "Rooms":rooms,
    "Year":year,
    "MobileNo":mobileNo,
    "Location":location,
    "Seller":seller,
    "Images":image
  };
  static HouseModel fromSnap(DocumentSnapshot snapshot){
    var snap=snapshot.data() as Map<String,dynamic>;
    return HouseModel(
        tittle: snap["Tittle"],
        price: snap["Price"],
        size: snap["Size"],
        parking: snap["Parking"],
        rooms: snap["Rooms"],
        year: snap["Year"],
        mobileNo: snap['MobileNo'],
        location: snap["Location"],
        seller: snap["Seller"],
        image: snap["Images"]
    );
  }
}