
abstract interface class UseCaseStream<Type, Params> {
  Stream<Type> call(Params params);
}
