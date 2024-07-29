import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

Future<File?> pickImage()async{
  final ImagePicker _picker = ImagePicker();
  final XFile? file=await _picker.pickImage(source: ImageSource.gallery);
  if(file!=null){
    return File(file!.path);
  }
  return null;
}
Future<String?> uploadImage(File file) async {
  FirebaseStorage _bucket = FirebaseStorage.instance;
  try {
    // Create a reference to the location you want to upload the file to
    Reference ref = _bucket.ref().child('images/${file.uri.pathSegments.last}');

    // Upload the file to Firebase Storage
    UploadTask uploadTask = ref.putFile(file);

    // Wait for the upload to complete
    TaskSnapshot snapshot = await uploadTask;

    // Get the download URL
    String downloadUrl = await snapshot.ref.getDownloadURL();

    return downloadUrl;
  } catch (e) {
    print(e); // Optionally print the error for debugging
    return null;
  }
}