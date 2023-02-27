import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;
import 'package:mongo_dart/mongo_dart.dart';
import '../open_charge/config/open_charge_configuration.dart';
import '../src/const/db_const.dart';
import '../src/model/OpenChargeStation.dart';
import '../src/model/export.dart';

Future<Response> onRequest(RequestContext context) async {
  final client = http.Client();

  const url = 'api.openchargemap.io';
  const path = '/v3/poi';
  const header = {
    'X-API-Key': '<key>',
    'User-Agent': 'user_agent'
  };

  final request = Uri.https(
    OPEN_CHARGE_MAP_API_URL,
    OPEN_CHARGE_MAP_API_POI,
    OPEN_CHARGE_OPTIONS,
  );
  final response = await client.get(request, headers: OPEN_CHARGE_HEADER);
  final decodedJson = jsonDecode(response.body) as List<dynamic>;
  final chargeStation = decodedJson
      .map((e) => OpenChargeModel.fromJson(e as Map<String, dynamic>))
      .toList();
  //mongo db write
  var db = await Db.create(MONGO_DB_URL);
  await db.open();
  final collection = db.collection(MONGO_DB_COLLECTION_CHARGE_STATION);
  await collection.insertOne(chargeStation.first.toJson());
  await db.close();



  for (var i = 0; i < chargeStation.length; i++) {
    print(chargeStation[i].addressInfo?.title);
    print(chargeStation[i].mediaItems?.first?.itemURL.toString() ?? 'no image');
  }
  print(chargeStation.length);
  return /*Response(
    body: response.body,
  );*/
      Response(
    body: decodedJson.toString(),
  );
}
