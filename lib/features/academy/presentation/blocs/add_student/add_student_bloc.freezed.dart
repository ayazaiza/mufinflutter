// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddStudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentEventCopyWith<$Res> {
  factory $AddStudentEventCopyWith(
          AddStudentEvent value, $Res Function(AddStudentEvent) then) =
      _$AddStudentEventCopyWithImpl<$Res, AddStudentEvent>;
}

/// @nodoc
class _$AddStudentEventCopyWithImpl<$Res, $Val extends AddStudentEvent>
    implements $AddStudentEventCopyWith<$Res> {
  _$AddStudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadUserImplCopyWith<$Res> {
  factory _$$LoadUserImplCopyWith(
          _$LoadUserImpl value, $Res Function(_$LoadUserImpl) then) =
      __$$LoadUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$LoadUserImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$LoadUserImpl>
    implements _$$LoadUserImplCopyWith<$Res> {
  __$$LoadUserImplCopyWithImpl(
      _$LoadUserImpl _value, $Res Function(_$LoadUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$LoadUserImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadUserImpl implements LoadUser {
  const _$LoadUserImpl({required this.uuid});

  @override
  final String uuid;

  @override
  String toString() {
    return 'AddStudentEvent.loadUser(uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUserImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUserImplCopyWith<_$LoadUserImpl> get copyWith =>
      __$$LoadUserImplCopyWithImpl<_$LoadUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return loadUser(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return loadUser?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class LoadUser implements AddStudentEvent {
  const factory LoadUser({required final String uuid}) = _$LoadUserImpl;

  String get uuid;
  @JsonKey(ignore: true)
  _$$LoadUserImplCopyWith<_$LoadUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadStudentImplCopyWith<$Res> {
  factory _$$LoadStudentImplCopyWith(
          _$LoadStudentImpl value, $Res Function(_$LoadStudentImpl) then) =
      __$$LoadStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? studentId});
}

/// @nodoc
class __$$LoadStudentImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$LoadStudentImpl>
    implements _$$LoadStudentImplCopyWith<$Res> {
  __$$LoadStudentImplCopyWithImpl(
      _$LoadStudentImpl _value, $Res Function(_$LoadStudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
  }) {
    return _then(_$LoadStudentImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadStudentImpl implements LoadStudent {
  const _$LoadStudentImpl({required this.studentId});

  @override
  final String? studentId;

  @override
  String toString() {
    return 'AddStudentEvent.loadStudent(studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadStudentImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadStudentImplCopyWith<_$LoadStudentImpl> get copyWith =>
      __$$LoadStudentImplCopyWithImpl<_$LoadStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return loadStudent(studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return loadStudent?.call(studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadStudent != null) {
      return loadStudent(studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return loadStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return loadStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (loadStudent != null) {
      return loadStudent(this);
    }
    return orElse();
  }
}

abstract class LoadStudent implements AddStudentEvent {
  const factory LoadStudent({required final String? studentId}) =
      _$LoadStudentImpl;

  String? get studentId;
  @JsonKey(ignore: true)
  _$$LoadStudentImplCopyWith<_$LoadStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignStudentImplCopyWith<$Res> {
  factory _$$AssignStudentImplCopyWith(
          _$AssignStudentImpl value, $Res Function(_$AssignStudentImpl) then) =
      __$$AssignStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Student? student, String? error});
}

/// @nodoc
class __$$AssignStudentImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$AssignStudentImpl>
    implements _$$AssignStudentImplCopyWith<$Res> {
  __$$AssignStudentImplCopyWithImpl(
      _$AssignStudentImpl _value, $Res Function(_$AssignStudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = freezed,
    Object? error = freezed,
  }) {
    return _then(_$AssignStudentImpl(
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AssignStudentImpl implements AssignStudent {
  const _$AssignStudentImpl({this.student, this.error});

  @override
  final Student? student;
  @override
  final String? error;

  @override
  String toString() {
    return 'AddStudentEvent.assignStudent(student: $student, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignStudentImpl &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignStudentImplCopyWith<_$AssignStudentImpl> get copyWith =>
      __$$AssignStudentImplCopyWithImpl<_$AssignStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return assignStudent(student, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return assignStudent?.call(student, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (assignStudent != null) {
      return assignStudent(student, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return assignStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return assignStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (assignStudent != null) {
      return assignStudent(this);
    }
    return orElse();
  }
}

abstract class AssignStudent implements AddStudentEvent {
  const factory AssignStudent({final Student? student, final String? error}) =
      _$AssignStudentImpl;

  Student? get student;
  String? get error;
  @JsonKey(ignore: true)
  _$$AssignStudentImplCopyWith<_$AssignStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignUserImplCopyWith<$Res> {
  factory _$$AssignUserImplCopyWith(
          _$AssignUserImpl value, $Res Function(_$AssignUserImpl) then) =
      __$$AssignUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MufinUser? user, String? error});
}

/// @nodoc
class __$$AssignUserImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$AssignUserImpl>
    implements _$$AssignUserImplCopyWith<$Res> {
  __$$AssignUserImplCopyWithImpl(
      _$AssignUserImpl _value, $Res Function(_$AssignUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? error = freezed,
  }) {
    return _then(_$AssignUserImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MufinUser?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AssignUserImpl implements AssignUser {
  const _$AssignUserImpl({this.user, this.error});

  @override
  final MufinUser? user;
  @override
  final String? error;

  @override
  String toString() {
    return 'AddStudentEvent.assignUser(user: $user, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignUserImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignUserImplCopyWith<_$AssignUserImpl> get copyWith =>
      __$$AssignUserImplCopyWithImpl<_$AssignUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return assignUser(user, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return assignUser?.call(user, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (assignUser != null) {
      return assignUser(user, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return assignUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return assignUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (assignUser != null) {
      return assignUser(this);
    }
    return orElse();
  }
}

abstract class AssignUser implements AddStudentEvent {
  const factory AssignUser({final MufinUser? user, final String? error}) =
      _$AssignUserImpl;

  MufinUser? get user;
  String? get error;
  @JsonKey(ignore: true)
  _$$AssignUserImplCopyWith<_$AssignUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameImplCopyWith<$Res> {
  factory _$$FirstNameImplCopyWith(
          _$FirstNameImpl value, $Res Function(_$FirstNameImpl) then) =
      __$$FirstNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$FirstNameImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$FirstNameImpl>
    implements _$$FirstNameImplCopyWith<$Res> {
  __$$FirstNameImplCopyWithImpl(
      _$FirstNameImpl _value, $Res Function(_$FirstNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$FirstNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameImpl implements FirstName {
  const _$FirstNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'AddStudentEvent.firstName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameImplCopyWith<_$FirstNameImpl> get copyWith =>
      __$$FirstNameImplCopyWithImpl<_$FirstNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return firstName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return firstName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (firstName != null) {
      return firstName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return firstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return firstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (firstName != null) {
      return firstName(this);
    }
    return orElse();
  }
}

abstract class FirstName implements AddStudentEvent {
  const factory FirstName({required final String name}) = _$FirstNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$FirstNameImplCopyWith<_$FirstNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameImplCopyWith<$Res> {
  factory _$$LastNameImplCopyWith(
          _$LastNameImpl value, $Res Function(_$LastNameImpl) then) =
      __$$LastNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$LastNameImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$LastNameImpl>
    implements _$$LastNameImplCopyWith<$Res> {
  __$$LastNameImplCopyWithImpl(
      _$LastNameImpl _value, $Res Function(_$LastNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$LastNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameImpl implements LastName {
  const _$LastNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'AddStudentEvent.lastName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameImplCopyWith<_$LastNameImpl> get copyWith =>
      __$$LastNameImplCopyWithImpl<_$LastNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return lastName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return lastName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (lastName != null) {
      return lastName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return lastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return lastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (lastName != null) {
      return lastName(this);
    }
    return orElse();
  }
}

abstract class LastName implements AddStudentEvent {
  const factory LastName({required final String name}) = _$LastNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$LastNameImplCopyWith<_$LastNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RelationImplCopyWith<$Res> {
  factory _$$RelationImplCopyWith(
          _$RelationImpl value, $Res Function(_$RelationImpl) then) =
      __$$RelationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String relation});
}

/// @nodoc
class __$$RelationImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$RelationImpl>
    implements _$$RelationImplCopyWith<$Res> {
  __$$RelationImplCopyWithImpl(
      _$RelationImpl _value, $Res Function(_$RelationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relation = null,
  }) {
    return _then(_$RelationImpl(
      relation: null == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RelationImpl implements Relation {
  const _$RelationImpl({required this.relation});

  @override
  final String relation;

  @override
  String toString() {
    return 'AddStudentEvent.relation(relation: $relation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationImpl &&
            (identical(other.relation, relation) ||
                other.relation == relation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationImplCopyWith<_$RelationImpl> get copyWith =>
      __$$RelationImplCopyWithImpl<_$RelationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return relation(this.relation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return relation?.call(this.relation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (relation != null) {
      return relation(this.relation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return relation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return relation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (relation != null) {
      return relation(this);
    }
    return orElse();
  }
}

abstract class Relation implements AddStudentEvent {
  const factory Relation({required final String relation}) = _$RelationImpl;

  String get relation;
  @JsonKey(ignore: true)
  _$$RelationImplCopyWith<_$RelationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateOfBirthImplCopyWith<$Res> {
  factory _$$DateOfBirthImplCopyWith(
          _$DateOfBirthImpl value, $Res Function(_$DateOfBirthImpl) then) =
      __$$DateOfBirthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dateOfBirth, String age});
}

/// @nodoc
class __$$DateOfBirthImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$DateOfBirthImpl>
    implements _$$DateOfBirthImplCopyWith<$Res> {
  __$$DateOfBirthImplCopyWithImpl(
      _$DateOfBirthImpl _value, $Res Function(_$DateOfBirthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfBirth = null,
    Object? age = null,
  }) {
    return _then(_$DateOfBirthImpl(
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DateOfBirthImpl implements DateOfBirth {
  const _$DateOfBirthImpl({required this.dateOfBirth, required this.age});

  @override
  final String dateOfBirth;
  @override
  final String age;

  @override
  String toString() {
    return 'AddStudentEvent.dateOfBirth(dateOfBirth: $dateOfBirth, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateOfBirthImpl &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateOfBirth, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateOfBirthImplCopyWith<_$DateOfBirthImpl> get copyWith =>
      __$$DateOfBirthImplCopyWithImpl<_$DateOfBirthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return dateOfBirth(this.dateOfBirth, age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return dateOfBirth?.call(this.dateOfBirth, age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (dateOfBirth != null) {
      return dateOfBirth(this.dateOfBirth, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return dateOfBirth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return dateOfBirth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (dateOfBirth != null) {
      return dateOfBirth(this);
    }
    return orElse();
  }
}

abstract class DateOfBirth implements AddStudentEvent {
  const factory DateOfBirth(
      {required final String dateOfBirth,
      required final String age}) = _$DateOfBirthImpl;

  String get dateOfBirth;
  String get age;
  @JsonKey(ignore: true)
  _$$DateOfBirthImplCopyWith<_$DateOfBirthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderEventImplCopyWith<$Res> {
  factory _$$GenderEventImplCopyWith(
          _$GenderEventImpl value, $Res Function(_$GenderEventImpl) then) =
      __$$GenderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Gender gender});
}

/// @nodoc
class __$$GenderEventImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$GenderEventImpl>
    implements _$$GenderEventImplCopyWith<$Res> {
  __$$GenderEventImplCopyWithImpl(
      _$GenderEventImpl _value, $Res Function(_$GenderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$GenderEventImpl(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
    ));
  }
}

/// @nodoc

class _$GenderEventImpl implements GenderEvent {
  const _$GenderEventImpl({required this.gender});

  @override
  final Gender gender;

  @override
  String toString() {
    return 'AddStudentEvent.genderEvent(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderEventImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderEventImplCopyWith<_$GenderEventImpl> get copyWith =>
      __$$GenderEventImplCopyWithImpl<_$GenderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return genderEvent(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return genderEvent?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (genderEvent != null) {
      return genderEvent(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return genderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return genderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (genderEvent != null) {
      return genderEvent(this);
    }
    return orElse();
  }
}

abstract class GenderEvent implements AddStudentEvent {
  const factory GenderEvent({required final Gender gender}) = _$GenderEventImpl;

  Gender get gender;
  @JsonKey(ignore: true)
  _$$GenderEventImplCopyWith<_$GenderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitScreenImplCopyWith<$Res> {
  factory _$$InitScreenImplCopyWith(
          _$InitScreenImpl value, $Res Function(_$InitScreenImpl) then) =
      __$$InitScreenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid, String? studentId});
}

/// @nodoc
class __$$InitScreenImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$InitScreenImpl>
    implements _$$InitScreenImplCopyWith<$Res> {
  __$$InitScreenImplCopyWithImpl(
      _$InitScreenImpl _value, $Res Function(_$InitScreenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? studentId = freezed,
  }) {
    return _then(_$InitScreenImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitScreenImpl implements InitScreen {
  const _$InitScreenImpl({required this.uuid, this.studentId});

  @override
  final String uuid;
  @override
  final String? studentId;

  @override
  String toString() {
    return 'AddStudentEvent.initScreen(uuid: $uuid, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitScreenImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitScreenImplCopyWith<_$InitScreenImpl> get copyWith =>
      __$$InitScreenImplCopyWithImpl<_$InitScreenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return initScreen(uuid, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return initScreen?.call(uuid, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (initScreen != null) {
      return initScreen(uuid, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return initScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return initScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (initScreen != null) {
      return initScreen(this);
    }
    return orElse();
  }
}

abstract class InitScreen implements AddStudentEvent {
  const factory InitScreen(
      {required final String uuid, final String? studentId}) = _$InitScreenImpl;

  String get uuid;
  String? get studentId;
  @JsonKey(ignore: true)
  _$$InitScreenImplCopyWith<_$InitScreenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitImpl implements Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'AddStudentEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements AddStudentEvent {
  const factory Submit() = _$SubmitImpl;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'AddStudentEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) loadUser,
    required TResult Function(String? studentId) loadStudent,
    required TResult Function(Student? student, String? error) assignStudent,
    required TResult Function(MufinUser? user, String? error) assignUser,
    required TResult Function(String name) firstName,
    required TResult Function(String name) lastName,
    required TResult Function(String relation) relation,
    required TResult Function(String dateOfBirth, String age) dateOfBirth,
    required TResult Function(Gender gender) genderEvent,
    required TResult Function(String uuid, String? studentId) initScreen,
    required TResult Function() submit,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? loadUser,
    TResult? Function(String? studentId)? loadStudent,
    TResult? Function(Student? student, String? error)? assignStudent,
    TResult? Function(MufinUser? user, String? error)? assignUser,
    TResult? Function(String name)? firstName,
    TResult? Function(String name)? lastName,
    TResult? Function(String relation)? relation,
    TResult? Function(String dateOfBirth, String age)? dateOfBirth,
    TResult? Function(Gender gender)? genderEvent,
    TResult? Function(String uuid, String? studentId)? initScreen,
    TResult? Function()? submit,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? loadUser,
    TResult Function(String? studentId)? loadStudent,
    TResult Function(Student? student, String? error)? assignStudent,
    TResult Function(MufinUser? user, String? error)? assignUser,
    TResult Function(String name)? firstName,
    TResult Function(String name)? lastName,
    TResult Function(String relation)? relation,
    TResult Function(String dateOfBirth, String age)? dateOfBirth,
    TResult Function(Gender gender)? genderEvent,
    TResult Function(String uuid, String? studentId)? initScreen,
    TResult Function()? submit,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(LoadStudent value) loadStudent,
    required TResult Function(AssignStudent value) assignStudent,
    required TResult Function(AssignUser value) assignUser,
    required TResult Function(FirstName value) firstName,
    required TResult Function(LastName value) lastName,
    required TResult Function(Relation value) relation,
    required TResult Function(DateOfBirth value) dateOfBirth,
    required TResult Function(GenderEvent value) genderEvent,
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(Submit value) submit,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(LoadStudent value)? loadStudent,
    TResult? Function(AssignStudent value)? assignStudent,
    TResult? Function(AssignUser value)? assignUser,
    TResult? Function(FirstName value)? firstName,
    TResult? Function(LastName value)? lastName,
    TResult? Function(Relation value)? relation,
    TResult? Function(DateOfBirth value)? dateOfBirth,
    TResult? Function(GenderEvent value)? genderEvent,
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(Submit value)? submit,
    TResult? Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(LoadStudent value)? loadStudent,
    TResult Function(AssignStudent value)? assignStudent,
    TResult Function(AssignUser value)? assignUser,
    TResult Function(FirstName value)? firstName,
    TResult Function(LastName value)? lastName,
    TResult Function(Relation value)? relation,
    TResult Function(DateOfBirth value)? dateOfBirth,
    TResult Function(GenderEvent value)? genderEvent,
    TResult Function(InitScreen value)? initScreen,
    TResult Function(Submit value)? submit,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements AddStudentEvent {
  const factory Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$AddStudentState {
  String? get uuid => throw _privateConstructorUsedError;
  String? get studentId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get successMsg => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get firstNameError => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get lastNameError => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String? get dateOfBirthError => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get genderError => throw _privateConstructorUsedError;
  Student? get student => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get screenLoading => throw _privateConstructorUsedError;
  List<String> get relationsList => throw _privateConstructorUsedError;
  String? get relation => throw _privateConstructorUsedError;
  String? get relationError => throw _privateConstructorUsedError;
  MufinUser? get mufinUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStudentStateCopyWith<AddStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentStateCopyWith<$Res> {
  factory $AddStudentStateCopyWith(
          AddStudentState value, $Res Function(AddStudentState) then) =
      _$AddStudentStateCopyWithImpl<$Res, AddStudentState>;
  @useResult
  $Res call(
      {String? uuid,
      String? studentId,
      String? error,
      String? successMsg,
      String? errorMsg,
      String email,
      String firstName,
      String? firstNameError,
      String lastName,
      String? lastNameError,
      String dateOfBirth,
      String? dateOfBirthError,
      String age,
      Gender? gender,
      String? genderError,
      Student? student,
      bool isLoading,
      bool screenLoading,
      List<String> relationsList,
      String? relation,
      String? relationError,
      MufinUser? mufinUser});
}

/// @nodoc
class _$AddStudentStateCopyWithImpl<$Res, $Val extends AddStudentState>
    implements $AddStudentStateCopyWith<$Res> {
  _$AddStudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? studentId = freezed,
    Object? error = freezed,
    Object? successMsg = freezed,
    Object? errorMsg = freezed,
    Object? email = null,
    Object? firstName = null,
    Object? firstNameError = freezed,
    Object? lastName = null,
    Object? lastNameError = freezed,
    Object? dateOfBirth = null,
    Object? dateOfBirthError = freezed,
    Object? age = null,
    Object? gender = freezed,
    Object? genderError = freezed,
    Object? student = freezed,
    Object? isLoading = null,
    Object? screenLoading = null,
    Object? relationsList = null,
    Object? relation = freezed,
    Object? relationError = freezed,
    Object? mufinUser = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      successMsg: freezed == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      firstNameError: freezed == firstNameError
          ? _value.firstNameError
          : firstNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameError: freezed == lastNameError
          ? _value.lastNameError
          : lastNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirthError: freezed == dateOfBirthError
          ? _value.dateOfBirthError
          : dateOfBirthError // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      genderError: freezed == genderError
          ? _value.genderError
          : genderError // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      screenLoading: null == screenLoading
          ? _value.screenLoading
          : screenLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      relationsList: null == relationsList
          ? _value.relationsList
          : relationsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
      relationError: freezed == relationError
          ? _value.relationError
          : relationError // ignore: cast_nullable_to_non_nullable
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
    implements $AddStudentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? studentId,
      String? error,
      String? successMsg,
      String? errorMsg,
      String email,
      String firstName,
      String? firstNameError,
      String lastName,
      String? lastNameError,
      String dateOfBirth,
      String? dateOfBirthError,
      String age,
      Gender? gender,
      String? genderError,
      Student? student,
      bool isLoading,
      bool screenLoading,
      List<String> relationsList,
      String? relation,
      String? relationError,
      MufinUser? mufinUser});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddStudentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? studentId = freezed,
    Object? error = freezed,
    Object? successMsg = freezed,
    Object? errorMsg = freezed,
    Object? email = null,
    Object? firstName = null,
    Object? firstNameError = freezed,
    Object? lastName = null,
    Object? lastNameError = freezed,
    Object? dateOfBirth = null,
    Object? dateOfBirthError = freezed,
    Object? age = null,
    Object? gender = freezed,
    Object? genderError = freezed,
    Object? student = freezed,
    Object? isLoading = null,
    Object? screenLoading = null,
    Object? relationsList = null,
    Object? relation = freezed,
    Object? relationError = freezed,
    Object? mufinUser = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      successMsg: freezed == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      firstNameError: freezed == firstNameError
          ? _value.firstNameError
          : firstNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameError: freezed == lastNameError
          ? _value.lastNameError
          : lastNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirthError: freezed == dateOfBirthError
          ? _value.dateOfBirthError
          : dateOfBirthError // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      genderError: freezed == genderError
          ? _value.genderError
          : genderError // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      screenLoading: null == screenLoading
          ? _value.screenLoading
          : screenLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      relationsList: null == relationsList
          ? _value._relationsList
          : relationsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
      relationError: freezed == relationError
          ? _value.relationError
          : relationError // ignore: cast_nullable_to_non_nullable
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
  const _$InitialImpl(
      {this.uuid,
      this.studentId,
      this.error,
      this.successMsg,
      this.errorMsg,
      this.email = "",
      this.firstName = "",
      this.firstNameError,
      this.lastName = "",
      this.lastNameError,
      this.dateOfBirth = "",
      this.dateOfBirthError,
      this.age = "",
      this.gender,
      this.genderError,
      this.student,
      this.isLoading = false,
      this.screenLoading = true,
      final List<String> relationsList = const [
        "Son",
        "Daughter",
        "Nephew",
        "Mother",
        "Father",
        "Guardian",
        "Husband",
        "Wife",
        "Brother",
        "Sister",
        "Friend",
        "Relative",
        "Self",
        "Others"
      ],
      this.relation,
      this.relationError,
      this.mufinUser})
      : _relationsList = relationsList;

  @override
  final String? uuid;
  @override
  final String? studentId;
  @override
  final String? error;
  @override
  final String? successMsg;
  @override
  final String? errorMsg;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String firstName;
  @override
  final String? firstNameError;
  @override
  @JsonKey()
  final String lastName;
  @override
  final String? lastNameError;
  @override
  @JsonKey()
  final String dateOfBirth;
  @override
  final String? dateOfBirthError;
  @override
  @JsonKey()
  final String age;
  @override
  final Gender? gender;
  @override
  final String? genderError;
  @override
  final Student? student;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool screenLoading;
  final List<String> _relationsList;
  @override
  @JsonKey()
  List<String> get relationsList {
    if (_relationsList is EqualUnmodifiableListView) return _relationsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relationsList);
  }

  @override
  final String? relation;
  @override
  final String? relationError;
  @override
  final MufinUser? mufinUser;

  @override
  String toString() {
    return 'AddStudentState(uuid: $uuid, studentId: $studentId, error: $error, successMsg: $successMsg, errorMsg: $errorMsg, email: $email, firstName: $firstName, firstNameError: $firstNameError, lastName: $lastName, lastNameError: $lastNameError, dateOfBirth: $dateOfBirth, dateOfBirthError: $dateOfBirthError, age: $age, gender: $gender, genderError: $genderError, student: $student, isLoading: $isLoading, screenLoading: $screenLoading, relationsList: $relationsList, relation: $relation, relationError: $relationError, mufinUser: $mufinUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.successMsg, successMsg) ||
                other.successMsg == successMsg) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.firstNameError, firstNameError) ||
                other.firstNameError == firstNameError) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.lastNameError, lastNameError) ||
                other.lastNameError == lastNameError) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.dateOfBirthError, dateOfBirthError) ||
                other.dateOfBirthError == dateOfBirthError) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderError, genderError) ||
                other.genderError == genderError) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.screenLoading, screenLoading) ||
                other.screenLoading == screenLoading) &&
            const DeepCollectionEquality()
                .equals(other._relationsList, _relationsList) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.relationError, relationError) ||
                other.relationError == relationError) &&
            (identical(other.mufinUser, mufinUser) ||
                other.mufinUser == mufinUser));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uuid,
        studentId,
        error,
        successMsg,
        errorMsg,
        email,
        firstName,
        firstNameError,
        lastName,
        lastNameError,
        dateOfBirth,
        dateOfBirthError,
        age,
        gender,
        genderError,
        student,
        isLoading,
        screenLoading,
        const DeepCollectionEquality().hash(_relationsList),
        relation,
        relationError,
        mufinUser
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AddStudentState {
  const factory _Initial(
      {final String? uuid,
      final String? studentId,
      final String? error,
      final String? successMsg,
      final String? errorMsg,
      final String email,
      final String firstName,
      final String? firstNameError,
      final String lastName,
      final String? lastNameError,
      final String dateOfBirth,
      final String? dateOfBirthError,
      final String age,
      final Gender? gender,
      final String? genderError,
      final Student? student,
      final bool isLoading,
      final bool screenLoading,
      final List<String> relationsList,
      final String? relation,
      final String? relationError,
      final MufinUser? mufinUser}) = _$InitialImpl;

  @override
  String? get uuid;
  @override
  String? get studentId;
  @override
  String? get error;
  @override
  String? get successMsg;
  @override
  String? get errorMsg;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String? get firstNameError;
  @override
  String get lastName;
  @override
  String? get lastNameError;
  @override
  String get dateOfBirth;
  @override
  String? get dateOfBirthError;
  @override
  String get age;
  @override
  Gender? get gender;
  @override
  String? get genderError;
  @override
  Student? get student;
  @override
  bool get isLoading;
  @override
  bool get screenLoading;
  @override
  List<String> get relationsList;
  @override
  String? get relation;
  @override
  String? get relationError;
  @override
  MufinUser? get mufinUser;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
