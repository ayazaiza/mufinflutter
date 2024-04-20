// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrolled_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EnrolledDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  EnrollCourse? get enrollCourse => throw _privateConstructorUsedError;
  List<String> get reqList => throw _privateConstructorUsedError;
  List<StudentTimes> get studentTimes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnrolledDetailsStateCopyWith<EnrolledDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrolledDetailsStateCopyWith<$Res> {
  factory $EnrolledDetailsStateCopyWith(EnrolledDetailsState value,
          $Res Function(EnrolledDetailsState) then) =
      _$EnrolledDetailsStateCopyWithImpl<$Res, EnrolledDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      EnrollCourse? enrollCourse,
      List<String> reqList,
      List<StudentTimes> studentTimes});
}

/// @nodoc
class _$EnrolledDetailsStateCopyWithImpl<$Res,
        $Val extends EnrolledDetailsState>
    implements $EnrolledDetailsStateCopyWith<$Res> {
  _$EnrolledDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? enrollCourse = freezed,
    Object? reqList = null,
    Object? studentTimes = null,
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
      enrollCourse: freezed == enrollCourse
          ? _value.enrollCourse
          : enrollCourse // ignore: cast_nullable_to_non_nullable
              as EnrollCourse?,
      reqList: null == reqList
          ? _value.reqList
          : reqList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      studentTimes: null == studentTimes
          ? _value.studentTimes
          : studentTimes // ignore: cast_nullable_to_non_nullable
              as List<StudentTimes>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EnrolledDetailsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      EnrollCourse? enrollCourse,
      List<String> reqList,
      List<StudentTimes> studentTimes});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EnrolledDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? enrollCourse = freezed,
    Object? reqList = null,
    Object? studentTimes = null,
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
      enrollCourse: freezed == enrollCourse
          ? _value.enrollCourse
          : enrollCourse // ignore: cast_nullable_to_non_nullable
              as EnrollCourse?,
      reqList: null == reqList
          ? _value._reqList
          : reqList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      studentTimes: null == studentTimes
          ? _value._studentTimes
          : studentTimes // ignore: cast_nullable_to_non_nullable
              as List<StudentTimes>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = true,
      this.error,
      this.enrollCourse,
      final List<String> reqList = const ["Pause", "Resume", "Stop"],
      final List<StudentTimes> studentTimes = const []})
      : _reqList = reqList,
        _studentTimes = studentTimes;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final EnrollCourse? enrollCourse;
  final List<String> _reqList;
  @override
  @JsonKey()
  List<String> get reqList {
    if (_reqList is EqualUnmodifiableListView) return _reqList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reqList);
  }

  final List<StudentTimes> _studentTimes;
  @override
  @JsonKey()
  List<StudentTimes> get studentTimes {
    if (_studentTimes is EqualUnmodifiableListView) return _studentTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentTimes);
  }

  @override
  String toString() {
    return 'EnrolledDetailsState(isLoading: $isLoading, error: $error, enrollCourse: $enrollCourse, reqList: $reqList, studentTimes: $studentTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.enrollCourse, enrollCourse) ||
                other.enrollCourse == enrollCourse) &&
            const DeepCollectionEquality().equals(other._reqList, _reqList) &&
            const DeepCollectionEquality()
                .equals(other._studentTimes, _studentTimes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      error,
      enrollCourse,
      const DeepCollectionEquality().hash(_reqList),
      const DeepCollectionEquality().hash(_studentTimes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements EnrolledDetailsState {
  const factory _Initial(
      {final bool isLoading,
      final String? error,
      final EnrollCourse? enrollCourse,
      final List<String> reqList,
      final List<StudentTimes> studentTimes}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  EnrollCourse? get enrollCourse;
  @override
  List<String> get reqList;
  @override
  List<StudentTimes> get studentTimes;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
