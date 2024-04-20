import 'package:academy/features/academy/data/datasources/completed_topic_data_source.dart';
import 'package:academy/features/academy/data/datasources/courses_data_source.dart';
import 'package:academy/features/academy/data/datasources/enroll_course_data_source.dart';
import 'package:academy/features/academy/data/datasources/notification_data_source.dart';
import 'package:academy/features/academy/data/datasources/student_data_source.dart';
import 'package:academy/features/academy/data/datasources/student_slot_data_source.dart';
import 'package:academy/features/academy/data/repository/completed_topic_repo_impl.dart';
import 'package:academy/features/academy/data/repository/course_repo_impl.dart';
import 'package:academy/features/academy/data/repository/enroll_course_repo_impl.dart';
import 'package:academy/features/academy/data/repository/notification_repo_impl.dart';
import 'package:academy/features/academy/data/repository/song_repo_impl.dart';
import 'package:academy/features/academy/data/repository/student_repo_impl.dart';
import 'package:academy/features/academy/data/repository/student_slot_repo_impl.dart';
import 'package:academy/features/academy/domain/repository/completed_topic_repo.dart';
import 'package:academy/features/academy/domain/repository/notification_repo.dart';
import 'package:academy/features/academy/domain/repository/song_repo.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_certification_course.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_course.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_courses.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_grade_course.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_lesson_course.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_sub_course.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/enroll_new_course.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/get_enroll_course.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/get_enrolls_cou_uuid.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/get_enrolls_stud_id.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/get_enrolls_stud_uuid.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/get_enrolls_user_id.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/has_enrolled.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/update_enroll_course.dart';
import 'package:academy/features/academy/domain/usescases/notification/get_notification.dart';
import 'package:academy/features/academy/domain/usescases/notification/get_notifications.dart';
import 'package:academy/features/academy/domain/usescases/notification/update_notification.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_all_attendance.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_attendance_by_stud_id_slot_time_id.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_attendances.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_student_slot_time.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_student_slots_parent_id.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_student_slots_stud_id.dart';
import 'package:academy/features/academy/domain/usescases/song/get_song.dart';
import 'package:academy/features/academy/domain/usescases/song/get_songs_student_id.dart';
import 'package:academy/features/academy/domain/usescases/song/get_songs_user_id.dart';
import 'package:academy/features/academy/domain/usescases/student/add_student.dart';
import 'package:academy/features/academy/domain/usescases/student/delete_student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_student_stream.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students_stream.dart';
import 'package:academy/features/academy/domain/usescases/student/student_usecase.dart';
import 'package:academy/features/academy/domain/usescases/student/update_student.dart';
import 'package:academy/features/academy/domain/usescases/topics/get_grade_topic.dart';
import 'package:academy/features/academy/domain/usescases/topics/get_lesson_topic.dart';
import 'package:academy/features/academy/domain/usescases/topics/get_lesson_topics.dart';
import 'package:academy/features/academy/domain/usescases/topics/get_topic.dart';
import 'package:academy/features/academy/domain/usescases/topics/get_topics_by_enroll.dart';
import 'package:academy/features/academy/domain/usescases/topics/get_topics_by_enroll_pref_slot.dart';
import 'package:academy/features/academy/domain/usescases/user/add_activity.dart';
import 'package:academy/features/academy/domain/usescases/user/get_activities.dart';
import 'package:academy/features/academy/domain/usescases/user/get_activities_stream.dart';
import 'package:academy/features/academy/domain/usescases/user/insert_user.dart';
import 'package:academy/features/academy/domain/usescases/user/update_user.dart';
import 'package:academy/features/academy/data/datasources/mufin_user_ds.dart';
import 'package:academy/features/academy/data/datasources/common_firestore_ds.dart';
import 'package:academy/features/academy/data/repository/carousel_item_repo_impl.dart';
import 'package:academy/features/academy/domain/repository/mufin_user_repo.dart';
import 'package:academy/features/academy/data/repository/shared_prefs_repo_impl.dart';
import 'package:academy/features/academy/domain/repository/mufin_events_repo.dart';
import 'package:academy/features/academy/presentation/cubits/courses/all_courses/courses_cubit.dart';
import 'package:academy/features/auth/domain/usecases/user_sign_in.dart';
import 'package:academy/features/auth/domain/usecases/user_sign_up.dart';
import 'package:academy/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:academy/features/academy/presentation/cubits/landing/landing_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/constants/constants.dart';
import '../features/academy/data/datasources/shared_prefs_data_source.dart';
import '../features/academy/data/datasources/song_data_source.dart';
import '../features/academy/domain/repository/courses_repo.dart';
import '../features/academy/domain/repository/enroll_course_repo.dart';
import '../features/academy/domain/repository/shared_prefs_repo.dart';
import '../features/academy/domain/repository/student_slot_repo.dart';
import '../features/academy/domain/usescases/courses/get_certication_courses.dart';
import '../features/academy/domain/usescases/courses/get_grade_courses.dart';
import '../features/academy/domain/usescases/courses/get_lesson_courses.dart';
import '../features/academy/domain/usescases/courses/get_sub_courses.dart';
import '../features/academy/domain/usescases/slot_attandance/get_attendance.dart';
import '../features/academy/domain/usescases/slot_attandance/get_students_slot_times.dart';
import '../features/academy/domain/usescases/topics/get_grade_topics.dart';
import '../features/academy/domain/usescases/topics/get_topics.dart';
import '../features/academy/presentation/blocs/student/delete_student/delete_student_bloc.dart';
import '../features/auth/data/datasources/firebase_user_auth_ds.dart';
import '../features/auth/data/repository/firebase_user_auth_impl.dart';
import '../features/academy/data/repository/mufin_user_repo_impl.dart';
import '../features/auth/domain/repository/firebase_user_auth_repo.dart';
import '../features/auth/domain/usecases/auth_use_cases.dart';
import '../features/auth/domain/usecases/forgot_password_use_case.dart';
import '../features/academy/domain/usescases/user/user_exist.dart';
import '../features/auth/domain/usecases/user_sign_in_google.dart';
import '../features/academy/data/repository/mufin_events_repo_impl.dart';
import '../features/academy/domain/repository/carousel_items_repo.dart';
import '../features/navigation/bloc/user_session_bloc.dart';

final GetIt locator = GetIt.instance;

Future<void> initDependencies() async {
  await _init();

  locator
    /* Shared preferences */
    ..registerLazySingleton<SharedPrefsDS>(
        () => SharedPrefDsImpl(sharedPreferences: locator<SharedPreferences>()))
    ..registerLazySingleton<SharedPrefsRepo>(
        () => SharedPrefRepoImpl(sharedPrefsRepoDS: locator<SharedPrefsDS>()))
    /* Carousel */
    ..registerLazySingleton<CommonFireStoreDataSources>(
        () => CommonFireStoreDataSourcesImpl(
            commonCollRef: locator<FirebaseFirestore>()
                .collection(AppConstants.carousels)),
        instanceName: AppConstants.carousels)
    ..registerFactory<CarouselItemRepo>(() => CarouselItemRepoImpl(
        commonFireStoreDataSources: locator<CommonFireStoreDataSources>(
            instanceName: AppConstants.carousels)))
    /*  Mufin Events*/
    ..registerLazySingleton<CommonFireStoreDataSources>(
        () => CommonFireStoreDataSourcesImpl(
            commonCollRef: locator<FirebaseFirestore>()
                .collection(AppConstants.mufinEvents)),
        instanceName: AppConstants.mufinEvents)
    ..registerLazySingleton<MufinEventsRepo>(() => MufinEventsRepoImpl(
        commonFireStoreDataSources: locator<CommonFireStoreDataSources>(
            instanceName: AppConstants.mufinEvents)))
    ..registerFactory(() => LandingCubit(
        carouselItemRepo: locator<CarouselItemRepo>(),
        mufinEventsRepo: locator<MufinEventsRepo>()))

    /* Auth */
    ..registerFactory<FirebaseUserAuthDataSource>(() =>
        FirebaseUserAuthDataSourceImpl(
            firebaseAuth: locator<FirebaseAuth>(),
            googleSignIn: locator<GoogleSignIn>()))
    ..registerFactory<FirebaseUserAuth>(() => FirebaseUserAuthImpl(
        firebaseUserAuthDataSource: locator<FirebaseUserAuthDataSource>()))
    ..registerFactory(
        () => ForgotPassword(firebaseUserAuth: locator<FirebaseUserAuth>()))
    ..registerFactory(
        () => UserSignIn(firebaseUserAuth: locator<FirebaseUserAuth>()))
    ..registerFactory(
        () => UserSignUp(firebaseUserAuth: locator<FirebaseUserAuth>()))
    ..registerFactory(() =>
        UserSignInWithGoogle(firebaseUserAuth: locator<FirebaseUserAuth>()))
    ..registerFactory(() => AuthUseCases(
        userSignIn: locator<UserSignIn>(),
        userExists: locator<UserExists>(),
        userSignUp: locator<UserSignUp>(),
        userSignInNdUpWithGoogle: locator<UserSignInWithGoogle>(),
        forgotPassword: locator<ForgotPassword>()))
    ..registerFactory<UserSessionBloc>(() => UserSessionBloc(
        firebaseUserAuth: locator<FirebaseUserAuth>(),
        sharedPrefsRepo: locator<SharedPrefsRepo>()))
    ..registerFactory(() => AuthBloc(authUseCases: locator<AuthUseCases>()))

    /* mufin user */
    ..registerLazySingleton<MufinUserDS>(() => MufinUserDSImpl(
        userRef: locator<FirebaseFirestore>().collection(AppConstants.users)))
    ..registerLazySingleton<MufinUserRepo>(
        () => MufinUserRepoImpl(mufinUserDS: locator<MufinUserDS>()))
    ..registerFactory(
        () => AddActivity(mufinUserRepo: locator<MufinUserRepo>()))
    ..registerFactory(
        () => GetActivities(mufinUserRepo: locator<MufinUserRepo>()))
    ..registerFactory(
        () => GetActivitiesStream(mufinUserRepo: locator<MufinUserRepo>()))
    ..registerFactory(() => InsertUser(mufinUserRepo: locator<MufinUserRepo>()))
    ..registerFactory(() => UpdateUser(mufinUserRepo: locator<MufinUserRepo>()))
    ..registerFactory(() => UserExists(mufinUserRepo: locator<MufinUserRepo>()))

    /* Student */
    ..registerLazySingleton<StudentDatasource>(() => StudentDatasourceImpl(
        commonCollRef:
            locator<FirebaseFirestore>().collection(AppConstants.students)))
    ..registerLazySingleton<StudentRepo>(
        () => StudentRepoImpl(studentDatasource: locator<StudentDatasource>()))
    ..registerFactory(() => AddStudent(
        studentRepo: locator<StudentRepo>(),
        addActivity: locator<AddActivity>()))
    ..registerFactory(() => DeleteStudent(
        studentRepo: locator<StudentRepo>(),
        addActivity: locator<AddActivity>()))
    ..registerFactory(() => GetStudent(studentRepo: locator<StudentRepo>()))
    ..registerFactory(
        () => GetStudentStream(studentRepo: locator<StudentRepo>()))
    ..registerFactory(
        () => GetStudentsStream(studentRepo: locator<StudentRepo>()))
    ..registerFactory(() => GetStudents(studentRepo: locator<StudentRepo>()))
    ..registerFactory(() => UpdateStudent(
        studentRepo: locator<StudentRepo>(),
        addActivity: locator<AddActivity>()))
    ..registerFactory(() => StudentUseCase(
        addStudent: locator<AddStudent>(),
        deleteStudent: locator<DeleteStudent>(),
        getStudent: locator<GetStudent>(),
        getStudents: locator<GetStudents>(),
        getStudentStream: locator<GetStudentStream>(),
        getStudentsStream: locator<GetStudentsStream>(),
        updateStudent: locator<UpdateStudent>()))
    ..registerLazySingleton(
        () => DeleteStudentBloc(deleteStudent: locator<DeleteStudent>()))

    /* Courses */
    ..registerLazySingleton<CoursesDataSource>(() => CoursesDataSourceImpl(
        courseRef:
            locator<FirebaseFirestore>().collection(AppConstants.courses),
        subCourseRef:
            locator<FirebaseFirestore>().collection(AppConstants.subCourses),
        certificationRef: locator<FirebaseFirestore>()
            .collection(AppConstants.certificationCourse),
        gradeRef:
            locator<FirebaseFirestore>().collection(AppConstants.gradeCourse),
        lessonRef:
            locator<FirebaseFirestore>().collection(AppConstants.lessonCourse)))
    ..registerLazySingleton<CoursesRepo>(
        () => CoursesRepoImpl(coursesDataSource: locator<CoursesDataSource>()))
    ..registerFactory<GetCourse>(
        () => GetCourse(coursesRepo: locator<CoursesRepo>()))
    ..registerFactory<GetCourses>(
        () => GetCourses(coursesRepo: locator<CoursesRepo>()))
    ..registerFactory<GetSubCourse>(
        () => GetSubCourse(coursesRepo: locator<CoursesRepo>()))
    ..registerFactory<GetSubCourses>(
        () => GetSubCourses(coursesRepo: locator<CoursesRepo>()))
    ..registerFactory<GetCertificationCourse>(
        () => GetCertificationCourse(coursesRepo: locator<CoursesRepo>()))
    ..registerFactory<GetCertificationCourses>(
        () => GetCertificationCourses(coursesRepo: locator<CoursesRepo>()))
    ..registerFactory<GetGradeCourse>(
        () => GetGradeCourse(coursesRepo: locator<CoursesRepo>()))
    ..registerFactory<GetGradeCourses>(
        () => GetGradeCourses(coursesRepo: locator<CoursesRepo>()))
    ..registerFactory<GetLessonCourse>(
        () => GetLessonCourse(coursesRepo: locator<CoursesRepo>()))
    ..registerFactory<GetLessonCourses>(
        () => GetLessonCourses(coursesRepo: locator<CoursesRepo>()))

    /* Completed Topic */
    ..registerLazySingleton<CompletedTopicDataSource>(() =>
        CompletedTopicDataSourceImpl(
            completedTopicRef: locator<FirebaseFirestore>()
                .collection(AppConstants.completedTopics),
            gradeTopicRef: locator<FirebaseFirestore>()
                .collection(AppConstants.gradeTopic),
            lessonTopicRef: locator<FirebaseFirestore>()
                .collection(AppConstants.lessonTopic)))
    ..registerLazySingleton<CompletedTopicRepo>(() => CompletedTopicRepoImpl(
        completedTopicDataSource: locator<CompletedTopicDataSource>()))
    ..registerFactory<GetTopic>(
        () => GetTopic(completedTopicRepo: locator<CompletedTopicRepo>()))
    ..registerFactory<GetTopics>(
        () => GetTopics(completedTopicRepo: locator<CompletedTopicRepo>()))
    ..registerFactory<GetTopicsByEnroll>(() =>
        GetTopicsByEnroll(completedTopicRepo: locator<CompletedTopicRepo>()))
    ..registerFactory<GetTopicsByEnrollPrefSlot>(() =>
        GetTopicsByEnrollPrefSlot(
            completedTopicRepo: locator<CompletedTopicRepo>()))
    ..registerFactory<GetGradeTopic>(
        () => GetGradeTopic(completedTopicRepo: locator<CompletedTopicRepo>()))
    ..registerFactory<GetGradeTopics>(
        () => GetGradeTopics(completedTopicRepo: locator<CompletedTopicRepo>()))
    ..registerFactory<GetLessonTopic>(
        () => GetLessonTopic(completedTopicRepo: locator<CompletedTopicRepo>()))
    ..registerFactory<GetLessonTopics>(() =>
        GetLessonTopics(completedTopicRepo: locator<CompletedTopicRepo>()))

    /* Student slot */
    ..registerLazySingleton<StudentSlotDataSource>(() =>
        StudentSlotDataSourceImpl(
            studentSlotTimeRef: locator<FirebaseFirestore>()
                .collection(AppConstants.studentSlotTimesRef),
            studentAttendanceRef: locator<FirebaseFirestore>()
                .collection(AppConstants.studentAttendanceRef)))
    ..registerLazySingleton<StudentSlotRepo>(() => StudentSlotRepoImpl(
        studentSlotDataSource: locator<StudentSlotDataSource>()))
    ..registerFactory<GetAllAttendance>(
        () => GetAllAttendance(studentSlotRepo: locator<StudentSlotRepo>()))
    ..registerFactory<GetAttendance>(
        () => GetAttendance(studentSlotRepo: locator<StudentSlotRepo>()))
    ..registerFactory<GetAttendanceByStudIdSlotTimeId>(() =>
        GetAttendanceByStudIdSlotTimeId(
            studentSlotRepo: locator<StudentSlotRepo>()))
    ..registerFactory<GetAttendances>(
        () => GetAttendances(studentSlotRepo: locator<StudentSlotRepo>()))
    ..registerFactory<GetStudentSlotTime>(
        () => GetStudentSlotTime(studentSlotRepo: locator<StudentSlotRepo>()))
    ..registerFactory<GetStudentSlotsParentId>(() =>
        GetStudentSlotsParentId(studentSlotRepo: locator<StudentSlotRepo>()))
    ..registerFactory<GetStudentSlotsStudId>(() =>
        GetStudentSlotsStudId(studentSlotRepo: locator<StudentSlotRepo>()))
    ..registerFactory<GetStudentsSlotTimes>(
        () => GetStudentsSlotTimes(studentSlotRepo: locator<StudentSlotRepo>()))

    /* Enrolls */
    ..registerLazySingleton<EnrollCourseDataSource>(() =>
        EnrollCourseDataSourceImpl(
            enrollCourseRef: locator<FirebaseFirestore>()
                .collection(AppConstants.enrollCoursesRef)))
    ..registerLazySingleton<EnrollCourseRepo>(() => EnrollCourseRepoImpl(
        enrollCourseDataSource: locator<EnrollCourseDataSource>()))
    ..registerFactory<EnrollNewCourse>(() => EnrollNewCourse(
        enrollCourseRepo: locator<EnrollCourseRepo>(),
        addActivity: locator<AddActivity>()))
    ..registerFactory<GetEnrollCourse>(
        () => GetEnrollCourse(enrollCourseRepo: locator<EnrollCourseRepo>()))
    ..registerFactory<GetEnrollsCouUUId>(
        () => GetEnrollsCouUUId(enrollCourseRepo: locator<EnrollCourseRepo>()))
    ..registerFactory<GetEnrollsStudId>(
        () => GetEnrollsStudId(enrollCourseRepo: locator<EnrollCourseRepo>()))
    ..registerFactory<GetEnrollsStudUUId>(
        () => GetEnrollsStudUUId(enrollCourseRepo: locator<EnrollCourseRepo>()))
    ..registerFactory<GetEnrollsUserId>(
        () => GetEnrollsUserId(enrollCourseRepo: locator<EnrollCourseRepo>()))
    ..registerFactory<HasEnrolled>(
        () => HasEnrolled(enrollCourseRepo: locator<EnrollCourseRepo>()))
    ..registerFactory<UpdateEnrollCourse>(() => UpdateEnrollCourse(
        enrollCourseRepo: locator<EnrollCourseRepo>(),
        addActivity: locator<AddActivity>()))

    /*Song data*/
    ..registerLazySingleton<SongDatasource>(() => SongDatasourceImpl(
        songRef:
            locator<FirebaseFirestore>().collection(AppConstants.songDataRef)))
    ..registerLazySingleton<SongRepo>(
        () => SongRepoImpl(songDatasource: locator<SongDatasource>()))
    ..registerFactory<GetSong>(() => GetSong(songRepo: locator<SongRepo>()))
    ..registerFactory<GetSongsStudentId>(
        () => GetSongsStudentId(songRepo: locator<SongRepo>()))
    ..registerFactory<GetSongsUserId>(
        () => GetSongsUserId(songRepo: locator<SongRepo>()))

    /* Notification */
    ..registerLazySingleton<NotificationDataSource>(() =>
        NotificationDataSourceImpl(
            notificationRef: locator<FirebaseFirestore>()
                .collection(AppConstants.userNotifications)))
    ..registerLazySingleton<NotificationRepo>(() => NotificationRepoImpl(
        notificationDataSource: locator<NotificationDataSource>()))
    ..registerFactory<GetNotificationStream>(() =>
        GetNotificationStream(notificationRepo: locator<NotificationRepo>()))
    ..registerFactory<GetNotificationsStream>(() =>
        GetNotificationsStream(notificationRepo: locator<NotificationRepo>()))
    ..registerFactory<UpdateNotification>(
        () => UpdateNotification(notificationRepo: locator<NotificationRepo>()))

    /* cubits */
    ..registerLazySingleton<CoursesCubit>(
        () => CoursesCubit(getCourses: locator<GetCourses>()));
}

Future<void> _init() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  locator
    ..registerLazySingleton(() => sharedPreferences)
    ..registerLazySingleton(() => FirebaseAuth.instance)
    ..registerLazySingleton(() => FirebaseFirestore.instance)
    ..registerLazySingleton(() => GoogleSignIn())
    ..registerLazySingleton(() => Connectivity());
}
