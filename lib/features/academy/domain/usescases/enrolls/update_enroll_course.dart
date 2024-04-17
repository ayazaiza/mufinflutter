import 'package:academy/features/academy/data/models/courses/enroll_course_model.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/domain/repository/enroll_course_repo.dart';
import 'package:academy/features/academy/domain/usescases/user/add_activity.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';

class UpdateEnrollCourse implements UseCase<Resource<String>, EnrollCourse> {
  final EnrollCourseRepo _enrollCourseRepo;
  final AddActivity _addActivity;

  UpdateEnrollCourse(
      {required EnrollCourseRepo enrollCourseRepo,
      required AddActivity addActivity})
      : _enrollCourseRepo = enrollCourseRepo,
        _addActivity = addActivity;

  @override
  Future<Resource<String>> call(EnrollCourse enrollCourse) async {
    final EnrollCourseModel enrollCourseModel = EnrollCourseModel(
        studentName: enrollCourse.studentName,
        studentDocumentId: enrollCourse.studentDocumentId,
        studentAge: enrollCourse.studentAge,
        studentGender: enrollCourse.studentGender,
        studentDob: enrollCourse.studentDob,
        parentName: enrollCourse.parentName,
        parentUserId: enrollCourse.parentUserId,
        parentEmail: enrollCourse.parentEmail,
        status: enrollCourse.status,
        reason: enrollCourse.reason,
        courseName: enrollCourse.courseName,
        courseId: enrollCourse.courseId,
        subCourseName: enrollCourse.subCourseName,
        subCourseId: enrollCourse.subCourseId,
        notes: enrollCourse.notes,
        enrollDocId: enrollCourse.enrollDocId,
        instructorId: enrollCourse.instructorId,
        instructorName: enrollCourse.instructorName,
        instructorEmail: enrollCourse.instructorEmail,
        prefSlotId: enrollCourse.prefSlotId,
        instructorPhone: enrollCourse.instructorPhone,
        timestamp: enrollCourse.timestamp,
        lastUpdated: enrollCourse.lastUpdated);
    var resp = await _enrollCourseRepo.updateEnrolledCourse(enrollCourseModel);
    await _addActivity(AddActivityParams(
        userId: enrollCourseModel.parentUserId,
        activity: "Updated Enrolled course of ${enrollCourseModel.studentName}"));
    return resp;
  }
}
