import 'package:flutter/material.dart';
import 'package:house_predictor/Src/Screens/Widgets/textWidgets.dart';
class HouseListingpage extends StatelessWidget {
  HouseListingpage({super.key});
  TextEditingController sizeController=TextEditingController();
  TextEditingController parkingLotController=TextEditingController();
  TextEditingController roomsController=TextEditingController();
  TextEditingController yearBuitController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      ),
    );
  }
}
