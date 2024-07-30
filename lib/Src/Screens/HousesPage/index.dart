import 'package:flutter/material.dart';
import 'package:house_predictor/Src/Controllers/httpControler.dart';
import 'package:house_predictor/Src/Models/Reponseodel.dart';
import 'package:house_predictor/Src/Screens/HousesList/index.dart';
import 'package:house_predictor/Src/Screens/Widgets/textWidgets.dart';
class HouseListingpage extends StatefulWidget {
  HouseListingpage({super.key});

  @override
  State<HouseListingpage> createState() => _HouseListingpageState();
}

class _HouseListingpageState extends State<HouseListingpage> {
  TextEditingController sizeController=TextEditingController();

  TextEditingController parkingLotController=TextEditingController();

  TextEditingController roomsController=TextEditingController();

  TextEditingController yearBuitController=TextEditingController();

  int price=0;
  void makePrediction()async{
    PredictionResponseModel? responseModel=await makePredictionRequst(int.parse(sizeController.text),int.parse(parkingLotController.text),int.parse(roomsController.text),int.parse(yearBuitController.text));
    price=responseModel!.prediction.truncate();
    setState(() {

    });
    print(price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NumberTextFormField(
              emailController: sizeController,
              labelText: "Size(Sqft)",
              hintText: "Room Size in Sqft"
          ),
          NumberTextFormField(
              emailController: parkingLotController,
              labelText: "Parking Lot",
              hintText: "Number of Parkng Lots"
          ),
          NumberTextFormField(
              emailController: roomsController,
              labelText: "Rooms",
              hintText: "Number Of Rooms"
          ),
          NumberTextFormField(
              emailController: yearBuitController,
              labelText: "Year",
              hintText: "Year Built"
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: ()=>makePrediction(),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black87
                ),
                child: Center(
                  child: Text("Predict Price",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800
                  ),),
                ),
              ),
            ),
          ),
          Text(
            "Price Approximation ${price} Ksh",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),
          ),
      const SizedBox(height: 35,),
      InkWell(
        onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>HousesListPage())),
        child: Text(
          "Matching Houses",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600
          )
        ),
      ),
        ],
      ),
    );
  }
}
