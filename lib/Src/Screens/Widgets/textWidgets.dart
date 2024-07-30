import 'package:flutter/material.dart';
class PassWordTextFormField extends StatelessWidget {
  const PassWordTextFormField({
    super.key,
    required this.passwordController,
    required this.labelText,
    required this.hintText
  });

  final TextEditingController passwordController;
  final String labelText;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
      child: TextFormField(
        obscureText: true,
        controller: passwordController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)
          ),
          prefixIcon: Icon(Icons.lock),
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(
              color: Colors.black
          ),
        ),
        validator: (value){
          if(value==null||value.trim().isEmpty){
            return "Fiel Required";
          }
        },
      ),
    );
  }
}
class LoginPlainTextFormField extends StatelessWidget {
  const LoginPlainTextFormField({
    super.key,
    required this.emailController,
    required this.labelText,
    required this.hintText,
    required this.icon
  });

  final TextEditingController emailController;
  final String labelText;
  final String hintText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)
          ),
          prefixIcon: Icon(icon),
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(
              color: Colors.black
          ),
        ),
        validator: (value){
          if(value==null||value.trim().isEmpty){
            return "Fiel Required";
          }
        },
      ),
    );
  }
}
class PlainTextFormField extends StatelessWidget {
  const PlainTextFormField({
    super.key,
    required this.emailController,
    required this.labelText,
    required this.hintText
  });

  final TextEditingController emailController;
  final String labelText;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(
              color: Colors.black
          ),
        ),
        validator: (value){
          if(value==null||value.trim().isEmpty){
            return "Fiel Required";
          }
        },
      ),
    );
  }
}
class NumberTextFormField extends StatelessWidget {
  const NumberTextFormField({
    super.key,
    required this.emailController,
    required this.labelText,
    required this.hintText
  });

  final TextEditingController emailController;
  final String labelText;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: emailController,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(
              color: Colors.black
          ),
        ),
        validator: (value){
          if(value==null||value.trim().isEmpty){
            return "Fiel Required";
          }
        },
      ),
    );
  }
}

