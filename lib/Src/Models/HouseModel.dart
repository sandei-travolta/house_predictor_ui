import 'package:cloud_firestore/cloud_firestore.dart';

class HouseModel{
  final String tittle;
  final int price;
  final int size;
  final int parking;
  final int rooms;
  final int year;
  final String location;
  final String seller;
  final List<String> images;

  HouseModel({required this.tittle, required this.price, required this.size, required this.parking, required this.rooms, required this.year, required this.location, required this.seller, required this.images});


  Map<String,dynamic> toJson()=>{
    "Tittle":tittle,
    "Price":price,
    "Size":size,
    "Parkig":parking,
    "Rooms":rooms,
    "Year":year,
    "Location":location,
    "Sell":seller,
    "Images":images
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
        location: snap["Location"],
        seller: snap["Seller"],
        images: snap["Images"]
    );
  }
}