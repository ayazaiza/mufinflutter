import 'dart:developer';

import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_course.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_grade_courses.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_lesson_courses.dart';
import 'package:academy/features/academy/domain/usescases/courses/get_sub_courses.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/enroll_new_course.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/get_enrolls_stud_id.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/get_enrolls_stud_uuid.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/get_enrolls_user_id.dart';
import 'package:academy/features/academy/domain/usescases/enrolls/has_enrolled.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_all_attendance.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_attendance.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_student_slots_stud_id.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_student_slots_user_id_status.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_students_slot_times.dart';
import 'package:academy/features/academy/domain/usescases/song/get_songs_student_id.dart';
import 'package:academy/features/academy/domain/usescases/student/add_student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students_stream.dart';
import 'package:academy/features/academy/domain/usescases/student/update_student.dart';
import 'package:academy/features/academy/domain/usescases/topics/get_grade_topics.dart';
import 'package:academy/features/academy/domain/usescases/topics/get_lesson_topics.dart';
import 'package:academy/features/academy/domain/usescases/topics/get_topics_by_enroll.dart';
import 'package:academy/features/academy/domain/usescases/user/get_activities_stream.dart';
import 'package:academy/features/academy/domain/usescases/user/insert_user.dart';
import 'package:academy/features/academy/domain/usescases/user/update_user.dart';
import 'package:academy/features/academy/presentation/blocs/enroll_course/enroll_course_bloc.dart';
import 'package:academy/features/academy/presentation/blocs/student/add_student/add_student_bloc.dart';
import 'package:academy/features/academy/presentation/blocs/student/all_students/all_students_bloc.dart';
import 'package:academy/features/academy/presentation/cubits/attendance/all_attendance/attendances_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/bottom_nav/bottom_nav_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/courses/all_courses/courses_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/courses/course_details/course_details_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/dashboard/dashboard_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/enrolls/all_enrolls/all_enrolls_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/enrolls/enrolled_details/enrolled_details_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/stundent/student_details/student_details_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/stundent/student_progress/student_progress_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/view_profile/view_profile_cubit.dart';
import 'package:academy/features/academy/presentation/pages/add_student_page.dart';
import 'package:academy/features/academy/presentation/pages/all_students.dart';
import 'package:academy/features/academy/presentation/pages/attendance_details_page.dart';
import 'package:academy/features/academy/presentation/pages/attendances_page.dart';
import 'package:academy/features/academy/presentation/pages/course_details_page.dart';
import 'package:academy/features/academy/presentation/pages/enrolled_details_page.dart';
import 'package:academy/features/academy/presentation/pages/enrolls_page.dart';
import 'package:academy/features/academy/presentation/pages/new_course_enroll_page.dart';
import 'package:academy/features/academy/presentation/pages/student_progress.dart';
import 'package:academy/features/academy/presentation/pages/user_home_tabs.dart';
import 'package:academy/features/academy/presentation/pages/view_profile.dart';
import 'package:academy/features/academy/presentation/pages/view_student.dart';
import 'package:academy/features/auth/presentation/cubit/root_cubit.dart';
import 'package:academy/features/auth/presentation/pages/root_page.dart';
import 'package:academy/features/academy/domain/repository/mufin_events_repo.dart';
import 'package:academy/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:academy/features/academy/presentation/pages/mufin_event_details.dart';
import 'package:academy/features/academy/presentation/pages/landing_page.dart';
import 'package:academy/features/auth/presentation/pages/login_page.dart';
import 'package:academy/features/navigation/router_listener.dart';
import 'package:academy/features/navigation/bloc/user_session_bloc.dart';
import 'package:academy/features/academy/presentation/pages/privacy_policy.dart';
import 'package:academy/features/academy/presentation/pages/profile_update.dart';
import 'package:academy/features/auth/presentation/pages/register_page.dart';
import 'package:academy/features/auth/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/router_const.dart';
import '../academy/domain/usescases/courses/get_courses.dart';
import '../academy/domain/usescases/enrolls/get_enroll_course.dart';
import '../academy/domain/usescases/student/get_student_stream.dart';
import '../academy/domain/usescases/user/user_exist.dart';
import '../academy/presentation/blocs/profile_update/profile_update_bloc.dart';
import '../academy/presentation/cubits/attendance/attendance_details/attendance_cubit.dart';
import '../academy/presentation/cubits/event_details/event_details_cubit.dart';
import '../auth/presentation/pages/forgot_pwd_screen.dart';

class RouterModule {
  final GlobalKey<NavigatorState> _rootNavigator =
      GlobalKey(debugLabel: 'root');

  final UserSessionBloc _userSessionBloc;
  final UserSessionListener _listener;
  final GetIt _getIt;

  RouterModule(
      {required UserSessionBloc userSessionBloc,
      required UserSessionListener userSessionListener,
      required GetIt getIt})
      : _userSessionBloc = userSessionBloc,
        _listener = userSessionListener,
        _getIt = getIt;

  GoRouter get goRouter => _goRouter;

  late final GoRouter _goRouter = GoRouter(
      navigatorKey: _rootNavigator,
      initialLocation: RoutePaths.splash.path,
      routes: [
        // GoRoute(
        //     path: RoutePaths.onBoard.path,
        //     name: RoutePaths.onBoard.routeName(),
        //     builder: (context, state) {
        //       return const WelcomePage();
        //     }),
        GoRoute(
          path: RoutePaths.home.path,
          name: RoutePaths.home.routeName(),
          builder: (context, state) {
            final String uuid = state.uri.queryParameters['uuid'].toString();
            return MultiBlocProvider(providers: [
              BlocProvider(create: (context) => BottomNavCubit()),
              BlocProvider(
                  create: (context) => DashboardCubit(
                      getStudentsStream: _getIt<GetStudentsStream>(),
                      getActivitiesStream: _getIt<GetActivitiesStream>(),
                      getStudentSlotsUserIdStatus: _getIt<GetStudentSlotsUserIdStatus>(),
                      uuid: uuid)
                    ..loadData()),
              BlocProvider(
                  create: (context) => _getIt<CoursesCubit>()..fetchData())
            ], child: UserHomeTabs(uuid: uuid));
          },
        ),
        GoRoute(
            path: RoutePaths.students.path,
            name: RoutePaths.students.routeName(),
            builder: (context, state) {
              final String uuid = state.uri.queryParameters['uuid'].toString();
              return BlocProvider(
                create: (context) => AllStudentsBloc(
                    studentsStream: _getIt<GetStudentsStream>(), uuid: uuid)
                  ..add(AllStudentsEvent.startEvent(uuid: uuid)),
                child: const AllStudents(),
              );
            }),
        GoRoute(
            path: RoutePaths.addStudent.path,
            name: RoutePaths.addStudent.routeName(),
            builder: (context, state) {
              final String uuid = state.uri.queryParameters['uuid'].toString();
              final String? studentId = state.uri.queryParameters['studentId'];
              return BlocProvider(
                create: (context) => AddStudentBloc(
                  studentId: studentId,
                  getStudent: _getIt<GetStudent>(),
                  userExists: _getIt<UserExists>(),
                  addStudent: _getIt<AddStudent>(),
                  updateStudent: _getIt<UpdateStudent>(),
                )
                  ..add(AddStudentEvent.loadUser(uuid: uuid))
                  ..add(AddStudentEvent.loadStudent(studentId: studentId)),
                child: AddStudentPage(
                  title: studentId != null
                      ? AppStrings.edit
                      : AppStrings.addStudent,
                ),
              );
            }),
        GoRoute(
            path: RoutePaths.studentDetails.path,
            name: RoutePaths.studentDetails.routeName(),
            builder: (context, state) {
              final String uuid = state.uri.queryParameters['uuid'].toString();
              final String studentId =
                  state.uri.queryParameters['studentId'].toString();
              return BlocProvider(
                create: (context) => StudentDetailsCubit(
                  studentId: studentId,
                  getStudentStream: _getIt<GetStudentStream>(),
                  uuid: uuid,
                  getEnrollsStudUUId: _getIt<GetEnrollsStudUUId>(),
                  getStudentSlotsStudId: _getIt<GetStudentSlotsStudId>(),
                  getSongsStudentId: _getIt<GetSongsStudentId>(),
                )
                  ..fetchData()
                  ..loadData(),
                child: const ViewStudent(),
              );
            }),
        GoRoute(
            path: RoutePaths.studentProgress.path,
            name: RoutePaths.studentProgress.routeName(),
            builder: (context, state) {
              final String enrollId =
                  state.uri.queryParameters['enrollId'].toString();
              final String studentId =
                  state.uri.queryParameters['studentId'].toString();
              return BlocProvider(
                create: (context) => StudentProgressCubit(
                    getTopicsByEnroll: _getIt<GetTopicsByEnroll>(),
                    getLessonTopics: _getIt<GetLessonTopics>(),
                    getGradeTopics: _getIt<GetGradeTopics>(),
                    getGradeCourses: _getIt<GetGradeCourses>(),
                    getLessonCourses: _getIt<GetLessonCourses>(),
                    studentId: studentId,
                    enrollId: enrollId)
                  ..fetchData(),
                child: const StudentProgressPage(),
              );
            }),

        GoRoute(
            path: RoutePaths.enrolls.path,
            name: RoutePaths.enrolls.routeName(),
            builder: (context, state) {
              final String uuid =
                  state.uri.queryParameters['uuid'].toString();
              final String? studentId = state.uri.queryParameters['studentId'];
              return BlocProvider(
                create: (context) => AllEnrollsCubit(
                    getEnrollsUserId: _getIt<GetEnrollsUserId>(),
                    getEnrollsStudId: _getIt<GetEnrollsStudId>(),
                    studentId: studentId,
                    userId: uuid)
                  ..fetchData(),
                child: const EnrollsPage(),
              );
            }),
        GoRoute(
            path: RoutePaths.enrollCourse.path,
            name: RoutePaths.enrollCourse.routeName(),
            builder: (context, state) {
              final String? studentId = state.uri.queryParameters['studentId'];
              final String? courseId = state.uri.queryParameters['courseId'];
              final String userId =
                  state.uri.queryParameters['uuid'].toString();
              return BlocProvider(
                create: (context) => EnrollCourseBloc(
                    userId: userId,
                    studentId: studentId,
                    courseId: courseId,
                    getSubCourses: _getIt<GetSubCourses>(),
                    getCourses: _getIt<GetCourses>(),
                    hasEnrolled: _getIt<HasEnrolled>(),
                    enrollNewCourse: _getIt<EnrollNewCourse>(),
                    getStudents: _getIt<GetStudents>())
                  ..add(const EnrollCourseEvent.fetchData()),
                child: const NewCourseEnrollPage(),
              );
            }),
        GoRoute(
            path: RoutePaths.enrollDetails.path,
            name: RoutePaths.enrollDetails.routeName(),
            builder: (context, state) {
              final String enrollId =
                  state.uri.queryParameters['enrollId'].toString();
              final String? instructorId =
                  state.uri.queryParameters['instructorId'];
              return BlocProvider(
                create: (context) => EnrolledDetailsCubit(
                    enrollId: enrollId,
                    getEnrollCourse: _getIt<GetEnrollCourse>(),
                    instructorId: instructorId,
                    getStudentsSlotTimes: _getIt<GetStudentsSlotTimes>())
                  ..fetchData(),
                child: const EnrolledDetailsPage(),
              );
            }),
        GoRoute(
            path: RoutePaths.attendances.path,
            name: RoutePaths.attendances.routeName(),
            builder: (context, state) {
              final String enrollId =
                  state.uri.queryParameters['enrollId'].toString();
              final String studentId =
                  state.uri.queryParameters['studentId'].toString();
              return BlocProvider(
                create: (context) => AttendancesCubit(
                    enrollId: enrollId,
                    getAllAttendance: _getIt<GetAllAttendance>(),
                    studentId: studentId)
                  ..fetchData(),
                child: const AttendancesPage(),
              );
            }),
        GoRoute(
            path: RoutePaths.attendanceDetails.path,
            name: RoutePaths.attendanceDetails.routeName(),
            builder: (context, state) {
              final String attendanceId =
                  state.uri.queryParameters['attendanceId'].toString();
              return BlocProvider(
                create: (context) => AttendanceCubit(
                  attendanceId: attendanceId,
                  getAttendance: _getIt<GetAttendance>(),
                )..fetchData(),
                child: const AttendanceDetailsPage(),
              );
            }),
        GoRoute(
            path: RoutePaths.courseDetails.path,
            name: RoutePaths.courseDetails.routeName(),
            builder: (context, state) {
              final String courseId =
                  state.uri.queryParameters['courseId'].toString();
              return BlocProvider(
                create: (context) => CourseDetailsCubit(
                  courseId: courseId,
                  getCourse: _getIt<GetCourse>(),
                  getSubCourses: _getIt<GetSubCourses>(),
                )..fetchData(),
                child: const CourseDetails(),
              );
            }),
        GoRoute(
            path: RoutePaths.profile.path,
            name: RoutePaths.profile.routeName(),
            builder: (context, state) {
              final String uuid = state.uri.queryParameters['uuid'].toString();
              return BlocProvider(
                create: (context) => ViewProfileCubit(
                  uuid: uuid,
                  userExists: _getIt<UserExists>(),
                )..fetchData(),
                child: const ViewProfilePage(),
              );
            }),
        GoRoute(
            path: RoutePaths.splash.path,
            name: RoutePaths.splash.routeName(),
            builder: (context, state) {
              return const SplashPage();
            }),
        GoRoute(
            path: RoutePaths.login.path,
            name: RoutePaths.login.routeName(),
            builder: (context, state) {
              return BlocProvider(
                create: (context) => _getIt<AuthBloc>(),
                child: const LoginPage(),
              );
            }),
        GoRoute(
            path: RoutePaths.register.path,
            name: RoutePaths.register.routeName(),
            builder: (context, state) {
              return BlocProvider(
                create: (context) => _getIt<AuthBloc>(),
                child: const RegisterPage(),
              );
            }),
        GoRoute(
            path: RoutePaths.root.path,
            name: RoutePaths.root.routeName(),
            builder: (context, state) {
              final String uuid = state.uri.queryParameters['uuid'].toString();
              final String email =
                  state.uri.queryParameters['email'].toString();
              return BlocProvider(
                create: (context) => RootCubit(
                    userExists: _getIt<UserExists>(), uuid: uuid, email: email),
                child: const RootPage(),
              );
            }),
        GoRoute(
            path: RoutePaths.landing.path,
            name: RoutePaths.landing.routeName(),
            builder: (context, state) {
              return const LandingPage();
            }),
        GoRoute(
            path: RoutePaths.mufinEventDetails.path,
            name: RoutePaths.mufinEventDetails.routeName(),
            builder: (context, state) {
              var eventId = state.uri.queryParameters["eventId"].toString();
              return BlocProvider(
                create: (context) => EventDetailsCubit(
                    mufinEventsRepo: _getIt<MufinEventsRepo>(),
                    eventId: eventId),
                child: const MufinEventsDetails(),
              );
            }),
        GoRoute(
            path: RoutePaths.privacyPolicy.path,
            name: RoutePaths.privacyPolicy.routeName(),
            builder: (context, state) {
              return const PrivacyPolicyScreen();
            }),
        GoRoute(
            path: RoutePaths.profileUpdate.path,
            name: RoutePaths.profileUpdate.routeName(),
            builder: (context, state) {
              final String title =
                  state.uri.queryParameters['complete'].toString();
              final String uuid = state.uri.queryParameters['uuid'].toString();
              final String email =
                  state.uri.queryParameters['email'].toString();
              return BlocProvider(
                create: (context) => ProfileUpdateBloc(
                    uuid: uuid,
                    email: email,
                    userExists: _getIt<UserExists>(),
                    insertUser: _getIt<InsertUser>(),
                    updateUser: _getIt<UpdateUser>())
                  ..add(ProfileUpdateEvent.initScreen(uuid: uuid)),
                child: ProfileUpdate(title: title),
              );
            }),
        GoRoute(
            path: RoutePaths.forgotPassword.path,
            name: RoutePaths.forgotPassword.routeName(),
            builder: (context, state) {
              return BlocProvider(
                create: (context) => _getIt<AuthBloc>(),
                child: const ForgotPasswordScreen(),
              );
            }),
        // GoRoute(
        //     path: RoutePaths.welcome.path,
        //     name: RoutePaths.welcome.routeName(),
        //     builder: (context, GoRouterState state) {
        //       // final String uuid = state.uri.queryParameters['uuid'].toString();
        //       return const WelcomePage();
        //     }),
      ],
      redirect: (context, state) {
        log(state.matchedLocation);
        var currentState = _userSessionBloc.state;
        final bool loggedIn = currentState is UserLoggedInState;
        final bool isSplashState = currentState is UserLoggedInState;
        final bool isOnBoard = currentState is UserSessionSplashState;
        final bool privacyPolicy =
            state.matchedLocation == RoutePaths.privacyPolicy.path;
        final bool termsNdConditions =
            state.matchedLocation == RoutePaths.terms.path;
        final bool forgotPassword =
            state.matchedLocation == RoutePaths.forgotPassword.path;
        final bool isSplashRoute =
            state.matchedLocation == RoutePaths.splash.path;
        final bool mufinEventsLocation =
            state.matchedLocation == RoutePaths.mufinEventDetails.path;
        final bool isLogging = state.matchedLocation == RoutePaths.login.path ||
            state.matchedLocation == RoutePaths.register.path;
        final bool isRoot = state.matchedLocation == RoutePaths.root.path;
        // final bool isLanding = state.matchedLocation == RoutePaths.landing.path;
        if (!loggedIn) {
          if (isOnBoard) {
            return null;
          }
          return isLogging ||
                  privacyPolicy ||
                  termsNdConditions ||
                  forgotPassword ||
                  mufinEventsLocation ||
                  isSplashState
              ? null
              : RoutePaths.landing.path;
        }
        if (isLogging || isSplashRoute || isRoot) {
          return Uri(path: RoutePaths.root.path, queryParameters: {
            "uuid": currentState.userModel.uid.toString(),
            "email": currentState.userModel.email
          }).toString();
        }
        /*if (loggedIn && isLanding) {
          return Uri(path: RoutePaths.root.path, queryParameters: {
            "uuid": currentState.userModel.uid.toString(),
            "email": currentState.userModel.email
          }).toString();
        }*/
        return null;
      },
      refreshListenable: _listener);
}

/*  final _sectionNavigatorAKey =
      GlobalKey<NavigatorState>(debugLabel: "shell_a");
  final _sectionNavigatorBKey =
      GlobalKey<NavigatorState>(debugLabel: "shell_b");
  final _sectionNavigatorCKey =
      GlobalKey<NavigatorState>(debugLabel: "shell_c");*/
/*StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return UserHomeTabs(key: state.pageKey, child: navigationShell);
            },
            branches: <StatefulShellBranch>[
              StatefulShellBranch(
                  navigatorKey: _sectionNavigatorAKey,
                  routes: <RouteBase>[
                    GoRoute(
                        path: RoutePaths.home.path,
                        name: RoutePaths.home.routeName(),
                        builder: (context, state) {
                          final String userId =
                              state.uri.queryParameters['uuid'].toString();
                          return HomePage(
                            id: userId,
                          );
                        }),
                  ]),
              StatefulShellBranch(
                  navigatorKey: _sectionNavigatorBKey,
                  routes: <RouteBase>[
                    GoRoute(
                        path: RoutePaths.dashboard.path,
                        name: RoutePaths.dashboard.routeName(),
                        builder: (context, state) {
                          return const DashboardPage();
                        })
                  ]),
              StatefulShellBranch(
                  navigatorKey: _sectionNavigatorCKey,
                  routes: <RouteBase>[
                    GoRoute(
                        path: RoutePaths.courses.path,
                        name: RoutePaths.courses.routeName(),
                        builder: (context, state) {
                          return const CoursesPage();
                        }),
                  ])
            ]),*/
