// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardState {
  String? get uuid => throw _privateConstructorUsedError;
  List<RecentActivities> get recentActivities =>
      throw _privateConstructorUsedError;
  List<Student> get students => throw _privateConstructorUsedError;
  List<StudentTimes> get studentTimes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {String? uuid,
      List<RecentActivities> recentActivities,
      List<Student> students,
      List<StudentTimes> studentTimes,
      bool isLoading,
      String? errorMsg});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? recentActivities = null,
    Object? students = null,
    Object? studentTimes = null,
    Object? isLoading = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      recentActivities: null == recentActivities
          ? _value.recentActivities
          : recentActivities // ignore: cast_nullable_to_non_nullable
              as List<RecentActivities>,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
      studentTimes: null == studentTimes
          ? _value.studentTimes
          : studentTimes // ignore: cast_nullable_to_non_nullable
              as List<StudentTimes>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      List<RecentActivities> recentActivities,
      List<Student> students,
      List<StudentTimes> studentTimes,
      bool isLoading,
      String? errorMsg});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? recentActivities = null,
    Object? students = null,
    Object? studentTimes = null,
    Object? isLoading = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$InitialImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      recentActivities: null == recentActivities
          ? _value._recentActivities
          : recentActivities // ignore: cast_nullable_to_non_nullable
              as List<RecentActivities>,
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
      studentTimes: null == studentTimes
          ? _value._studentTimes
          : studentTimes // ignore: cast_nullable_to_non_nullable
              as List<StudentTimes>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.uuid,
      final List<RecentActivities> recentActivities =
          const <RecentActivities>[],
      final List<Student> students = const <Student>[],
      final List<StudentTimes> studentTimes = const <StudentTimes>[],
      this.isLoading = true,
      this.errorMsg})
      : _recentActivities = recentActivities,
        _students = students,
        _studentTimes = studentTimes;

  @override
  final String? uuid;
  final List<RecentActivities> _recentActivities;
  @override
  @JsonKey()
  List<RecentActivities> get recentActivities {
    if (_recentActivities is EqualUnmodifiableListView)
      return _recentActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentActivities);
  }

  final List<Student> _students;
  @override
  @JsonKey()
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
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
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'DashboardState(uuid: $uuid, recentActivities: $recentActivities, students: $students, studentTimes: $studentTimes, isLoading: $isLoading, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality()
                .equals(other._recentActivities, _recentActivities) &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            const DeepCollectionEquality()
                .equals(other._studentTimes, _studentTimes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      const DeepCollectionEquality().hash(_recentActivities),
      const DeepCollectionEquality().hash(_students),
      const DeepCollectionEquality().hash(_studentTimes),
      isLoading,
      errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements DashboardState {
  const factory _Initial(
      {final String? uuid,
      final List<RecentActivities> recentActivities,
      final List<Student> students,
      final List<StudentTimes> studentTimes,
      final bool isLoading,
      final String? errorMsg}) = _$InitialImpl;

  @override
  String? get uuid;
  @override
  List<RecentActivities> get recentActivities;
  @override
  List<Student> get students;
  @override
  List<StudentTimes> get studentTimes;
  @override
  bool get isLoading;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
