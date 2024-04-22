// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_enrolls_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllEnrollsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;
  List<EnrollCourse> get enrolls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllEnrollsStateCopyWith<AllEnrollsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllEnrollsStateCopyWith<$Res> {
  factory $AllEnrollsStateCopyWith(
          AllEnrollsState value, $Res Function(AllEnrollsState) then) =
      _$AllEnrollsStateCopyWithImpl<$Res, AllEnrollsState>;
  @useResult
  $Res call({bool isLoading, String? errorMsg, List<EnrollCourse> enrolls});
}

/// @nodoc
class _$AllEnrollsStateCopyWithImpl<$Res, $Val extends AllEnrollsState>
    implements $AllEnrollsStateCopyWith<$Res> {
  _$AllEnrollsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMsg = freezed,
    Object? enrolls = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      enrolls: null == enrolls
          ? _value.enrolls
          : enrolls // ignore: cast_nullable_to_non_nullable
              as List<EnrollCourse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AllEnrollsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? errorMsg, List<EnrollCourse> enrolls});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AllEnrollsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMsg = freezed,
    Object? enrolls = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      enrolls: null == enrolls
          ? _value._enrolls
          : enrolls // ignore: cast_nullable_to_non_nullable
              as List<EnrollCourse>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = true,
      this.errorMsg,
      final List<EnrollCourse> enrolls = const []})
      : _enrolls = enrolls;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMsg;
  final List<EnrollCourse> _enrolls;
  @override
  @JsonKey()
  List<EnrollCourse> get enrolls {
    if (_enrolls is EqualUnmodifiableListView) return _enrolls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_enrolls);
  }

  @override
  String toString() {
    return 'AllEnrollsState(isLoading: $isLoading, errorMsg: $errorMsg, enrolls: $enrolls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            const DeepCollectionEquality().equals(other._enrolls, _enrolls));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMsg,
      const DeepCollectionEquality().hash(_enrolls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AllEnrollsState {
  const factory _Initial(
      {final bool isLoading,
      final String? errorMsg,
      final List<EnrollCourse> enrolls}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get errorMsg;
  @override
  List<EnrollCourse> get enrolls;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
