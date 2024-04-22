import 'dart:async';

import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/entities/user/recent_activities.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_student_slots_user_id_status.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students_stream.dart';
import 'package:academy/features/academy/domain/usescases/user/get_activities_stream.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/utils/resource.dart';
import '../../../domain/entities/slot/student_times.dart';

part 'dashboard_state.dart';

part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final GetStudentsStream _getStudentsStream;
  final GetActivitiesStream _getActivitiesStream;
  final GetStudentSlotsUserIdStatus _getStudentSlotsUserIdStatus;
  final String _uuid;
  StreamSubscription<Resource<List<Student>>>? _students;
  StreamSubscription<Resource<List<RecentActivities>>>? _recentActivities;

  DashboardCubit({required GetStudentsStream getStudentsStream,
    required GetActivitiesStream getActivitiesStream,
    required GetStudentSlotsUserIdStatus getStudentSlotsUserIdStatus,
    required String uuid})
      : _getActivitiesStream = getActivitiesStream,
        _getStudentsStream = getStudentsStream,
        _getStudentSlotsUserIdStatus = getStudentSlotsUserIdStatus,
        _uuid = uuid,
        super(DashboardState(uuid: uuid));

  void loadData() {
    _loadStudents();
    _loadRecentActivities();
    _loadSlots();
  }

  void _loadSlots() async {
    var resp = await _getStudentSlotsUserIdStatus(Tuple2(_uuid, "Active"));
    emit(state.copyWith(studentTimes: resp.data ?? state.studentTimes));
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
