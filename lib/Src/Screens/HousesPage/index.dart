import 'package:flutter/material.dart';
import 'package:house_predictor/Src/Screens/Widgets/textWidgets.dart';
class HouseListingpage extends StatelessWidget {
  HouseListingpage({super.key});
  TextEditingController sizeController=TextEditingController();
  TextEditingController parkingLotController=TextEditingController();
  TextEditingController roomsController=TextEditingController();
  TextEditingController yearBuitController=TextEditingController();
  int price=0;
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
          Text(
            "Price Approximation ${price}",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),
          ),
      Text(
        "Matching Houses",
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
        )
      ),
        ],
      ),
    );
  }
}
