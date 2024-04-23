// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_cls_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentClsDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  StudentTimes? get studentTimes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentClsDetailsStateCopyWith<StudentClsDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentClsDetailsStateCopyWith<$Res> {
  factory $StudentClsDetailsStateCopyWith(StudentClsDetailsState value,
          $Res Function(StudentClsDetailsState) then) =
      _$StudentClsDetailsStateCopyWithImpl<$Res, StudentClsDetailsState>;
  @useResult
  $Res call({bool isLoading, String? error, StudentTimes? studentTimes});
}

/// @nodoc
class _$StudentClsDetailsStateCopyWithImpl<$Res,
        $Val extends StudentClsDetailsState>
    implements $StudentClsDetailsStateCopyWith<$Res> {
  _$StudentClsDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? studentTimes = freezed,
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
      studentTimes: freezed == studentTimes
          ? _value.studentTimes
          : studentTimes // ignore: cast_nullable_to_non_nullable
              as StudentTimes?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $StudentClsDetailsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error, StudentTimes? studentTimes});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StudentClsDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? studentTimes = freezed,
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
      studentTimes: freezed == studentTimes
          ? _value.studentTimes
          : studentTimes // ignore: cast_nullable_to_non_nullable
              as StudentTimes?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.isLoading = true, this.error, this.studentTimes});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final StudentTimes? studentTimes;

  @override
  String toString() {
    return 'StudentClsDetailsState(isLoading: $isLoading, error: $error, studentTimes: $studentTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.studentTimes, studentTimes) ||
                other.studentTimes == studentTimes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, studentTimes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements StudentClsDetailsState {
  const factory _Initial(
      {final bool isLoading,
      final String? error,
      final StudentTimes? studentTimes}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  StudentTimes? get studentTimes;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
