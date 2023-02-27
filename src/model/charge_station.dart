import 'package:mongo_dart/mongo_dart.dart';

class ChargeStation {
  ChargeStation({this.iId, this.name, this.chargeStation});

  ChargeStation.fromJson(Map<String, dynamic> json) {
    iId = json['_id'] as ObjectId?;
    name = json['name'].toString();
    chargeStation = json['charge_station'].toString();
  }

  ObjectId? iId;
  String? name;
  String? chargeStation;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (iId != null) {
      data['_id'] = iId!.toJson();
    }
    data['name'] = name;
    data['charge_station'] = chargeStation;
    return data;
  }
}
