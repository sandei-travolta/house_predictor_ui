import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_predictor/Src/Controllers/HouseRegistration.dart';
import 'package:house_predictor/Src/Controllers/UserStateController.dart';
import 'package:house_predictor/Src/Controllers/imagePickerController.dart';

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
  TextEditingController parkingController=TextEditingController();
  TextEditingController mobileNoController=TextEditingController();
  final user=Get.find<UserStateControler>().currentUser;
  File? pickedIMage=null;
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
                  emailController: parkingController,
                  labelText: "Parking",
                  hintText: "Parking Spaces"
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
              NumberTextFormField(
                  emailController: mobileNoController,
                  labelText:"Mobile No", hintText:"+254Format"
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
                    child: pickedIMage!=null?Image.file(pickedIMage!)
                        :
                    IconButton(
                        onPressed: ()async{
                          pickedIMage=await pickImage();
                          setState(() {

                          });
                        },
                        icon: Icon(Icons.camera_alt,size: 45,)),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: ()=>HouseRegistration().registerHouse(
                    nameController.text,
                    int.parse(priceController.text),
                    int.parse(sizeController.text),
                    int.parse(parkingController.text),
                    int.parse(roomsController.text),
                    int.parse(yearController.text),
                    int.parse(mobileNoController.text),
                    locationController.text,
                    user.value!.uid,
                    pickedIMage!,
                    context),
                child: Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text("Post House",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
                ),
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
