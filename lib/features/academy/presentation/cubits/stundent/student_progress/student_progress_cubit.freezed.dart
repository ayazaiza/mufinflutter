// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_progress_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentProgressState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get studentId => throw _privateConstructorUsedError;
  String? get enrollId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<CompletedTopic> get topics => throw _privateConstructorUsedError;
  List<GradeTopic> get grades => throw _privateConstructorUsedError;
  List<LessonTopic> get lessons => throw _privateConstructorUsedError;
  List<ProgressTopicModel> get lists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentProgressStateCopyWith<StudentProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentProgressStateCopyWith<$Res> {
  factory $StudentProgressStateCopyWith(StudentProgressState value,
          $Res Function(StudentProgressState) then) =
      _$StudentProgressStateCopyWithImpl<$Res, StudentProgressState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? studentId,
      String? enrollId,
      String? error,
      List<CompletedTopic> topics,
      List<GradeTopic> grades,
      List<LessonTopic> lessons,
      List<ProgressTopicModel> lists});
}

/// @nodoc
class _$StudentProgressStateCopyWithImpl<$Res,
        $Val extends StudentProgressState>
    implements $StudentProgressStateCopyWith<$Res> {
  _$StudentProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? studentId = freezed,
    Object? enrollId = freezed,
    Object? error = freezed,
    Object? topics = null,
    Object? grades = null,
    Object? lessons = null,
    Object? lists = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollId: freezed == enrollId
          ? _value.enrollId
          : enrollId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<CompletedTopic>,
      grades: null == grades
          ? _value.grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<GradeTopic>,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonTopic>,
      lists: null == lists
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<ProgressTopicModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $StudentProgressStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? studentId,
      String? enrollId,
      String? error,
      List<CompletedTopic> topics,
      List<GradeTopic> grades,
      List<LessonTopic> lessons,
      List<ProgressTopicModel> lists});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StudentProgressStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? studentId = freezed,
    Object? enrollId = freezed,
    Object? error = freezed,
    Object? topics = null,
    Object? grades = null,
    Object? lessons = null,
    Object? lists = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollId: freezed == enrollId
          ? _value.enrollId
          : enrollId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<CompletedTopic>,
      grades: null == grades
          ? _value._grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<GradeTopic>,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonTopic>,
      lists: null == lists
          ? _value._lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<ProgressTopicModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = true,
      this.studentId,
      this.enrollId,
      this.error,
      final List<CompletedTopic> topics = const [],
      final List<GradeTopic> grades = const [],
      final List<LessonTopic> lessons = const [],
      final List<ProgressTopicModel> lists = const []})
      : _topics = topics,
        _grades = grades,
        _lessons = lessons,
        _lists = lists;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? studentId;
  @override
  final String? enrollId;
  @override
  final String? error;
  final List<CompletedTopic> _topics;
  @override
  @JsonKey()
  List<CompletedTopic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  final List<GradeTopic> _grades;
  @override
  @JsonKey()
  List<GradeTopic> get grades {
    if (_grades is EqualUnmodifiableListView) return _grades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grades);
  }

  final List<LessonTopic> _lessons;
  @override
  @JsonKey()
  List<LessonTopic> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  final List<ProgressTopicModel> _lists;
  @override
  @JsonKey()
  List<ProgressTopicModel> get lists {
    if (_lists is EqualUnmodifiableListView) return _lists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lists);
  }

  @override
  String toString() {
    return 'StudentProgressState(isLoading: $isLoading, studentId: $studentId, enrollId: $enrollId, error: $error, topics: $topics, grades: $grades, lessons: $lessons, lists: $lists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.enrollId, enrollId) ||
                other.enrollId == enrollId) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality().equals(other._grades, _grades) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            const DeepCollectionEquality().equals(other._lists, _lists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      studentId,
      enrollId,
      error,
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_grades),
      const DeepCollectionEquality().hash(_lessons),
      const DeepCollectionEquality().hash(_lists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements StudentProgressState {
  const factory _Initial(
      {final bool isLoading,
      final String? studentId,
      final String? enrollId,
      final String? error,
      final List<CompletedTopic> topics,
      final List<GradeTopic> grades,
      final List<LessonTopic> lessons,
      final List<ProgressTopicModel> lists}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get studentId;
  @override
  String? get enrollId;
  @override
  String? get error;
  @override
  List<CompletedTopic> get topics;
  @override
  List<GradeTopic> get grades;
  @override
  List<LessonTopic> get lessons;
  @override
  List<ProgressTopicModel> get lists;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
