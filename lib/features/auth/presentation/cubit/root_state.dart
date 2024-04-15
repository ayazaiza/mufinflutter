part of 'root_cubit.dart';

sealed class RootState extends Equatable {
  const RootState();
}

final class RootInitial extends RootState {
  @override
  List<Object> get props => [];
}

final class RootToProfileUpdate extends RootState {
  final String? route;
  final String? uuid;
  final String? email;
  const RootToProfileUpdate({required this.route, required this.uuid, required this.email});

  @override
  List<Object?> get props => [route, uuid,email];
}

final class RootToHome extends RootState {
  final String? route;
  final String? uuid;
  final String? email;


  const RootToHome({required this.route, required this.uuid, required this.email});

  @override
  List<Object?> get props => [route, uuid,email];
}

final class RootToLanding extends RootState {
  final String? route;

  const RootToLanding({required this.route});
  @override
  List<Object?> get props => [route];
}
