import 'package:flutter/material.dart';
import 'package:house_predictor/Src/Controllers/LoginController.dart';
import 'package:house_predictor/Src/Screens/RegistrationPage/index.dart';

import '../HomePage/index.dart';
import '../Widgets/textWidgets.dart';
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final GlobalKey<FormState> _globalKey=GlobalKey();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlainTextFormField(
                emailController: emailController,
                labelText: "Email",
                hintText: "Your Email",
            ),
            const SizedBox(height: 40,),
            PassWordTextFormField(
                passwordController: passwordController,
                labelText: "Password",
                hintText: "Input Your Password",
            ),
            const SizedBox(height: 50,),
            InkWell(
              onTap: ()=>LoginController().loginUser(emailController.text, passwordController.text, context),
              child: Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>RegistrationPage())),
                  child: Text("Create Account",style: TextStyle(
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

