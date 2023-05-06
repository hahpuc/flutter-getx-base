import 'package:flutter_getx_base/data/local/pref/pref_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  final SharedPreferences _sharedPreference;

  PrefHelper(this._sharedPreference);

  // -----------------------------

  Future<bool> get isLoggedIn async {
    return _sharedPreference.getBool(PrefConstants.isLoggedIn) ?? false;
  }
}
