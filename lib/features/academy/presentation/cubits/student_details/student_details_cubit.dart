import 'dart:async';
import 'dart:developer';

import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/entities/utils/song.dart';
import 'package:academy/features/academy/domain/usescases/student/get_student_stream.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/utils/resource.dart';
import '../../../domain/entities/slot/student_times.dart';
import '../../../domain/usescases/enrolls/get_enrolls_stud_uuid.dart';
import '../../../domain/usescases/slot_attandance/get_student_slots_stud_id.dart';
import '../../../domain/usescases/song/get_songs_student_id.dart';

part 'student_details_state.dart';

part 'student_details_cubit.freezed.dart';

class StudentDetailsCubit extends Cubit<StudentDetailsState> {
  final GetStudentStream _getStudentStream;
  final GetEnrollsStudUUId _getEnrollsStudUUId;
  final GetStudentSlotsStudId _getStudentSlotsStudId;
  final GetSongsStudentId _getSongsStudentId;
  final String _uuid;
  final String _studentId;
  StreamSubscription<Resource<Student>>? _student;

  StudentDetailsCubit(
      {required String uuid,
      required String studentId,
      required GetStudentStream getStudentStream,
      required GetEnrollsStudUUId getEnrollsStudUUId,
      required GetStudentSlotsStudId getStudentSlotsStudId,
      required GetSongsStudentId getSongsStudentId})
      : _getStudentStream = getStudentStream,
        _studentId = studentId,
        _getEnrollsStudUUId = getEnrollsStudUUId,
        _uuid = uuid,
        _getStudentSlotsStudId = getStudentSlotsStudId,
        _getSongsStudentId = getSongsStudentId,
        super(StudentDetailsState(uuid: uuid, studentId: studentId));

  void fetchData() {
    _student?.cancel();
    _student = _getStudentStream(_studentId).listen((event) async {
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(
          student: event.data ?? state.student,
          isLoading: false,
          error: event.error));
    });
  }

  void loadData() async {
    await Future.wait([_loadEnrolls(), _loadSongs()]);
    log(state.toString());
  }

  Future<void> _loadEnrolls() async {
    var resp = await _getEnrollsStudUUId(Tuple2(_uuid, _studentId));
    emit(state.copyWith(enrollCourses: resp.data ?? state.enrollCourses));
  }

  // Future<void> loadClasses() async {
  //   var resp = await _getStudentSlotsStudId(_studentId);
  //   emit(state.copyWith(allClasses: resp.data ?? state.allClasses));
  // }

  Future<void> _loadSongs() async {
    var resp = await _getSongsStudentId(_studentId);
    emit(state.copyWith(songs: resp.data ?? state.songs));
  }

  @override
  Future<void> close() {
    _student?.cancel();
    return super.close();
  }
}
