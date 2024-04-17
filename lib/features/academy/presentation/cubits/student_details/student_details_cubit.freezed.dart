// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentDetailsState {
  String? get uuid => throw _privateConstructorUsedError;
  String? get studentId => throw _privateConstructorUsedError;
  Student? get student => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<EnrollCourse> get enrollCourses => throw _privateConstructorUsedError;
  List<StudentTimes> get allClasses => throw _privateConstructorUsedError;
  List<Song> get songs => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentDetailsStateCopyWith<StudentDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDetailsStateCopyWith<$Res> {
  factory $StudentDetailsStateCopyWith(
          StudentDetailsState value, $Res Function(StudentDetailsState) then) =
      _$StudentDetailsStateCopyWithImpl<$Res, StudentDetailsState>;
  @useResult
  $Res call(
      {String? uuid,
      String? studentId,
      Student? student,
      String? error,
      List<EnrollCourse> enrollCourses,
      List<StudentTimes> allClasses,
      List<Song> songs,
      bool isLoading});
}

/// @nodoc
class _$StudentDetailsStateCopyWithImpl<$Res, $Val extends StudentDetailsState>
    implements $StudentDetailsStateCopyWith<$Res> {
  _$StudentDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? studentId = freezed,
    Object? student = freezed,
    Object? error = freezed,
    Object? enrollCourses = null,
    Object? allClasses = null,
    Object? songs = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollCourses: null == enrollCourses
          ? _value.enrollCourses
          : enrollCourses // ignore: cast_nullable_to_non_nullable
              as List<EnrollCourse>,
      allClasses: null == allClasses
          ? _value.allClasses
          : allClasses // ignore: cast_nullable_to_non_nullable
              as List<StudentTimes>,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $StudentDetailsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? studentId,
      Student? student,
      String? error,
      List<EnrollCourse> enrollCourses,
      List<StudentTimes> allClasses,
      List<Song> songs,
      bool isLoading});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StudentDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? studentId = freezed,
    Object? student = freezed,
    Object? error = freezed,
    Object? enrollCourses = null,
    Object? allClasses = null,
    Object? songs = null,
    Object? isLoading = null,
  }) {
    return _then(_$InitialImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollCourses: null == enrollCourses
          ? _value._enrollCourses
          : enrollCourses // ignore: cast_nullable_to_non_nullable
              as List<EnrollCourse>,
      allClasses: null == allClasses
          ? _value._allClasses
          : allClasses // ignore: cast_nullable_to_non_nullable
              as List<StudentTimes>,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.uuid,
      this.studentId,
      this.student,
      this.error,
      final List<EnrollCourse> enrollCourses = const [],
      final List<StudentTimes> allClasses = const [],
      final List<Song> songs = const [],
      this.isLoading = true})
      : _enrollCourses = enrollCourses,
        _allClasses = allClasses,
        _songs = songs;

  @override
  final String? uuid;
  @override
  final String? studentId;
  @override
  final Student? student;
  @override
  final String? error;
  final List<EnrollCourse> _enrollCourses;
  @override
  @JsonKey()
  List<EnrollCourse> get enrollCourses {
    if (_enrollCourses is EqualUnmodifiableListView) return _enrollCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_enrollCourses);
  }

  final List<StudentTimes> _allClasses;
  @override
  @JsonKey()
  List<StudentTimes> get allClasses {
    if (_allClasses is EqualUnmodifiableListView) return _allClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allClasses);
  }

  final List<Song> _songs;
  @override
  @JsonKey()
  List<Song> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'StudentDetailsState(uuid: $uuid, studentId: $studentId, student: $student, error: $error, enrollCourses: $enrollCourses, allClasses: $allClasses, songs: $songs, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._enrollCourses, _enrollCourses) &&
            const DeepCollectionEquality()
                .equals(other._allClasses, _allClasses) &&
            const DeepCollectionEquality().equals(other._songs, _songs) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      studentId,
      student,
      error,
      const DeepCollectionEquality().hash(_enrollCourses),
      const DeepCollectionEquality().hash(_allClasses),
      const DeepCollectionEquality().hash(_songs),
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements StudentDetailsState {
  const factory _Initial(
      {final String? uuid,
      final String? studentId,
      final Student? student,
      final String? error,
      final List<EnrollCourse> enrollCourses,
      final List<StudentTimes> allClasses,
      final List<Song> songs,
      final bool isLoading}) = _$InitialImpl;

  @override
  String? get uuid;
  @override
  String? get studentId;
  @override
  Student? get student;
  @override
  String? get error;
  @override
  List<EnrollCourse> get enrollCourses;
  @override
  List<StudentTimes> get allClasses;
  @override
  List<Song> get songs;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
