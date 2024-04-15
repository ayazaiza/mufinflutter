import 'package:academy/core/constants/app_strings.dart';

enum RoutePaths {
  home(path: '/'),
  dashboard(path: '/dashboard'),
  courses(path: '/courses'),
  notifications(path: '/notifications'),
  settings(path: '/settings'),
  profile(path: '/profile'),
  allSongs(path: '/all_songs'),
  students(path: '/students'),
  addStudent(path: '/add_student'),
  studentDetails(path: '/student_details'),
  attendances(path: '/attendances'),
  attendanceDetails(path: '/attendance_details'),
  enrolls(path: '/enrolls'),
  enrollDetails(path: '/enroll_details'),
  enrollCourse(path: '/enroll_course'),
  courseDetails(path: '/course_details'),
  eventEnrolls(path: '/event_enrolls'),
  eventEnrollDetails(path: '/event_enroll_details'),
  payments(path: '/payments'),
  root(path: '/app_root'),
  profileUpdate(path: '/profile_update'),
  welcome(path: '/welcome_page'),
  landing(path: '/landing'),
  mufinEventDetails(path: '/mufin_events_details'),
  splash(path: '/splash'),
  onBoard(path: '/on_board'),
  login(path: '/login'),
  register(path: '/register'),
  terms(path: '/terms'),
  disclaimer(path: '/disclaimer'),
  privacyPolicy(path: '/privacy_policy'),
  forgotPassword(path: '/forgot_password');

  final String path;

  const RoutePaths({required this.path});

  String routeName() {
    switch (this) {
      case RoutePaths.home:
        return AppStrings.appName;
      case RoutePaths.root:
        return AppStrings.appRoot;
      case RoutePaths.profileUpdate:
        return AppStrings.profileUpdate;
      case RoutePaths.welcome:
        return AppStrings.welcomePage;
      case RoutePaths.landing:
        return AppStrings.landingPage;
      case RoutePaths.mufinEventDetails:
        return AppStrings.mufinEventDetails;
      case RoutePaths.onBoard:
        return AppStrings.onBoarding;
      case RoutePaths.splash:
        return AppStrings.splash;
      case RoutePaths.login:
        return AppStrings.login;
      case RoutePaths.register:
        return AppStrings.register;
      case RoutePaths.disclaimer:
        return AppStrings.disclaimer;
      case RoutePaths.courses:
        return AppStrings.courses;
      case RoutePaths.settings:
        return AppStrings.settings;
      case RoutePaths.dashboard:
        return AppStrings.dashboard;
      case RoutePaths.notifications:
        return AppStrings.notifications;
      case RoutePaths.terms:
        return AppStrings.terms;
      case RoutePaths.profile:
        return AppStrings.profile;
      case RoutePaths.students:
        return AppStrings.students;
      case RoutePaths.privacyPolicy:
        return AppStrings.privacyPolicy;
      case RoutePaths.forgotPassword:
        return AppStrings.forgotPwd;
      case RoutePaths.allSongs:
        return AppStrings.songs;
      case RoutePaths.addStudent:
        return AppStrings.addStudent;
      case RoutePaths.studentDetails:
        return AppStrings.studentDetails;
      case RoutePaths.attendances:
        return AppStrings.attendance;
      case RoutePaths.attendanceDetails:
        return AppStrings.attendanceDetails;
      case RoutePaths.enrolls:
        return AppStrings.enrolls;
      case RoutePaths.enrollDetails:
        return AppStrings.enrollDetails;
      case RoutePaths.enrollCourse:
        return AppStrings.enrollCourse;
      case RoutePaths.courseDetails:
        return AppStrings.courseDetails;
      case RoutePaths.eventEnrolls:
        return AppStrings.eventEnrolls;
      case RoutePaths.eventEnrollDetails:
        return AppStrings.eventEnrollDetails;
      case RoutePaths.payments:
        return AppStrings.payments;
    }
  }
}

/*class PageRouteConstants {
  static final PageRouteModel homePageRoute =
      PageRouteModel(path: "/", name: AppStrings.appName);

  static final PageRouteModel rootPageRoute =
      PageRouteModel(path: "/app_root", name: AppStrings.appRoot);

  static final PageRouteModel profileUpdateRoute =
      PageRouteModel(path: "/profile_update", name: AppStrings.profileUpdate);

  static final PageRouteModel welcomePage =
      PageRouteModel(path: "/welcome_page", name: AppStrings.welcomePage);

  static final PageRouteModel landingPageRoute =
      PageRouteModel(path: "/landing", name: "Landing Page");

  static final PageRouteModel mufinEventDetailsPageRoute =
      PageRouteModel(path: "mufin_events", name: AppStrings.mufinEvent);

  static final PageRouteModel splashPageRoute =
      PageRouteModel(path: "/splash_page", name: "splash");
  static final PageRouteModel onBoardPageRoute =
      PageRouteModel(path: "/on_boarding", name: "On Boarding");
  static final PageRouteModel loginPageRoute =
      PageRouteModel(path: "/login", name: "Login");

  static final PageRouteModel registerPageRoute =
      PageRouteModel(path: "/register", name: "Register");

  static final PageRouteModel termsPageRoute =
      PageRouteModel(path: "/terms", name: AppStrings.terms);

  static final PageRouteModel disclaimerPageRoute =
      PageRouteModel(path: "/disclaimer", name: "Disclaimer");

  static final PageRouteModel privacyPageRoute =
      PageRouteModel(path: "/privacy", name: AppStrings.privacyPolicy);
  static final PageRouteModel forgotPwdPageRoute =
      PageRouteModel(path: "/forgotPwd", name: AppStrings.forgotPwd);
}*/
