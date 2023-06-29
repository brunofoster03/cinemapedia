import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment{
  static String movieDbKey = dotenv.env['MOBIEDB_KEY'] ?? 'No hay';
}