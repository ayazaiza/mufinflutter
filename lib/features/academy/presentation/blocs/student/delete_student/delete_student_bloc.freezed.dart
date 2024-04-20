// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteStudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Student student) deleteStudent,
    required TResult Function(String msg) notDeleted,
    required TResult Function(String msg) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Student student)? deleteStudent,
    TResult? Function(String msg)? notDeleted,
    TResult? Function(String msg)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Student student)? deleteStudent,
    TResult Function(String msg)? notDeleted,
    TResult Function(String msg)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(DeleteEvent value) deleteStudent,
    required TResult Function(NotDeletedEvent value) notDeleted,
    required TResult Function(DeletedEvent value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(DeleteEvent value)? deleteStudent,
    TResult? Function(NotDeletedEvent value)? notDeleted,
    TResult? Function(DeletedEvent value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DeleteEvent value)? deleteStudent,
    TResult Function(NotDeletedEvent value)? notDeleted,
    TResult Function(DeletedEvent value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteStudentEventCopyWith<$Res> {
  factory $DeleteStudentEventCopyWith(
          DeleteStudentEvent value, $Res Function(DeleteStudentEvent) then) =
      _$DeleteStudentEventCopyWithImpl<$Res, DeleteStudentEvent>;
}

/// @nodoc
class _$DeleteStudentEventCopyWithImpl<$Res, $Val extends DeleteStudentEvent>
    implements $DeleteStudentEventCopyWith<$Res> {
  _$DeleteStudentEventCopyWithImpl(this._value, this._then);

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
    extends _$DeleteStudentEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DeleteStudentEvent.started()';
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
    required TResult Function(Student student) deleteStudent,
    required TResult Function(String msg) notDeleted,
    required TResult Function(String msg) deleted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Student student)? deleteStudent,
    TResult? Function(String msg)? notDeleted,
    TResult? Function(String msg)? deleted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Student student)? deleteStudent,
    TResult Function(String msg)? notDeleted,
    TResult Function(String msg)? deleted,
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
    required TResult Function(Started value) started,
    required TResult Function(DeleteEvent value) deleteStudent,
    required TResult Function(NotDeletedEvent value) notDeleted,
    required TResult Function(DeletedEvent value) deleted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(DeleteEvent value)? deleteStudent,
    TResult? Function(NotDeletedEvent value)? notDeleted,
    TResult? Function(DeletedEvent value)? deleted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DeleteEvent value)? deleteStudent,
    TResult Function(NotDeletedEvent value)? notDeleted,
    TResult Function(DeletedEvent value)? deleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements DeleteStudentEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DeleteEventImplCopyWith<$Res> {
  factory _$$DeleteEventImplCopyWith(
          _$DeleteEventImpl value, $Res Function(_$DeleteEventImpl) then) =
      __$$DeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Student student});
}

/// @nodoc
class __$$DeleteEventImplCopyWithImpl<$Res>
    extends _$DeleteStudentEventCopyWithImpl<$Res, _$DeleteEventImpl>
    implements _$$DeleteEventImplCopyWith<$Res> {
  __$$DeleteEventImplCopyWithImpl(
      _$DeleteEventImpl _value, $Res Function(_$DeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$DeleteEventImpl(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
    ));
  }
}

/// @nodoc

class _$DeleteEventImpl implements DeleteEvent {
  const _$DeleteEventImpl({required this.student});

  @override
  final Student student;

  @override
  String toString() {
    return 'DeleteStudentEvent.deleteStudent(student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventImpl &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      __$$DeleteEventImplCopyWithImpl<_$DeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Student student) deleteStudent,
    required TResult Function(String msg) notDeleted,
    required TResult Function(String msg) deleted,
  }) {
    return deleteStudent(student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Student student)? deleteStudent,
    TResult? Function(String msg)? notDeleted,
    TResult? Function(String msg)? deleted,
  }) {
    return deleteStudent?.call(student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Student student)? deleteStudent,
    TResult Function(String msg)? notDeleted,
    TResult Function(String msg)? deleted,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(DeleteEvent value) deleteStudent,
    required TResult Function(NotDeletedEvent value) notDeleted,
    required TResult Function(DeletedEvent value) deleted,
  }) {
    return deleteStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(DeleteEvent value)? deleteStudent,
    TResult? Function(NotDeletedEvent value)? notDeleted,
    TResult? Function(DeletedEvent value)? deleted,
  }) {
    return deleteStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DeleteEvent value)? deleteStudent,
    TResult Function(NotDeletedEvent value)? notDeleted,
    TResult Function(DeletedEvent value)? deleted,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(this);
    }
    return orElse();
  }
}

abstract class DeleteEvent implements DeleteStudentEvent {
  const factory DeleteEvent({required final Student student}) =
      _$DeleteEventImpl;

  Student get student;
  @JsonKey(ignore: true)
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotDeletedEventImplCopyWith<$Res> {
  factory _$$NotDeletedEventImplCopyWith(_$NotDeletedEventImpl value,
          $Res Function(_$NotDeletedEventImpl) then) =
      __$$NotDeletedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NotDeletedEventImplCopyWithImpl<$Res>
    extends _$DeleteStudentEventCopyWithImpl<$Res, _$NotDeletedEventImpl>
    implements _$$NotDeletedEventImplCopyWith<$Res> {
  __$$NotDeletedEventImplCopyWithImpl(
      _$NotDeletedEventImpl _value, $Res Function(_$NotDeletedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$NotDeletedEventImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotDeletedEventImpl implements NotDeletedEvent {
  const _$NotDeletedEventImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'DeleteStudentEvent.notDeleted(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotDeletedEventImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotDeletedEventImplCopyWith<_$NotDeletedEventImpl> get copyWith =>
      __$$NotDeletedEventImplCopyWithImpl<_$NotDeletedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Student student) deleteStudent,
    required TResult Function(String msg) notDeleted,
    required TResult Function(String msg) deleted,
  }) {
    return notDeleted(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Student student)? deleteStudent,
    TResult? Function(String msg)? notDeleted,
    TResult? Function(String msg)? deleted,
  }) {
    return notDeleted?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Student student)? deleteStudent,
    TResult Function(String msg)? notDeleted,
    TResult Function(String msg)? deleted,
    required TResult orElse(),
  }) {
    if (notDeleted != null) {
      return notDeleted(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(DeleteEvent value) deleteStudent,
    required TResult Function(NotDeletedEvent value) notDeleted,
    required TResult Function(DeletedEvent value) deleted,
  }) {
    return notDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(DeleteEvent value)? deleteStudent,
    TResult? Function(NotDeletedEvent value)? notDeleted,
    TResult? Function(DeletedEvent value)? deleted,
  }) {
    return notDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DeleteEvent value)? deleteStudent,
    TResult Function(NotDeletedEvent value)? notDeleted,
    TResult Function(DeletedEvent value)? deleted,
    required TResult orElse(),
  }) {
    if (notDeleted != null) {
      return notDeleted(this);
    }
    return orElse();
  }
}

abstract class NotDeletedEvent implements DeleteStudentEvent {
  const factory NotDeletedEvent({required final String msg}) =
      _$NotDeletedEventImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$NotDeletedEventImplCopyWith<_$NotDeletedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedEventImplCopyWith<$Res> {
  factory _$$DeletedEventImplCopyWith(
          _$DeletedEventImpl value, $Res Function(_$DeletedEventImpl) then) =
      __$$DeletedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$DeletedEventImplCopyWithImpl<$Res>
    extends _$DeleteStudentEventCopyWithImpl<$Res, _$DeletedEventImpl>
    implements _$$DeletedEventImplCopyWith<$Res> {
  __$$DeletedEventImplCopyWithImpl(
      _$DeletedEventImpl _value, $Res Function(_$DeletedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$DeletedEventImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletedEventImpl implements DeletedEvent {
  const _$DeletedEventImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'DeleteStudentEvent.deleted(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedEventImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedEventImplCopyWith<_$DeletedEventImpl> get copyWith =>
      __$$DeletedEventImplCopyWithImpl<_$DeletedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Student student) deleteStudent,
    required TResult Function(String msg) notDeleted,
    required TResult Function(String msg) deleted,
  }) {
    return deleted(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Student student)? deleteStudent,
    TResult? Function(String msg)? notDeleted,
    TResult? Function(String msg)? deleted,
  }) {
    return deleted?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Student student)? deleteStudent,
    TResult Function(String msg)? notDeleted,
    TResult Function(String msg)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(DeleteEvent value) deleteStudent,
    required TResult Function(NotDeletedEvent value) notDeleted,
    required TResult Function(DeletedEvent value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(DeleteEvent value)? deleteStudent,
    TResult? Function(NotDeletedEvent value)? notDeleted,
    TResult? Function(DeletedEvent value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DeleteEvent value)? deleteStudent,
    TResult Function(NotDeletedEvent value)? notDeleted,
    TResult Function(DeletedEvent value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class DeletedEvent implements DeleteStudentEvent {
  const factory DeletedEvent({required final String msg}) = _$DeletedEventImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$DeletedEventImplCopyWith<_$DeletedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteStudentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) studentDeleted,
    required TResult Function(String msg) notDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String msg)? studentDeleted,
    TResult? Function(String msg)? notDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? studentDeleted,
    TResult Function(String msg)? notDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(StudentDeletedState value) studentDeleted,
    required TResult Function(NotDeletedState value) notDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(StudentDeletedState value)? studentDeleted,
    TResult? Function(NotDeletedState value)? notDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(StudentDeletedState value)? studentDeleted,
    TResult Function(NotDeletedState value)? notDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteStudentStateCopyWith<$Res> {
  factory $DeleteStudentStateCopyWith(
          DeleteStudentState value, $Res Function(DeleteStudentState) then) =
      _$DeleteStudentStateCopyWithImpl<$Res, DeleteStudentState>;
}

/// @nodoc
class _$DeleteStudentStateCopyWithImpl<$Res, $Val extends DeleteStudentState>
    implements $DeleteStudentStateCopyWith<$Res> {
  _$DeleteStudentStateCopyWithImpl(this._value, this._then);

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
    extends _$DeleteStudentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DeleteStudentState.initial()';
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
    required TResult Function(String msg) studentDeleted,
    required TResult Function(String msg) notDeleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String msg)? studentDeleted,
    TResult? Function(String msg)? notDeleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? studentDeleted,
    TResult Function(String msg)? notDeleted,
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
    required TResult Function(Initial value) initial,
    required TResult Function(StudentDeletedState value) studentDeleted,
    required TResult Function(NotDeletedState value) notDeleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(StudentDeletedState value)? studentDeleted,
    TResult? Function(NotDeletedState value)? notDeleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(StudentDeletedState value)? studentDeleted,
    TResult Function(NotDeletedState value)? notDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DeleteStudentState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$StudentDeletedStateImplCopyWith<$Res> {
  factory _$$StudentDeletedStateImplCopyWith(_$StudentDeletedStateImpl value,
          $Res Function(_$StudentDeletedStateImpl) then) =
      __$$StudentDeletedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$StudentDeletedStateImplCopyWithImpl<$Res>
    extends _$DeleteStudentStateCopyWithImpl<$Res, _$StudentDeletedStateImpl>
    implements _$$StudentDeletedStateImplCopyWith<$Res> {
  __$$StudentDeletedStateImplCopyWithImpl(_$StudentDeletedStateImpl _value,
      $Res Function(_$StudentDeletedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$StudentDeletedStateImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentDeletedStateImpl implements StudentDeletedState {
  const _$StudentDeletedStateImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'DeleteStudentState.studentDeleted(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDeletedStateImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDeletedStateImplCopyWith<_$StudentDeletedStateImpl> get copyWith =>
      __$$StudentDeletedStateImplCopyWithImpl<_$StudentDeletedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) studentDeleted,
    required TResult Function(String msg) notDeleted,
  }) {
    return studentDeleted(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String msg)? studentDeleted,
    TResult? Function(String msg)? notDeleted,
  }) {
    return studentDeleted?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? studentDeleted,
    TResult Function(String msg)? notDeleted,
    required TResult orElse(),
  }) {
    if (studentDeleted != null) {
      return studentDeleted(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(StudentDeletedState value) studentDeleted,
    required TResult Function(NotDeletedState value) notDeleted,
  }) {
    return studentDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(StudentDeletedState value)? studentDeleted,
    TResult? Function(NotDeletedState value)? notDeleted,
  }) {
    return studentDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(StudentDeletedState value)? studentDeleted,
    TResult Function(NotDeletedState value)? notDeleted,
    required TResult orElse(),
  }) {
    if (studentDeleted != null) {
      return studentDeleted(this);
    }
    return orElse();
  }
}

abstract class StudentDeletedState implements DeleteStudentState {
  const factory StudentDeletedState({required final String msg}) =
      _$StudentDeletedStateImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$StudentDeletedStateImplCopyWith<_$StudentDeletedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotDeletedStateImplCopyWith<$Res> {
  factory _$$NotDeletedStateImplCopyWith(_$NotDeletedStateImpl value,
          $Res Function(_$NotDeletedStateImpl) then) =
      __$$NotDeletedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NotDeletedStateImplCopyWithImpl<$Res>
    extends _$DeleteStudentStateCopyWithImpl<$Res, _$NotDeletedStateImpl>
    implements _$$NotDeletedStateImplCopyWith<$Res> {
  __$$NotDeletedStateImplCopyWithImpl(
      _$NotDeletedStateImpl _value, $Res Function(_$NotDeletedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$NotDeletedStateImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotDeletedStateImpl implements NotDeletedState {
  const _$NotDeletedStateImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'DeleteStudentState.notDeleted(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotDeletedStateImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotDeletedStateImplCopyWith<_$NotDeletedStateImpl> get copyWith =>
      __$$NotDeletedStateImplCopyWithImpl<_$NotDeletedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) studentDeleted,
    required TResult Function(String msg) notDeleted,
  }) {
    return notDeleted(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String msg)? studentDeleted,
    TResult? Function(String msg)? notDeleted,
  }) {
    return notDeleted?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? studentDeleted,
    TResult Function(String msg)? notDeleted,
    required TResult orElse(),
  }) {
    if (notDeleted != null) {
      return notDeleted(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(StudentDeletedState value) studentDeleted,
    required TResult Function(NotDeletedState value) notDeleted,
  }) {
    return notDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(StudentDeletedState value)? studentDeleted,
    TResult? Function(NotDeletedState value)? notDeleted,
  }) {
    return notDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(StudentDeletedState value)? studentDeleted,
    TResult Function(NotDeletedState value)? notDeleted,
    required TResult orElse(),
  }) {
    if (notDeleted != null) {
      return notDeleted(this);
    }
    return orElse();
  }
}

abstract class NotDeletedState implements DeleteStudentState {
  const factory NotDeletedState({required final String msg}) =
      _$NotDeletedStateImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$NotDeletedStateImplCopyWith<_$NotDeletedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
