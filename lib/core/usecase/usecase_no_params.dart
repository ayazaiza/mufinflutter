
abstract interface class UseCaseNoParams<Type> {
  Future<Type> call();
}
