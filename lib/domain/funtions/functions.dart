import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/domain/usecase/usecases.dart';
import 'package:video_player/presentation/snakbar/show_error_snakbar.dart';

class MyAppFunction implements AppFunction {
  @override
  Future<bool> isStarter() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    if (sp.getBool('isAlreadyTried') ?? false) {
      return true;
    }
    if (!await setNotAStarter(sp)) {
      unKnownErrorSnakBar('Some error', 'Failed to set your first login');
    }
    return false;
  }

  @override
  Future<bool> setNotAStarter(SharedPreferences sp) async {
    try {
      await sp.setBool('isAlreadyTried', true);
      return true;
    } catch (_) {
      return false;
    }
  }
}
