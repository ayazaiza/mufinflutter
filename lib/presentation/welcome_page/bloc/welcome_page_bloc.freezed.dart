// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WelcomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateProfile,
    required TResult Function() homePageEvent,
    required TResult Function() unknownEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateProfile,
    TResult? Function()? homePageEvent,
    TResult? Function()? unknownEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateProfile,
    TResult Function()? homePageEvent,
    TResult Function()? unknownEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateProfileEvent value) updateProfile,
    required TResult Function(_HomePageEvent value) homePageEvent,
    required TResult Function(_UnknownEvent value) unknownEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateProfileEvent value)? updateProfile,
    TResult? Function(_HomePageEvent value)? homePageEvent,
    TResult? Function(_UnknownEvent value)? unknownEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfileEvent value)? updateProfile,
    TResult Function(_HomePageEvent value)? homePageEvent,
    TResult Function(_UnknownEvent value)? unknownEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomePageEventCopyWith<$Res> {
  factory $WelcomePageEventCopyWith(
          WelcomePageEvent value, $Res Function(WelcomePageEvent) then) =
      _$WelcomePageEventCopyWithImpl<$Res, WelcomePageEvent>;
}

/// @nodoc
class _$WelcomePageEventCopyWithImpl<$Res, $Val extends WelcomePageEvent>
    implements $WelcomePageEventCopyWith<$Res> {
  _$WelcomePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$WelcomePageEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WelcomePageEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateProfile,
    required TResult Function() homePageEvent,
    required TResult Function() unknownEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateProfile,
    TResult? Function()? homePageEvent,
    TResult? Function()? unknownEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateProfile,
    TResult Function()? homePageEvent,
    TResult Function()? unknownEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateProfileEvent value) updateProfile,
    required TResult Function(_HomePageEvent value) homePageEvent,
    required TResult Function(_UnknownEvent value) unknownEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateProfileEvent value)? updateProfile,
    TResult? Function(_HomePageEvent value)? homePageEvent,
    TResult? Function(_UnknownEvent value)? unknownEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfileEvent value)? updateProfile,
    TResult Function(_HomePageEvent value)? homePageEvent,
    TResult Function(_UnknownEvent value)? unknownEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WelcomePageEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$UpdateProfileEventImplCopyWith<$Res> {
  factory _$$UpdateProfileEventImplCopyWith(_$UpdateProfileEventImpl value,
          $Res Function(_$UpdateProfileEventImpl) then) =
      __$$UpdateProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProfileEventImplCopyWithImpl<$Res>
    extends _$WelcomePageEventCopyWithImpl<$Res, _$UpdateProfileEventImpl>
    implements _$$UpdateProfileEventImplCopyWith<$Res> {
  __$$UpdateProfileEventImplCopyWithImpl(_$UpdateProfileEventImpl _value,
      $Res Function(_$UpdateProfileEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateProfileEventImpl implements _UpdateProfileEvent {
  const _$UpdateProfileEventImpl();

  @override
  String toString() {
    return 'WelcomePageEvent.updateProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateProfile,
    required TResult Function() homePageEvent,
    required TResult Function() unknownEvent,
  }) {
    return updateProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateProfile,
    TResult? Function()? homePageEvent,
    TResult? Function()? unknownEvent,
  }) {
    return updateProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateProfile,
    TResult Function()? homePageEvent,
    TResult Function()? unknownEvent,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateProfileEvent value) updateProfile,
    required TResult Function(_HomePageEvent value) homePageEvent,
    required TResult Function(_UnknownEvent value) unknownEvent,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateProfileEvent value)? updateProfile,
    TResult? Function(_HomePageEvent value)? homePageEvent,
    TResult? Function(_UnknownEvent value)? unknownEvent,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfileEvent value)? updateProfile,
    TResult Function(_HomePageEvent value)? homePageEvent,
    TResult Function(_UnknownEvent value)? unknownEvent,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileEvent implements WelcomePageEvent {
  const factory _UpdateProfileEvent() = _$UpdateProfileEventImpl;
}

/// @nodoc
abstract class _$$HomePageEventImplCopyWith<$Res> {
  factory _$$HomePageEventImplCopyWith(
          _$HomePageEventImpl value, $Res Function(_$HomePageEventImpl) then) =
      __$$HomePageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageEventImplCopyWithImpl<$Res>
    extends _$WelcomePageEventCopyWithImpl<$Res, _$HomePageEventImpl>
    implements _$$HomePageEventImplCopyWith<$Res> {
  __$$HomePageEventImplCopyWithImpl(
      _$HomePageEventImpl _value, $Res Function(_$HomePageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomePageEventImpl implements _HomePageEvent {
  const _$HomePageEventImpl();

  @override
  String toString() {
    return 'WelcomePageEvent.homePageEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateProfile,
    required TResult Function() homePageEvent,
    required TResult Function() unknownEvent,
  }) {
    return homePageEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateProfile,
    TResult? Function()? homePageEvent,
    TResult? Function()? unknownEvent,
  }) {
    return homePageEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateProfile,
    TResult Function()? homePageEvent,
    TResult Function()? unknownEvent,
    required TResult orElse(),
  }) {
    if (homePageEvent != null) {
      return homePageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateProfileEvent value) updateProfile,
    required TResult Function(_HomePageEvent value) homePageEvent,
    required TResult Function(_UnknownEvent value) unknownEvent,
  }) {
    return homePageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateProfileEvent value)? updateProfile,
    TResult? Function(_HomePageEvent value)? homePageEvent,
    TResult? Function(_UnknownEvent value)? unknownEvent,
  }) {
    return homePageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfileEvent value)? updateProfile,
    TResult Function(_HomePageEvent value)? homePageEvent,
    TResult Function(_UnknownEvent value)? unknownEvent,
    required TResult orElse(),
  }) {
    if (homePageEvent != null) {
      return homePageEvent(this);
    }
    return orElse();
  }
}

abstract class _HomePageEvent implements WelcomePageEvent {
  const factory _HomePageEvent() = _$HomePageEventImpl;
}

/// @nodoc
abstract class _$$UnknownEventImplCopyWith<$Res> {
  factory _$$UnknownEventImplCopyWith(
          _$UnknownEventImpl value, $Res Function(_$UnknownEventImpl) then) =
      __$$UnknownEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownEventImplCopyWithImpl<$Res>
    extends _$WelcomePageEventCopyWithImpl<$Res, _$UnknownEventImpl>
    implements _$$UnknownEventImplCopyWith<$Res> {
  __$$UnknownEventImplCopyWithImpl(
      _$UnknownEventImpl _value, $Res Function(_$UnknownEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownEventImpl implements _UnknownEvent {
  const _$UnknownEventImpl();

  @override
  String toString() {
    return 'WelcomePageEvent.unknownEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateProfile,
    required TResult Function() homePageEvent,
    required TResult Function() unknownEvent,
  }) {
    return unknownEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateProfile,
    TResult? Function()? homePageEvent,
    TResult? Function()? unknownEvent,
  }) {
    return unknownEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateProfile,
    TResult Function()? homePageEvent,
    TResult Function()? unknownEvent,
    required TResult orElse(),
  }) {
    if (unknownEvent != null) {
      return unknownEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateProfileEvent value) updateProfile,
    required TResult Function(_HomePageEvent value) homePageEvent,
    required TResult Function(_UnknownEvent value) unknownEvent,
  }) {
    return unknownEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateProfileEvent value)? updateProfile,
    TResult? Function(_HomePageEvent value)? homePageEvent,
    TResult? Function(_UnknownEvent value)? unknownEvent,
  }) {
    return unknownEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfileEvent value)? updateProfile,
    TResult Function(_HomePageEvent value)? homePageEvent,
    TResult Function(_UnknownEvent value)? unknownEvent,
    required TResult orElse(),
  }) {
    if (unknownEvent != null) {
      return unknownEvent(this);
    }
    return orElse();
  }
}

abstract class _UnknownEvent implements WelcomePageEvent {
  const factory _UnknownEvent() = _$UnknownEventImpl;
}

/// @nodoc
mixin _$WelcomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageState,
    required TResult Function() updateProfileState,
    required TResult Function() unknownState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageState,
    TResult? Function()? updateProfileState,
    TResult? Function()? unknownState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageState,
    TResult Function()? updateProfileState,
    TResult Function()? unknownState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HomePageState value) homePageState,
    required TResult Function(_UpdateProfileState value) updateProfileState,
    required TResult Function(_UnknownState value) unknownState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HomePageState value)? homePageState,
    TResult? Function(_UpdateProfileState value)? updateProfileState,
    TResult? Function(_UnknownState value)? unknownState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HomePageState value)? homePageState,
    TResult Function(_UpdateProfileState value)? updateProfileState,
    TResult Function(_UnknownState value)? unknownState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomePageStateCopyWith<$Res> {
  factory $WelcomePageStateCopyWith(
          WelcomePageState value, $Res Function(WelcomePageState) then) =
      _$WelcomePageStateCopyWithImpl<$Res, WelcomePageState>;
}

/// @nodoc
class _$WelcomePageStateCopyWithImpl<$Res, $Val extends WelcomePageState>
    implements $WelcomePageStateCopyWith<$Res> {
  _$WelcomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WelcomePageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WelcomePageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageState,
    required TResult Function() updateProfileState,
    required TResult Function() unknownState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageState,
    TResult? Function()? updateProfileState,
    TResult? Function()? unknownState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageState,
    TResult Function()? updateProfileState,
    TResult Function()? unknownState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HomePageState value) homePageState,
    required TResult Function(_UpdateProfileState value) updateProfileState,
    required TResult Function(_UnknownState value) unknownState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HomePageState value)? homePageState,
    TResult? Function(_UpdateProfileState value)? updateProfileState,
    TResult? Function(_UnknownState value)? unknownState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HomePageState value)? homePageState,
    TResult Function(_UpdateProfileState value)? updateProfileState,
    TResult Function(_UnknownState value)? unknownState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WelcomePageState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$WelcomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  const _$HomePageStateImpl();

  @override
  String toString() {
    return 'WelcomePageState.homePageState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePageStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageState,
    required TResult Function() updateProfileState,
    required TResult Function() unknownState,
  }) {
    return homePageState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageState,
    TResult? Function()? updateProfileState,
    TResult? Function()? unknownState,
  }) {
    return homePageState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageState,
    TResult Function()? updateProfileState,
    TResult Function()? unknownState,
    required TResult orElse(),
  }) {
    if (homePageState != null) {
      return homePageState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HomePageState value) homePageState,
    required TResult Function(_UpdateProfileState value) updateProfileState,
    required TResult Function(_UnknownState value) unknownState,
  }) {
    return homePageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HomePageState value)? homePageState,
    TResult? Function(_UpdateProfileState value)? updateProfileState,
    TResult? Function(_UnknownState value)? unknownState,
  }) {
    return homePageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HomePageState value)? homePageState,
    TResult Function(_UpdateProfileState value)? updateProfileState,
    TResult Function(_UnknownState value)? unknownState,
    required TResult orElse(),
  }) {
    if (homePageState != null) {
      return homePageState(this);
    }
    return orElse();
  }
}

abstract class _HomePageState implements WelcomePageState {
  const factory _HomePageState() = _$HomePageStateImpl;
}

/// @nodoc
abstract class _$$UpdateProfileStateImplCopyWith<$Res> {
  factory _$$UpdateProfileStateImplCopyWith(_$UpdateProfileStateImpl value,
          $Res Function(_$UpdateProfileStateImpl) then) =
      __$$UpdateProfileStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProfileStateImplCopyWithImpl<$Res>
    extends _$WelcomePageStateCopyWithImpl<$Res, _$UpdateProfileStateImpl>
    implements _$$UpdateProfileStateImplCopyWith<$Res> {
  __$$UpdateProfileStateImplCopyWithImpl(_$UpdateProfileStateImpl _value,
      $Res Function(_$UpdateProfileStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateProfileStateImpl implements _UpdateProfileState {
  const _$UpdateProfileStateImpl();

  @override
  String toString() {
    return 'WelcomePageState.updateProfileState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateProfileStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageState,
    required TResult Function() updateProfileState,
    required TResult Function() unknownState,
  }) {
    return updateProfileState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageState,
    TResult? Function()? updateProfileState,
    TResult? Function()? unknownState,
  }) {
    return updateProfileState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageState,
    TResult Function()? updateProfileState,
    TResult Function()? unknownState,
    required TResult orElse(),
  }) {
    if (updateProfileState != null) {
      return updateProfileState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HomePageState value) homePageState,
    required TResult Function(_UpdateProfileState value) updateProfileState,
    required TResult Function(_UnknownState value) unknownState,
  }) {
    return updateProfileState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HomePageState value)? homePageState,
    TResult? Function(_UpdateProfileState value)? updateProfileState,
    TResult? Function(_UnknownState value)? unknownState,
  }) {
    return updateProfileState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HomePageState value)? homePageState,
    TResult Function(_UpdateProfileState value)? updateProfileState,
    TResult Function(_UnknownState value)? unknownState,
    required TResult orElse(),
  }) {
    if (updateProfileState != null) {
      return updateProfileState(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileState implements WelcomePageState {
  const factory _UpdateProfileState() = _$UpdateProfileStateImpl;
}

/// @nodoc
abstract class _$$UnknownStateImplCopyWith<$Res> {
  factory _$$UnknownStateImplCopyWith(
          _$UnknownStateImpl value, $Res Function(_$UnknownStateImpl) then) =
      __$$UnknownStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownStateImplCopyWithImpl<$Res>
    extends _$WelcomePageStateCopyWithImpl<$Res, _$UnknownStateImpl>
    implements _$$UnknownStateImplCopyWith<$Res> {
  __$$UnknownStateImplCopyWithImpl(
      _$UnknownStateImpl _value, $Res Function(_$UnknownStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownStateImpl implements _UnknownState {
  const _$UnknownStateImpl();

  @override
  String toString() {
    return 'WelcomePageState.unknownState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageState,
    required TResult Function() updateProfileState,
    required TResult Function() unknownState,
  }) {
    return unknownState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageState,
    TResult? Function()? updateProfileState,
    TResult? Function()? unknownState,
  }) {
    return unknownState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageState,
    TResult Function()? updateProfileState,
    TResult Function()? unknownState,
    required TResult orElse(),
  }) {
    if (unknownState != null) {
      return unknownState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HomePageState value) homePageState,
    required TResult Function(_UpdateProfileState value) updateProfileState,
    required TResult Function(_UnknownState value) unknownState,
  }) {
    return unknownState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HomePageState value)? homePageState,
    TResult? Function(_UpdateProfileState value)? updateProfileState,
    TResult? Function(_UnknownState value)? unknownState,
  }) {
    return unknownState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HomePageState value)? homePageState,
    TResult Function(_UpdateProfileState value)? updateProfileState,
    TResult Function(_UnknownState value)? unknownState,
    required TResult orElse(),
  }) {
    if (unknownState != null) {
      return unknownState(this);
    }
    return orElse();
  }
}

abstract class _UnknownState implements WelcomePageState {
  const factory _UnknownState() = _$UnknownStateImpl;
}
