import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/features/academy/data/datasources/student_slot_data_source.dart';
import 'package:academy/features/academy/data/models/slot/student_times_model.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/error/app_exceptions.dart';
import '../../../../core/utils/resource.dart';
import '../../domain/entities/slot/student_times.dart';
import '../../domain/entities/student/student_attendance.dart';
import '../../domain/repository/student_slot_repo.dart';
import '../models/student/student_attendance_model.dart';

class StudentSlotRepoImpl implements StudentSlotRepo {
  final StudentSlotDataSource _studentSlotDataSource;

  StudentSlotRepoImpl({required StudentSlotDataSource studentSlotDataSource})
      : _studentSlotDataSource = studentSlotDataSource;

  @override
  Future<Resource<List<StudentAttendance>>> getAllAttendance(
      String enrollId, String studentId) async {
    try {
      var resp =
          await _studentSlotDataSource.getAllAttendance(enrollId, studentId);
      return DataSuccess(resp.toMapList
          .map((event) => StudentAttendanceModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<StudentAttendance>> getAttendance(String attendanceId) async {
    try {
      var resp = await _studentSlotDataSource.getAttendance(attendanceId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(StudentAttendanceModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<StudentAttendance>>> getAttendanceByStudIdSlotTimeId(
      String studentId, String studentTimeDocId) async {
    try {
      var resp = await _studentSlotDataSource.getAttendanceByStudIdSlotTimeId(
          studentId, studentTimeDocId);
      return DataSuccess(resp.toMapList
          .map((event) => StudentAttendanceModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<StudentAttendance>>> getAttendances(
      String studentTimeDocId) async {
    try {
      var resp = await _studentSlotDataSource.getAttendances(studentTimeDocId);
      return DataSuccess(resp.toMapList
          .map((event) => StudentAttendanceModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<StudentTimes>> getStudentSlotTime(
      String studentSlotDocId) async {
    try {
      var resp =
          await _studentSlotDataSource.getStudentSlotTime(studentSlotDocId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(StudentTimesModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<StudentTimes>>> getStudentSlotsByParentId(
      String userId) async {
    try {
      var resp = await _studentSlotDataSource.getStudentSlotsByParentId(userId);
      return DataSuccess(resp.toMapList
          .map((event) => StudentTimesModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<StudentTimes>>> getStudentSlotsByStudentId(
      String studentId) async {
    try {
      var resp =
          await _studentSlotDataSource.getStudentSlotsByStudentId(studentId);
      return DataSuccess(resp.toMapList
          .map((event) => StudentTimesModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }
}
