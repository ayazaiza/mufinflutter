
import '../../domain/repository/shared_prefs_repo.dart';
import '../datasources/shared_prefs_data_source.dart';

class SharedPrefRepoImpl implements SharedPrefsRepo {
  final SharedPrefsDS _sharedPrefsRepoDS;

  SharedPrefRepoImpl({required SharedPrefsDS sharedPrefsRepoDS})
      : _sharedPrefsRepoDS = sharedPrefsRepoDS;

  @override
  bool get onBoard => _sharedPrefsRepoDS.onBoard;

  @override
  Future<void> setOnBoard() => _sharedPrefsRepoDS.setOnBoard();
}
