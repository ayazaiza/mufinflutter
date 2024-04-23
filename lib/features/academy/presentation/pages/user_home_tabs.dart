import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/cubits/bottom_nav/bottom_nav_cubit.dart';
import 'package:academy/features/academy/presentation/pages/course/courses_page.dart';
import 'package:academy/features/academy/presentation/pages/home_page.dart';
import 'package:academy/features/academy/presentation/widgets/nav_drawer_custom_item.dart';
import 'package:academy/features/academy/presentation/widgets/nav_drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_local_assets.dart';
import '../../../../core/utils/router_const.dart';
import '../../../navigation/bloc/user_session_bloc.dart';
import 'dashboard_page.dart';

class UserHomeTabs extends HookWidget {
  final String uuid;

  const UserHomeTabs({super.key, required this.uuid});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = useMemoized(GlobalKey<ScaffoldState>.new);
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu_rounded)),
        actions: [
          IconButton(
              onPressed: () {
                // context.read<UserSessionBloc>().add(UserDoLoggedOutEvent());
              },
              icon: const Icon(Icons.notifications)),
        ],
      ),
      drawer: SafeArea(
        child: NavigationDrawer(
          backgroundColor: context.colorScheme.surface,
          children: [
            const NavDrawerHeader(),
            NavDrawerCustomItem(
                text: AppStrings.profile,
                icon: AppLocalAssets.profileIcon,
                hasDiv: false,
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  context.push(Uri(
                      path: RoutePaths.profile.path,
                      queryParameters: {"uuid": uuid}).toString());
                }),
            /* NavDrawerCustomItem(
                text: AppStrings.settings,
                icon: AppLocalAssets.settingsIcon,
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                }),*/
            NavDrawerCustomItem(
                text: AppStrings.students,
                icon: AppLocalAssets.students,
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  context.push(Uri(
                      path: RoutePaths.students.path,
                      queryParameters: {"uuid": uuid}).toString());
                }),
            NavDrawerCustomItem(
                text: AppStrings.enrolls,
                icon: AppLocalAssets.courseIconActive,
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  context.push(Uri(
                      path: RoutePaths.enrolls.path,
                      queryParameters: {"uuid": uuid}).toString());
                }),
            NavDrawerCustomItem(
                text: AppStrings.eventEnrolls,
                icon: AppLocalAssets.eventsIcon,
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                }),
            NavDrawerCustomItem(
                text: AppStrings.songs,
                icon: AppLocalAssets.songIcon,
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                }),
            NavDrawerCustomItem(
                text: AppStrings.logout,
                icon: AppLocalAssets.logoutIcon,
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  context.read<UserSessionBloc>().add(UserDoLoggedOutEvent());
                }),
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          return NavigationBar(
            selectedIndex: state.index,
            indicatorColor: context.colorScheme.surfaceVariant,
            destinations: [
              NavigationDestination(
                  icon: AppLocalAssets.homeIconInActive.toBottomIcon,
                  label: AppStrings.home,
                  selectedIcon: AppLocalAssets.homeIconActive.toBottomIcon),
              NavigationDestination(
                icon: AppLocalAssets.dashboardIconInActive.toBottomIcon,
                label: AppStrings.dashboard,
                selectedIcon: AppLocalAssets.dashboardIconActive.toBottomIcon,
              ),
              NavigationDestination(
                icon: AppLocalAssets.courseIconInActive.toBottomIcon,
                label: AppStrings.courses,
                selectedIcon: AppLocalAssets.courseIconActive.toBottomIcon,
              )
            ],
            onDestinationSelected: (index) {
              context.read<BottomNavCubit>().onTap(index);
            },
          );
        },
      ),
      body: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          return PageView(
            controller: state.controller,
            physics: const ClampingScrollPhysics(),
            onPageChanged: (index) {
              context.read<BottomNavCubit>().selectPage(index);
            },
            children: [
              const HomePage(),
              DashboardPage(
                uuid: uuid,
              ),
              CoursesPage(
                uuid: uuid,
              )
            ],
          );
        },
      ),
    );
  }
}
