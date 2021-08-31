import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

const _hostname = 'localhost';
const _port = 8080;

void main(List<String> args) async {
  final app = Router();

  app.get('/', (Request request) {
    return Response.ok('Hello World');
  });

  await io.serve(app, _hostname, _port);
}
