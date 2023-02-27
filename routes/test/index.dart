
import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_pool/mongo_pool.dart';

onRequest(RequestContext context) async {
  return Response(
    body: 'Hello World',
  );
}