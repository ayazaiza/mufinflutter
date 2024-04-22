import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/usescases/courses/get_courses.dart';

part 'courses_state.dart';

part 'courses_cubit.freezed.dart';

class CoursesCubit extends Cubit<CoursesState> {
  final GetCourses _getCourses;

  CoursesCubit({required GetCourses getCourses})
      : _getCourses = getCourses,
        super(const CoursesState());

  void fetchData() async {
    var resp = await _getCourses();
    if (resp.data == null || resp.data!.isEmpty) {
      emit(state.copyWith(
          isLoading: false, error: resp.error ?? AppStrings.dataNotFound));
      return;
    }
    if(!isClosed){
      emit(state.copyWith(isLoading: false, courses: resp.data!));
    }
  }
}
