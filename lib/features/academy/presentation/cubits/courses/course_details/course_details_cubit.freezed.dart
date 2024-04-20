// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Course? get course => throw _privateConstructorUsedError;
  List<SubCourse> get subCourses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseDetailsStateCopyWith<CourseDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsStateCopyWith<$Res> {
  factory $CourseDetailsStateCopyWith(
          CourseDetailsState value, $Res Function(CourseDetailsState) then) =
      _$CourseDetailsStateCopyWithImpl<$Res, CourseDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      Course? course,
      List<SubCourse> subCourses});
}

/// @nodoc
class _$CourseDetailsStateCopyWithImpl<$Res, $Val extends CourseDetailsState>
    implements $CourseDetailsStateCopyWith<$Res> {
  _$CourseDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? course = freezed,
    Object? subCourses = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course?,
      subCourses: null == subCourses
          ? _value.subCourses
          : subCourses // ignore: cast_nullable_to_non_nullable
              as List<SubCourse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CourseDetailsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      Course? course,
      List<SubCourse> subCourses});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? course = freezed,
    Object? subCourses = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course?,
      subCourses: null == subCourses
          ? _value._subCourses
          : subCourses // ignore: cast_nullable_to_non_nullable
              as List<SubCourse>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = true,
      this.error,
      this.course,
      final List<SubCourse> subCourses = const []})
      : _subCourses = subCourses;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final Course? course;
  final List<SubCourse> _subCourses;
  @override
  @JsonKey()
  List<SubCourse> get subCourses {
    if (_subCourses is EqualUnmodifiableListView) return _subCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCourses);
  }

  @override
  String toString() {
    return 'CourseDetailsState(isLoading: $isLoading, error: $error, course: $course, subCourses: $subCourses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.course, course) || other.course == course) &&
            const DeepCollectionEquality()
                .equals(other._subCourses, _subCourses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, course,
      const DeepCollectionEquality().hash(_subCourses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CourseDetailsState {
  const factory _Initial(
      {final bool isLoading,
      final String? error,
      final Course? course,
      final List<SubCourse> subCourses}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  Course? get course;
  @override
  List<SubCourse> get subCourses;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
