import 'package:flutter/material.dart';
import 'package:house_predictor/Src/Screens/AddHouse/index.dart';
import 'package:house_predictor/Src/Screens/HousesPage/index.dart';
import 'package:house_predictor/Src/Screens/MessageScreen/index.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>AddHouse())),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black87
                ),
                child: Center(
                  child: Text("List House",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800
                  ),),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>HouseListingpage())),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black87
                ),
                child: Center(
                  child: Text("Looking For a House",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800
                  ),),
                ),
              ),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>MessageScreen())),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black87
                ),
                child: Center(
                  child: Text("Messages",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800
                  ),),
                ),
              ),
            ),
          )*/
        ],
      ),
    );
  }
}
