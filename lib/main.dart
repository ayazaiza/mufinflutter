import 'package:academy/core/theme/color_schemes.dart';
import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/presentation/blocs/delete_student/delete_student_bloc.dart';
import 'package:academy/features/academy/presentation/cubits/landing/landing_cubit.dart';
import 'package:academy/presentation/navigation/router.dart';
import 'package:academy/presentation/navigation/router_listener.dart';
import 'package:academy/presentation/navigation/user_session_bloc/user_session_bloc.dart';
import 'package:flutter/material.dart';
import 'package:academy/di/app_module.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDependencies();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => di.locator<LandingCubit>()),
    BlocProvider(create: (context) => di.locator<DeleteStudentBloc>()),
    // BlocProvider(create: (context) => di.getIt.call<RegisterBloc>()),
    BlocProvider(
        create: (context) =>
            di.locator<UserSessionBloc>()..add(UserSessionInit()))
  ], child: const MyApp()));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final UserSessionBloc userSessionBloc = context.read<UserSessionBloc>();
    final RouterModule routerModule = RouterModule(
        getIt: di.locator,
        userSessionBloc: userSessionBloc,
        userSessionListener:
            UserSessionListener(userSessionBloc: userSessionBloc));
    return MaterialApp.router(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      routerConfig: routerModule.goRouter,
      theme: ThemeData(
        fontFamily: "NotoSans",
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFDDE1FF)),
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ).copyWith(
          appBarTheme: Theme.of(context).appBarTheme.copyWith(
              iconTheme: IconThemeData(color: lightColorScheme.primary))),
      darkTheme: ThemeData(
          fontFamily: "NotoSans",
          useMaterial3: true,
          colorScheme: darkColorScheme),
      themeMode: ThemeMode.light,
    );
  }
}

//  dart run build_runner build --delete-conflicting-outputs

/* child: MaterialApp(
          title: 'Mufin Academy',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: lightColorScheme,
            useMaterial3: true,
          ),
          darkTheme:
              ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
          themeMode: ThemeMode.light,
          initialRoute: '/',
          routes: {
            "/": (context) => const LoadingPage(),
            "/landing_page": (context) => const LandingPage(),
            "/login_page": (context) => const LoginPage()
          },
        ));*/

/* return MaterialApp(
      title: 'Mufin Academy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.light,
      initialRoute: '/',
      routes: {"/": (context) => const LandingPage()},
    );*/
