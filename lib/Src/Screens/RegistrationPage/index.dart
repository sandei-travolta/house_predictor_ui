import 'package:flutter/material.dart';
import 'package:house_predictor/Src/Controllers/registationController.dart';
import 'package:house_predictor/Src/Screens/Widgets/textWidgets.dart';

import '../LoginPage/index.dart';
class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlainTextFormField(
                emailController: nameController,
                labelText: "Name",
                hintText: "Full Name",
            ),
            PlainTextFormField(
                emailController: emailController,
                labelText: "Email",
                hintText: "Enter Email",
            ),
            PassWordTextFormField(
                passwordController: passwordController,
                labelText: "Password",
                hintText: "Input PassWord",
            ),
            PassWordTextFormField(
                passwordController: confirmpasswordController,
                labelText: "Password",
                hintText: "Confirm Password",
            ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: ()=>RegistrationController().registerUser(nameController.text,emailController.text, passwordController.text, context),
              child: Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>LoginPage())),
                  child: Text("already have an Acount",style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                  ),
                ),
                const SizedBox(width: 10)
              ],
            )
          ],
        ),
      ),
    );
  }
}
