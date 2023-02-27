import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_pool/mongo_pool.dart';
import 'src/const/db_const.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  final pool = MongoDbPool(3, MONGO_DB_URL);
  final cascade = Cascade().add(handler);
  Future.delayed(Duration.zero, () async {
    final conn = await pool.acquire();
    final collection = conn.collection(MONGO_DB_COLLECTION_CHARGE_STATION);
    pool.release(conn);
    final collection2 = conn.collection(MONGO_DB_COLLECTION_CHARGE_STATION);
  });
  final conn = await pool.acquire();
  return serve(cascade.handler, ip, port);
}
