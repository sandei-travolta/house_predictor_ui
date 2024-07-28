// To parse this JSON data, do
//
//     final predictionResponseModel = predictionResponseModelFromJson(jsonString);

import 'dart:convert';

PredictionResponseModel predictionResponseModelFromJson(String str) => PredictionResponseModel.fromJson(json.decode(str));

class PredictionResponseModel {
  double prediction;

  PredictionResponseModel({
    required this.prediction,
  });

  factory PredictionResponseModel.fromJson(Map<String, dynamic> json) => PredictionResponseModel(
    prediction: json["prediction"]?.toDouble(),
  );

}
