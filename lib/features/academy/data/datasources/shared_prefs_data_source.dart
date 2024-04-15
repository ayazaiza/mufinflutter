import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/constants.dart';

abstract interface class SharedPrefsDS {
  Future<void> setOnBoard();

  bool get onBoard;
}

class SharedPrefDsImpl implements SharedPrefsDS {
  final SharedPreferences _sharedPreferences;

  SharedPrefDsImpl({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  @override
  bool get onBoard => _sharedPreferences.getBool(AppConstants.onBoard) ?? false;

  @override
  Future<void> setOnBoard() async {
    await _sharedPreferences.setBool(AppConstants.onBoard, true);
  }
}
