import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/cubits/bottom_nav/bottom_nav_cubit.dart';
import 'package:academy/features/academy/presentation/pages/courses_page.dart';
import 'package:academy/features/academy/presentation/pages/home_page.dart';
import 'package:academy/features/academy/presentation/widgets/nav_drawer_custom_item.dart';
import 'package:academy/features/academy/presentation/widgets/nav_drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_local_assets.dart';
import '../../../../presentation/navigation/user_session_bloc/user_session_bloc.dart';
import 'dashboard_page.dart';

class UserHomeTabs extends StatefulWidget {
  const UserHomeTabs({super.key});

  @override
  State<UserHomeTabs> createState() => _UserHomeTabsState();
}

class _UserHomeTabsState extends State<UserHomeTabs> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        leading: IconButton(
            onPressed: _openDrawer, icon: const Icon(Icons.menu_rounded)),
        actions: [
          IconButton(
              onPressed: () {
                context.read<UserSessionBloc>().add(UserDoLoggedOutEvent());
              },
              icon: const Icon(Icons.logout_rounded)),
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
                  _scaffoldKey.currentState?.closeDrawer();
                }),
            NavDrawerCustomItem(
                text: AppStrings.settings,
                icon: AppLocalAssets.settingsIcon,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
                }),
            NavDrawerCustomItem(
                text: AppStrings.students,
                icon: AppLocalAssets.students,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
                }),
            NavDrawerCustomItem(
                text: AppStrings.enrolls,
                icon: AppLocalAssets.courseIconActive,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
                }),
            NavDrawerCustomItem(
                text: AppStrings.eventEnrolls,
                icon: AppLocalAssets.eventsIcon,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
                }),
            NavDrawerCustomItem(
                text: AppStrings.songs,
                icon: AppLocalAssets.songIcon,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
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
            children: const [HomePage(), DashboardPage(), CoursesPage()],
          );
        },
      ),
    );
  }
}
