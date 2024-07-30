import 'dart:convert';

import 'package:house_predictor/Src/Models/PredictionModel.dart';
import 'package:house_predictor/constants.dart';
import 'package:http/http.dart' as http;
import '../Models/Reponseodel.dart';

Future<PredictionResponseModel?> makePredictionRequst(int sizeSqft,int parkingLot,int rooms,int yearBuilt)async{
  final url=Uri.parse("${apiUrl}/predict");
  final PredictionRequestModel prediction=PredictionRequestModel(
      sizeSqft: sizeSqft,
      parkingLot: parkingLot,
      rooms: rooms,
      yearBuilt: yearBuilt
  );
  final body=jsonEncode(prediction.toJson());
  final headers={'Content-Type':'application/json'};
  final reponse=await http.post(url,body: body,headers: headers);
  if(reponse.statusCode==200){
    final Map<String,dynamic> responseBody=jsonDecode(reponse.body);
    final PredictionResponseModel responseModel=PredictionResponseModel.fromJson(responseBody);
    return responseModel;
  }
  return null;
}