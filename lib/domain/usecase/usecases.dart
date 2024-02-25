import 'package:shared_preferences/shared_preferences.dart';

abstract class AppFunction {
  Future<bool> isStarter();
  Future<bool> setNotAStarter(SharedPreferences sp);
}
