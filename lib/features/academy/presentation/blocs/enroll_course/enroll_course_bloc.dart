import 'dart:developer';

import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/domain/entities/courses/sub_course.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import '../../../domain/usescases/courses/get_courses.dart';
import '../../../domain/usescases/courses/get_sub_courses.dart';
import '../../../domain/usescases/enrolls/enroll_new_course.dart';
import '../../../domain/usescases/enrolls/has_enrolled.dart';

part 'enroll_course_event.dart';

part 'enroll_course_state.dart';

part 'enroll_course_bloc.freezed.dart';

class EnrollCourseBloc extends Bloc<EnrollCourseEvent, EnrollCourseState> {
  final String _userId;
  final String? _studentId;
  final String? _courseId;
  final GetCourses _getCourses;
  final GetSubCourses _getSubCourses;
  final GetStudents _getStudents;
  final EnrollNewCourse _enrollNewCourse;
  final HasEnrolled _hasEnrolled;

  EnrollCourseBloc({
    required String userId,
    String? studentId,
    String? courseId,
    required GetCourses getCourses,
    required GetSubCourses getSubCourses,
    required GetStudents getStudents,
    required HasEnrolled hasEnrolled,
    required EnrollNewCourse enrollNewCourse,
  })  : _studentId = studentId,
        _userId = userId,
        _courseId = courseId,
        _hasEnrolled = hasEnrolled,
        _enrollNewCourse = enrollNewCourse,
        _getStudents = getStudents,
        _getCourses = getCourses,
        _getSubCourses = getSubCourses,
        super(EnrollCourseState(
            studentId: studentId, userId: userId, courseId: courseId)) {
    on<FetchData>(_fetchData);
    on<AllCoursesEvent>((event, emit) {
      emit(state.copyWith(courses: event.courses, screenLoading: false));
      if (_courseId == null) {
        return;
      }
      var course = event.courses
          .firstWhereOrNull((element) => element.courseId == _courseId);
      if (course == null) {
        return;
      }
      add(EnrollCourseEvent.selectCourseEvent(course: course));
    });
    on<StudentsEvent>((event, emit) {
      emit(state.copyWith(students: event.students, screenLoading: false));
      if (_studentId == null) {
        return;
      }
      var student = event.students
          .firstWhereOrNull((element) => element.studentDocId == _studentId);
      if (student == null) {
        return;
      }
      add(EnrollCourseEvent.selectStudentEvent(student: student));
    });
    on<ErrorEvent>((event, emit) {
      emit(state.copyWith(errorMsg: event.msg, screenLoading: false));
    });
    on<SuccessEvent>((event, emit) {
      emit(state.copyWith(successMsg: event.msg));
    });
    on<CommentsChangeEvent>((event, emit) {
      emit(state.copyWith(comments: event.comments));
    });
    on<CacheSubCoursesEvent>((event, emit) {
      if (state.subCourses.isEmpty ||
          state.cacheSubCourses.containsKey(event.courseId)) {
        return;
      }
      var maps = Map<String, List<SubCourse>>.from(state.cacheSubCourses);
      maps[event.courseId] = event.subCourses;
      emit(state.copyWith(cacheSubCourses: maps));
      log(maps.toString());
    });
    on<SelectStudentEvent>((event, emit) {
      emit(state.copyWith(
          selectedStudent: event.student, selectStudentError: null));
    });
    on<SelectCourseEvent>(_selectCourse);
    on<SelectSubCourseEvent>((event, emit) {
      emit(state.copyWith(
          selectedSubCourse: event.subCourse, selectSubCourseError: null));
    });
    on<SubmitEnroll>(_submitData);
    on<FetchSubCourseEvent>(_fetchSubCourseEvent);
    on<AllSubCoursesEvent>((event, emit) {
      emit(state.copyWith(
          subCourses: event.subCourses,
          selectedCourse: event.course,
          selectCourseError: null,
          selectedSubCourse: null));
      add(EnrollCourseEvent.cacheSubCoursesEvent(
          courseId: event.course.courseId, subCourses: event.subCourses));
    });
    on<EnrollNewCourseEvent>((event, emit) async {
      var resp = await _enrollNewCourse(event.enrollCourse);
      if (resp.data == null) {
        emit(state.copyWith(
            submitError: resp.error ?? AppStrings.somethingWentWrong,
            isLoading: false));
        return;
      }
      emit(state.copyWith(
          isLoading: false, successMsg: resp.data, submitError: null));
    });
  }

  void _fetchSubCourseEvent(
      FetchSubCourseEvent event, Emitter<EnrollCourseState> emit) async {
    var resp = await _getSubCourses(event.course.courseId);
    var data = resp.data;
    if (data == null || data.isEmpty) {
      add(EnrollCourseEvent.allSubCoursesEvent(
          course: event.course, subCourses: []));
      return;
    }
    add(EnrollCourseEvent.allSubCoursesEvent(
        course: event.course, subCourses: data));
  }

  void _selectCourse(SelectCourseEvent event, Emitter<EnrollCourseState> emit) {
    var course = event.course;
    var list = state.cacheSubCourses[course.courseId];
    if (state.cacheSubCourses.containsKey(course.courseId) &&
        list != null &&
        list.isNotEmpty) {
      add(EnrollCourseEvent.allSubCoursesEvent(
          course: event.course, subCourses: list));
      return;
    }
    add(EnrollCourseEvent.fetchSubCourseEvent(course: course));
  }

  void _submitData(SubmitEnroll event, Emitter<EnrollCourseState> emit) async {
    var student =
        state.selectedStudent == null ? "Please select student" : null;
    var course = state.selectedCourse == null ? "Please course" : null;
    var subCourse =
        state.selectedSubCourse == null ? "Please sub course" : null;
    var hasError =
        [student, course, subCourse].any((element) => element != null);

    emit(state.copyWith(
        selectStudentError: student,
        selectSubCourseError: subCourse,
        selectCourseError: course,
        successMsg: null,
        errorMsg: null,
        screenLoading: false));
    if (hasError) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    var resp = await _hasEnrolled(Tuple4(
        state.userId!,
        state.selectedStudent!.studentDocId,
        state.selectedCourse!.courseId,
        state.selectedSubCourse!.subCourseId));
    var hasEnroll = resp.data;
    if (hasEnroll != null && hasEnroll) {
      emit(state.copyWith(
          submitError: "You have enrolled this course! Please wait admin will contact you.", isLoading: false));
      return;
    }
    final EnrollCourse enrollCourse = EnrollCourse(
        studentName: state.selectedStudent!.name.trim(),
        studentDocumentId: state.selectedStudent!.studentDocId.trim(),
        studentAge: state.selectedStudent!.age,
        studentGender: state.selectedStudent!.gender,
        studentDob: state.selectedStudent!.dateOfBirth,
        parentName: state.selectedStudent!.parentName,
        parentUserId: state.selectedStudent!.userId,
        parentEmail: state.selectedStudent!.userEmail,
        status: "Pending",
        reason: "",
        courseName: state.selectedCourse!.name,
        courseId: state.selectedCourse!.courseId,
        subCourseName: state.selectedSubCourse!.name,
        subCourseId: state.selectedSubCourse!.subCourseId,
        notes: state.comments.trim(),
        enrollDocId: "",
        instructorId: "",
        instructorName: "",
        instructorEmail: "",
        prefSlotId: "",
        instructorPhone: "",
        timestamp: Timestamp.now(),
        lastUpdated: Timestamp.now());
    add(EnrollCourseEvent.enrollNewCourseEvent(enrollCourse: enrollCourse));
  }

  void _fetchData(FetchData event, Emitter<EnrollCourseState> emit) async {
    await Future.wait([_fetchStudents(), _fetchCourses()]);
  }

  Future<void> _fetchCourses() async {
    var resp = await _getCourses();
    if (resp.data == null || resp.data!.isEmpty) {
      add(EnrollCourseEvent.errorEvent(
          msg: resp.error ?? AppStrings.coursesNotFound));
      return;
    }
    add(EnrollCourseEvent.allCoursesEvent(courses: resp.data ?? []));
  }

  Future<void> _fetchStudents() async {
    var resp = await _getStudents(_userId);
    if (resp.data == null || resp.data!.isEmpty) {
      add(EnrollCourseEvent.errorEvent(
          msg: resp.error ?? AppStrings.studentsNotFound));
      return;
    }
    add(EnrollCourseEvent.studentsEvent(students: resp.data ?? []));
  }
}
