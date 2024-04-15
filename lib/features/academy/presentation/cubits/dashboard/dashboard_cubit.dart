import 'dart:async';

import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/entities/user/recent_activities.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students_stream.dart';
import 'package:academy/features/academy/domain/usescases/user/get_activities_stream.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/resource.dart';

part 'dashboard_state.dart';

part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final GetStudentsStream _getStudentsStream;
  final GetActivitiesStream _getActivitiesStream;
  final String _uuid;
  StreamSubscription<Resource<List<Student>>>? _students;
  StreamSubscription<Resource<List<RecentActivities>>>? _recentActivities;

  DashboardCubit(
      {required GetStudentsStream getStudentsStream,
      required GetActivitiesStream getActivitiesStream,
      required String uuid})
      : _getActivitiesStream = getActivitiesStream,
        _getStudentsStream = getStudentsStream,
        _uuid = uuid,
        super(DashboardState(uuid: uuid));

  void loadData() {
    _loadStudents();
    _loadRecentActivities();
  }

  void _loadStudents() {
    _students?.cancel();
    _students = _getStudentsStream.call(_uuid).listen((event) {
      emit(state.copyWith(students: event.data ?? state.students));
    });
  }

  void _loadRecentActivities() {
    _recentActivities?.cancel();
    _recentActivities = _getActivitiesStream.call(_uuid).listen((event) {
      emit(state.copyWith(
          recentActivities: event.data ?? state.recentActivities));
    });
  }

  @override
  Future<void> close() {
    closeStreams();
    return super.close();
  }

  void closeStreams() {
    _students?.cancel();
    _recentActivities?.cancel();
  }
}
