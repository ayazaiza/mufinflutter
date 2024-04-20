// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  MufinUser? get mufinUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewProfileStateCopyWith<ViewProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewProfileStateCopyWith<$Res> {
  factory $ViewProfileStateCopyWith(
          ViewProfileState value, $Res Function(ViewProfileState) then) =
      _$ViewProfileStateCopyWithImpl<$Res, ViewProfileState>;
  @useResult
  $Res call({bool isLoading, String? error, MufinUser? mufinUser});
}

/// @nodoc
class _$ViewProfileStateCopyWithImpl<$Res, $Val extends ViewProfileState>
    implements $ViewProfileStateCopyWith<$Res> {
  _$ViewProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? mufinUser = freezed,
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
      mufinUser: freezed == mufinUser
          ? _value.mufinUser
          : mufinUser // ignore: cast_nullable_to_non_nullable
              as MufinUser?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ViewProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error, MufinUser? mufinUser});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ViewProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? mufinUser = freezed,
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
      mufinUser: freezed == mufinUser
          ? _value.mufinUser
          : mufinUser // ignore: cast_nullable_to_non_nullable
              as MufinUser?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.isLoading = true, this.error, this.mufinUser});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final MufinUser? mufinUser;

  @override
  String toString() {
    return 'ViewProfileState(isLoading: $isLoading, error: $error, mufinUser: $mufinUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.mufinUser, mufinUser) ||
                other.mufinUser == mufinUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, mufinUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ViewProfileState {
  const factory _Initial(
      {final bool isLoading,
      final String? error,
      final MufinUser? mufinUser}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  MufinUser? get mufinUser;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
