// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_students_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllStudentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) startEvent,
    required TResult Function(String studentId) deleteStudentEvent,
    required TResult Function(List<Student> students) newList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? startEvent,
    TResult? Function(String studentId)? deleteStudentEvent,
    TResult? Function(List<Student> students)? newList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? startEvent,
    TResult Function(String studentId)? deleteStudentEvent,
    TResult Function(List<Student> students)? newList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartEvent value) startEvent,
    required TResult Function(DeleteStudentEvent value) deleteStudentEvent,
    required TResult Function(NewStudentList value) newList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartEvent value)? startEvent,
    TResult? Function(DeleteStudentEvent value)? deleteStudentEvent,
    TResult? Function(NewStudentList value)? newList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartEvent value)? startEvent,
    TResult Function(DeleteStudentEvent value)? deleteStudentEvent,
    TResult Function(NewStudentList value)? newList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllStudentsEventCopyWith<$Res> {
  factory $AllStudentsEventCopyWith(
          AllStudentsEvent value, $Res Function(AllStudentsEvent) then) =
      _$AllStudentsEventCopyWithImpl<$Res, AllStudentsEvent>;
}

/// @nodoc
class _$AllStudentsEventCopyWithImpl<$Res, $Val extends AllStudentsEvent>
    implements $AllStudentsEventCopyWith<$Res> {
  _$AllStudentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartEventImplCopyWith<$Res> {
  factory _$$StartEventImplCopyWith(
          _$StartEventImpl value, $Res Function(_$StartEventImpl) then) =
      __$$StartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$StartEventImplCopyWithImpl<$Res>
    extends _$AllStudentsEventCopyWithImpl<$Res, _$StartEventImpl>
    implements _$$StartEventImplCopyWith<$Res> {
  __$$StartEventImplCopyWithImpl(
      _$StartEventImpl _value, $Res Function(_$StartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$StartEventImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartEventImpl implements StartEvent {
  const _$StartEventImpl({required this.uuid});

  @override
  final String uuid;

  @override
  String toString() {
    return 'AllStudentsEvent.startEvent(uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartEventImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartEventImplCopyWith<_$StartEventImpl> get copyWith =>
      __$$StartEventImplCopyWithImpl<_$StartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) startEvent,
    required TResult Function(String studentId) deleteStudentEvent,
    required TResult Function(List<Student> students) newList,
  }) {
    return startEvent(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? startEvent,
    TResult? Function(String studentId)? deleteStudentEvent,
    TResult? Function(List<Student> students)? newList,
  }) {
    return startEvent?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? startEvent,
    TResult Function(String studentId)? deleteStudentEvent,
    TResult Function(List<Student> students)? newList,
    required TResult orElse(),
  }) {
    if (startEvent != null) {
      return startEvent(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartEvent value) startEvent,
    required TResult Function(DeleteStudentEvent value) deleteStudentEvent,
    required TResult Function(NewStudentList value) newList,
  }) {
    return startEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartEvent value)? startEvent,
    TResult? Function(DeleteStudentEvent value)? deleteStudentEvent,
    TResult? Function(NewStudentList value)? newList,
  }) {
    return startEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartEvent value)? startEvent,
    TResult Function(DeleteStudentEvent value)? deleteStudentEvent,
    TResult Function(NewStudentList value)? newList,
    required TResult orElse(),
  }) {
    if (startEvent != null) {
      return startEvent(this);
    }
    return orElse();
  }
}

abstract class StartEvent implements AllStudentsEvent {
  const factory StartEvent({required final String uuid}) = _$StartEventImpl;

  String get uuid;
  @JsonKey(ignore: true)
  _$$StartEventImplCopyWith<_$StartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteStudentEventImplCopyWith<$Res> {
  factory _$$DeleteStudentEventImplCopyWith(_$DeleteStudentEventImpl value,
          $Res Function(_$DeleteStudentEventImpl) then) =
      __$$DeleteStudentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String studentId});
}

/// @nodoc
class __$$DeleteStudentEventImplCopyWithImpl<$Res>
    extends _$AllStudentsEventCopyWithImpl<$Res, _$DeleteStudentEventImpl>
    implements _$$DeleteStudentEventImplCopyWith<$Res> {
  __$$DeleteStudentEventImplCopyWithImpl(_$DeleteStudentEventImpl _value,
      $Res Function(_$DeleteStudentEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
  }) {
    return _then(_$DeleteStudentEventImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteStudentEventImpl implements DeleteStudentEvent {
  const _$DeleteStudentEventImpl({required this.studentId});

  @override
  final String studentId;

  @override
  String toString() {
    return 'AllStudentsEvent.deleteStudentEvent(studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStudentEventImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStudentEventImplCopyWith<_$DeleteStudentEventImpl> get copyWith =>
      __$$DeleteStudentEventImplCopyWithImpl<_$DeleteStudentEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) startEvent,
    required TResult Function(String studentId) deleteStudentEvent,
    required TResult Function(List<Student> students) newList,
  }) {
    return deleteStudentEvent(studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? startEvent,
    TResult? Function(String studentId)? deleteStudentEvent,
    TResult? Function(List<Student> students)? newList,
  }) {
    return deleteStudentEvent?.call(studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? startEvent,
    TResult Function(String studentId)? deleteStudentEvent,
    TResult Function(List<Student> students)? newList,
    required TResult orElse(),
  }) {
    if (deleteStudentEvent != null) {
      return deleteStudentEvent(studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartEvent value) startEvent,
    required TResult Function(DeleteStudentEvent value) deleteStudentEvent,
    required TResult Function(NewStudentList value) newList,
  }) {
    return deleteStudentEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartEvent value)? startEvent,
    TResult? Function(DeleteStudentEvent value)? deleteStudentEvent,
    TResult? Function(NewStudentList value)? newList,
  }) {
    return deleteStudentEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartEvent value)? startEvent,
    TResult Function(DeleteStudentEvent value)? deleteStudentEvent,
    TResult Function(NewStudentList value)? newList,
    required TResult orElse(),
  }) {
    if (deleteStudentEvent != null) {
      return deleteStudentEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteStudentEvent implements AllStudentsEvent {
  const factory DeleteStudentEvent({required final String studentId}) =
      _$DeleteStudentEventImpl;

  String get studentId;
  @JsonKey(ignore: true)
  _$$DeleteStudentEventImplCopyWith<_$DeleteStudentEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewStudentListImplCopyWith<$Res> {
  factory _$$NewStudentListImplCopyWith(_$NewStudentListImpl value,
          $Res Function(_$NewStudentListImpl) then) =
      __$$NewStudentListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Student> students});
}

/// @nodoc
class __$$NewStudentListImplCopyWithImpl<$Res>
    extends _$AllStudentsEventCopyWithImpl<$Res, _$NewStudentListImpl>
    implements _$$NewStudentListImplCopyWith<$Res> {
  __$$NewStudentListImplCopyWithImpl(
      _$NewStudentListImpl _value, $Res Function(_$NewStudentListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
  }) {
    return _then(_$NewStudentListImpl(
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc

class _$NewStudentListImpl implements NewStudentList {
  const _$NewStudentListImpl({required final List<Student> students})
      : _students = students;

  final List<Student> _students;
  @override
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'AllStudentsEvent.newList(students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewStudentListImpl &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewStudentListImplCopyWith<_$NewStudentListImpl> get copyWith =>
      __$$NewStudentListImplCopyWithImpl<_$NewStudentListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid) startEvent,
    required TResult Function(String studentId) deleteStudentEvent,
    required TResult Function(List<Student> students) newList,
  }) {
    return newList(students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid)? startEvent,
    TResult? Function(String studentId)? deleteStudentEvent,
    TResult? Function(List<Student> students)? newList,
  }) {
    return newList?.call(students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid)? startEvent,
    TResult Function(String studentId)? deleteStudentEvent,
    TResult Function(List<Student> students)? newList,
    required TResult orElse(),
  }) {
    if (newList != null) {
      return newList(students);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartEvent value) startEvent,
    required TResult Function(DeleteStudentEvent value) deleteStudentEvent,
    required TResult Function(NewStudentList value) newList,
  }) {
    return newList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartEvent value)? startEvent,
    TResult? Function(DeleteStudentEvent value)? deleteStudentEvent,
    TResult? Function(NewStudentList value)? newList,
  }) {
    return newList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartEvent value)? startEvent,
    TResult Function(DeleteStudentEvent value)? deleteStudentEvent,
    TResult Function(NewStudentList value)? newList,
    required TResult orElse(),
  }) {
    if (newList != null) {
      return newList(this);
    }
    return orElse();
  }
}

abstract class NewStudentList implements AllStudentsEvent {
  const factory NewStudentList({required final List<Student> students}) =
      _$NewStudentListImpl;

  List<Student> get students;
  @JsonKey(ignore: true)
  _$$NewStudentListImplCopyWith<_$NewStudentListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllStudentsState {
  String? get uuid => throw _privateConstructorUsedError;
  List<Student> get students => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllStudentsStateCopyWith<AllStudentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllStudentsStateCopyWith<$Res> {
  factory $AllStudentsStateCopyWith(
          AllStudentsState value, $Res Function(AllStudentsState) then) =
      _$AllStudentsStateCopyWithImpl<$Res, AllStudentsState>;
  @useResult
  $Res call({String? uuid, List<Student> students, bool isLoading});
}

/// @nodoc
class _$AllStudentsStateCopyWithImpl<$Res, $Val extends AllStudentsState>
    implements $AllStudentsStateCopyWith<$Res> {
  _$AllStudentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? students = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AllStudentsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uuid, List<Student> students, bool isLoading});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AllStudentsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? students = null,
    Object? isLoading = null,
  }) {
    return _then(_$InitialImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
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
      final List<Student> students = const [],
      this.isLoading = true})
      : _students = students;

  @override
  final String? uuid;
  final List<Student> _students;
  @override
  @JsonKey()
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AllStudentsState(uuid: $uuid, students: $students, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid,
      const DeepCollectionEquality().hash(_students), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AllStudentsState {
  const factory _Initial(
      {final String? uuid,
      final List<Student> students,
      final bool isLoading}) = _$InitialImpl;

  @override
  String? get uuid;
  @override
  List<Student> get students;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
