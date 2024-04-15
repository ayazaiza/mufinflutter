part of 'bottom_nav_cubit.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState(
      {@Default(0) int index,
      PageController? controller}) = _Initial;
}
