import 'package:flutter/material.dart';

import '../Widgets/textWidgets.dart';
class AddHouse extends StatelessWidget {
  AddHouse({super.key});
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
              Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
