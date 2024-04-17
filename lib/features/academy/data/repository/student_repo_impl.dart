import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/error/app_exceptions.dart';
import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/data/datasources/student_data_source.dart';
import 'package:academy/features/academy/data/models/student/student_model.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';

class StudentRepoImpl implements StudentRepo {
  final StudentDatasource _studentDatasource;

  // final MufinUserDS _mufinUserDS;

  StudentRepoImpl({required StudentDatasource studentDatasource})
      : _studentDatasource = studentDatasource;

  @override
  Future<Resource<String>> addStudent(StudentModel studentModel) async {
    try {
      await _studentDatasource.addStudent(studentModel);

      return const DataSuccess(AppStrings.successfullyAdded);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<String>> deleteStudent(Student student) async {
    try {
      await _studentDatasource.deleteStudent(student.studentDocId);

      return const DataSuccess(AppStrings.successfullyDeleted);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<String>> updateStudent(StudentModel studentModel) async {
    try {
      await _studentDatasource.updateStudent(studentModel);
      return const DataSuccess(AppStrings.successfullyUpdated);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<Student>> getStudent(String studentId) async {
    try {
      var resp = await _studentDatasource.getStudent(studentId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(StudentModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Stream<Resource<Student>> getStudentStream(String studentId) {
    try {
      var data = _studentDatasource.getStudentStream(studentId);
      return data
          .map((event) => DataSuccess(StudentModel.fromMap(event.snaps)));
    } on ServerException catch (e) {
      return Stream.value(DataError(e.message));
    }
  }

  @override
  Future<Resource<List<Student>>> getStudents(String uuid) async {
    try {
      var resp = await _studentDatasource.getStudents(uuid);
      return DataSuccess(
          resp.toMapList.map((e) => StudentModel.fromMap(e)).toList());
    }on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Stream<Resource<List<Student>>> getStudentsStream(String uuid) {
    try {
      return _studentDatasource.getStudentsStream(uuid).map((event) =>
          DataSuccess(
              event.toMapList.map((e) => StudentModel.fromMap(e)).toList()));
    } on ServerException catch (e) {
      return Stream.value(DataError(e.message));
    }
  }
}
