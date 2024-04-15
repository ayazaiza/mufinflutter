import 'package:academy/features/academy/data/datasources/student_data_source.dart';
import 'package:academy/features/academy/data/repository/student_repo_impl.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';
import 'package:academy/features/academy/domain/usescases/student/add_student.dart';
import 'package:academy/features/academy/domain/usescases/student/delete_student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_student_stream.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students_stream.dart';
import 'package:academy/features/academy/domain/usescases/student/student_usecase.dart';
import 'package:academy/features/academy/domain/usescases/student/update_student.dart';
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
import 'package:academy/features/auth/domain/usecases/user_sign_in.dart';
import 'package:academy/features/auth/domain/usecases/user_sign_up.dart';
import 'package:academy/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:academy/features/academy/presentation/cubits/landing/landing_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/constants/constants.dart';
import '../features/academy/data/datasources/shared_prefs_data_source.dart';
import '../features/academy/domain/repository/shared_prefs_repo.dart';
import '../features/academy/presentation/blocs/delete_student/delete_student_bloc.dart';
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
import '../presentation/navigation/user_session_bloc/user_session_bloc.dart';

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
        () => DeleteStudentBloc(deleteStudent: locator<DeleteStudent>()));
}

Future<void> _init() async {
  await Firebase.initializeApp();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  locator
    ..registerLazySingleton(() => sharedPreferences)
    ..registerLazySingleton(() => FirebaseAuth.instance)
    ..registerLazySingleton(() => FirebaseFirestore.instance)
    ..registerLazySingleton(() => GoogleSignIn())
    ..registerLazySingleton(() => Connectivity());
}
