import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:house_predictor/Src/FireBase/HousesDatabase.dart';
import 'package:house_predictor/Src/Models/HouseModel.dart';
import 'package:url_launcher/url_launcher.dart';
class HousesListPage extends StatefulWidget {
  const HousesListPage({super.key});

  @override
  State<HousesListPage> createState() => _HousesListPageState();
}
class _HousesListPageState extends State<HousesListPage> {
  HouseDataBase houseDataBase=HouseDataBase();
  List<HouseModel> houses=[];
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri url = Uri(scheme: 'tel', path: "+${phoneNumber}");
    await launchUrl(url);
  }
  @override
  void initState() {
    super.initState();
    fetchHouses();
  }
  void fetchHouses()async{
    houses=await houseDataBase.fetchHouses();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: houses.length==0?Center(child: Text("No houses match criteria")):ListView.builder(
              itemCount:houses.length,
              itemBuilder:(context,index){
                HouseModel houseModel=houses[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: Colors.blueAccent.withOpacity(0.1),
                  height: 250,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                        child: CachedNetworkImage(
                          imageUrl: houseModel.image,
                          fit: BoxFit.fill,
                          placeholder: (context,url)=>Container(
                              height: 40,
                              width: 40,
                              child: Center(child: CircularProgressIndicator())),
                        ),
                      )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(houseModel.tittle,style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ),
                                ),
                                const SizedBox(height: 25,),
                                Text("${houseModel.price} ksh",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                Text("${houseModel.size} SqFt",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                Text("${houseModel.parking} Parking Spaces",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                Text("${houseModel.rooms} rooms",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                Text("Year Buit: ${houseModel.year}",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),),
                                Text("Location:${houseModel.location}",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                const SizedBox(height: 20,),
                                InkWell(
                                  onTap: ()=>_makePhoneCall(houseModel.mobileNo.toString()),
                                  child: Text(houseModel.mobileNo.toString(),style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600
                                  ),),
                                )
                              ],
                            ),
                      ))
                    ],
                  ),
                ),
              ),
            );
          }
          )
          ),
        ),
      );
  }
}
