import 'package:flutter/material.dart';

import '../Widgets/textWidgets.dart';
class AddHouse extends StatefulWidget {
  AddHouse({super.key});

  @override
  State<AddHouse> createState() => _AddHouseState();
}

class _AddHouseState extends State<AddHouse> {
  TextEditingController nameController=TextEditingController();

  TextEditingController priceController=TextEditingController();

  TextEditingController sizeController=TextEditingController();

  TextEditingController roomsController=TextEditingController();

  TextEditingController yearController=TextEditingController();

  TextEditingController locationController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50,),
              PlainTextFormField(
                emailController: nameController,
                labelText: 'Tittle',
                hintText: 'House Tittle',
              ),
              NumberTextFormField(
                  emailController: priceController,
                  labelText: "Price",
                  hintText: "House Price"
              ),
              NumberTextFormField(
                  emailController: sizeController,
                  labelText: "Size",
                  hintText: "Size(sqFt)"
              ),
              NumberTextFormField(
                  emailController: roomsController,
                  labelText: "Rooms",
                  hintText: "No of Rooms"
              ),
              NumberTextFormField(
                  emailController: yearController,
                  labelText:"Year", hintText:"Year Built"
              ),
              PlainTextFormField(
                  emailController: locationController,
                  labelText: "Loacation",
                  hintText: "House Location"
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Select Image",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey
                  ),
                  child: Center(
                    child: Icon(Icons.camera_alt,size: 45,),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Post House",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
