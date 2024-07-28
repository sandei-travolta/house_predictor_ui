// To parse this JSON data, do
//
//     final predictionRequestModel = predictionRequestModelFromJson(jsonString);

class PredictionRequestModel {
  int sizeSqft;
  int parkingLot;
  int rooms;
  int yearBuilt;

  PredictionRequestModel({
    required this.sizeSqft,
    required this.parkingLot,
    required this.rooms,
    required this.yearBuilt,
  });

  Map<String, dynamic> toJson() => {
    "size(sqft)": sizeSqft,
    "parking_lot": parkingLot,
    "rooms": rooms,
    "year_built": yearBuilt,
  };
}
