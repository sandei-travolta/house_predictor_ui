import 'package:firebase_auth/firebase_auth.dart';

class Authentication{
  FirebaseAuth authenitication=FirebaseAuth.instance;
  Future<String?> registerUser(String email,String password)async{
    try{
      UserCredential user=await authenitication.createUserWithEmailAndPassword(email: email, password: password);
      return user.user!.uid;
    }
    catch(e){
      print(e);
    }
  }
  Future<String?> loginUser(String email,String password)async{
    UserCredential user=await authenitication.signInWithEmailAndPassword(email: email, password: password);
    return user.user!.uid;
  }
}