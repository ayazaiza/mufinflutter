// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendances_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendancesState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<StudentAttendance> get attendances => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendancesStateCopyWith<AttendancesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendancesStateCopyWith<$Res> {
  factory $AttendancesStateCopyWith(
          AttendancesState value, $Res Function(AttendancesState) then) =
      _$AttendancesStateCopyWithImpl<$Res, AttendancesState>;
  @useResult
  $Res call(
      {bool isLoading, String? error, List<StudentAttendance> attendances});
}

/// @nodoc
class _$AttendancesStateCopyWithImpl<$Res, $Val extends AttendancesState>
    implements $AttendancesStateCopyWith<$Res> {
  _$AttendancesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? attendances = null,
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
      attendances: null == attendances
          ? _value.attendances
          : attendances // ignore: cast_nullable_to_non_nullable
              as List<StudentAttendance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AttendancesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, String? error, List<StudentAttendance> attendances});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AttendancesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? attendances = null,
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
      attendances: null == attendances
          ? _value._attendances
          : attendances // ignore: cast_nullable_to_non_nullable
              as List<StudentAttendance>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = true,
      this.error,
      final List<StudentAttendance> attendances = const []})
      : _attendances = attendances;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  final List<StudentAttendance> _attendances;
  @override
  @JsonKey()
  List<StudentAttendance> get attendances {
    if (_attendances is EqualUnmodifiableListView) return _attendances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendances);
  }

  @override
  String toString() {
    return 'AttendancesState(isLoading: $isLoading, error: $error, attendances: $attendances)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._attendances, _attendances));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error,
      const DeepCollectionEquality().hash(_attendances));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AttendancesState {
  const factory _Initial(
      {final bool isLoading,
      final String? error,
      final List<StudentAttendance> attendances}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  List<StudentAttendance> get attendances;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
