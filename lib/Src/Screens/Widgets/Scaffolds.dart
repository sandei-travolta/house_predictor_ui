
import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> customSnackBar(String message,BuildContext context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    behavior: SnackBarBehavior.floating,
    content: Text(message),backgroundColor: Colors.red,));
}
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> successCustomSnackBar(String message,BuildContext context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    behavior: SnackBarBehavior.floating,
    content: Text(message),backgroundColor: Colors.green,));
}