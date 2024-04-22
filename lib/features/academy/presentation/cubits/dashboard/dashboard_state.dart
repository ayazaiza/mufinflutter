part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    String? uuid,
    @Default(<RecentActivities>[]) List<RecentActivities> recentActivities,
    @Default(<Student>[]) List<Student> students,
    @Default(<StudentTimes>[]) List<StudentTimes> studentTimes,
    @Default(true) bool isLoading,
    String? errorMsg,
  }) = _Initial;
}
