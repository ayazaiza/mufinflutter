import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_sub_courses.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:academy/features/academy/domain/entities/courses/sub_course.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_course.dart';

part 'course_details_state.dart';

part 'course_details_cubit.freezed.dart';

class CourseDetailsCubit extends Cubit<CourseDetailsState> {
  final String _courseId;
  final GetCourse _getCourse;
  final GetSubCourses _getSubCourses;

  CourseDetailsCubit(
      {required String courseId,
      required GetCourse getCourse,
      required GetSubCourses getSubCourses})
      : _courseId = courseId,
        _getCourse = getCourse,
        _getSubCourses = getSubCourses,
        super(const CourseDetailsState());

  void fetchData() async {
    var resp = await _getCourse(_courseId);
    if (resp.data == null) {
      emit(state.copyWith(
          isLoading: false, error: resp.error ?? AppStrings.dataNotFound));
      return;
    }
    var subResp = await _getSubCourses.call(resp.data!.courseId);

    emit(state.copyWith(
        isLoading: false,
        course: resp.data,
        subCourses: subResp.data ?? state.subCourses));
  }
}
