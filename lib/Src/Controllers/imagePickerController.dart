import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future<File?> pickImage()async{
  final ImagePicker _picker = ImagePicker();
  final XFile? file=await _picker.pickImage(source: ImageSource.gallery);
  if(file!=null){
    return File(file!.path);
  }
  return null;
}
Future<String?> uploadImage()async{

}