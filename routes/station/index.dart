import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;
import 'package:mongo_dart/mongo_dart.dart';

import '../../src/const/db_const.dart';
import '../../src/model/export.dart';

Future<Response> onRequest(RequestContext context) async {
  const url = 'api.openchargemap.io';
  const path = '/v3/poi';
  const params = {'key': '<key>'};
  const userAgents = {
    'User-Agent':
        'statio_center/0.0.1'
  };
  //var url = Uri.https('reqres.in', '/api/products/3');
  // var getUrl = Uri.http(url, path, params);
  // var response = await http.get(getUrl);
  var db = await Db.create(MONGO_DB_URL);
  await db.open();
  final collection = db.collection(MONGO_DB_COLLECTION_CHARGE_STATION);
  var chargeStation = <ChargeStation>[];
  await collection.find().forEach((element) {
    chargeStation = chargeStation..add(ChargeStation.fromJson(element));
    print(element);
  });
  print(chargeStation.map((e) => e.toJson()).toList().toString());
  await db.close();
  return Response(
    body: chargeStation.map((e) => e.toJson()).toList().toString(),
  );
}
