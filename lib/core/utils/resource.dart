sealed class Resource<T> {
  final T? data;
  final String? error;

  const Resource({this.data, this.error});
}

final class DataSuccess<T> extends Resource<T> {
  const DataSuccess(T data) : super(data: data);
}

final class DataError<T> extends Resource<T> {
  const DataError(String? error) : super(error: error);
}

