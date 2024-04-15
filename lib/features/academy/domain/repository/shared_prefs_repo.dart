abstract interface class SharedPrefsRepo {
  Future<void> setOnBoard();
  bool get onBoard;
}
