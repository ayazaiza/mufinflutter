import 'dart:async';

import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/entities/user/recent_activities.dart';
import 'package:academy/features/academy/domain/entities/utils/song.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_student_slots_user_id_status.dart';
import 'package:academy/features/academy/domain/usescases/song/get_song.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students_stream.dart';
import 'package:academy/features/academy/domain/usescases/user/get_activities_stream.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/utils/resource.dart';
import '../../../domain/entities/slot/student_times.dart';
import '../../../domain/usescases/enrolls/get_enrolls_user_id.dart';
import '../../../domain/usescases/event_enrolls/get_event_enrolls.dart';
import '../../../domain/usescases/song/get_songs_user_id.dart';

part 'dashboard_state.dart';

part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final GetStudentsStream _getStudentsStream;
  final GetActivitiesStream _getActivitiesStream;
  final GetEnrollsUserId _getEnrollsUserId;
  final GetEventEnrolls _getEventEnrolls;
  final GetSongsUserId _getSongsUserId;
  final GetStudentSlotsUserIdStatus _getStudentSlotsUserIdStatus;
  final String _uuid;
  StreamSubscription<Resource<List<Student>>>? _students;
  StreamSubscription<Resource<List<RecentActivities>>>? _recentActivities;

  DashboardCubit(
      {required GetStudentsStream getStudentsStream,
      required GetActivitiesStream getActivitiesStream,
      required GetEnrollsUserId getEnrollsUserId,
      required GetEventEnrolls getEventEnrolls,
      required GetSongsUserId getSongsUserId,
      required GetStudentSlotsUserIdStatus getStudentSlotsUserIdStatus,
      required String uuid})
      : _getActivitiesStream = getActivitiesStream,
        _getStudentsStream = getStudentsStream,
        _getEventEnrolls = getEventEnrolls,
        _getStudentSlotsUserIdStatus = getStudentSlotsUserIdStatus,
        _getEnrollsUserId = getEnrollsUserId,
        _uuid = uuid,
        _getSongsUserId = getSongsUserId,
        super(DashboardState(uuid: uuid));

  void loadData() async {
    _loadStudents();
    _loadRecentActivities();
    await Future.wait(
        [_loadSlots(), _loadEnrolls(), _loadEventEnrolls(), _loadSongs()]);
  }

  Future<void> _loadSlots() async {
    var resp = await _getStudentSlotsUserIdStatus(Tuple2(_uuid, "Active"));
    emit(state.copyWith(studentTimes: resp.data ?? state.studentTimes));
  }

  Future<void> _loadEnrolls() async {
    var resp = await _getEnrollsUserId(_uuid);
    emit(state.copyWith(enrolls: resp.data ?? state.enrolls));
  }

  Future<void> _loadEventEnrolls() async {
    var resp = await _getEventEnrolls(_uuid);
    emit(state.copyWith(eventEnrolls: resp.data ?? state.eventEnrolls));
  }

  Future<void> _loadSongs() async {
    var resp = await _getSongsUserId(_uuid);
    emit(state.copyWith(songs: resp.data ?? state.songs));
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
