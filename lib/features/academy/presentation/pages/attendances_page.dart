import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/utils/router_const.dart';
import 'package:academy/features/academy/presentation/cubits/attendance/all_attendance/attendances_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../widgets/list_item_widget.dart';

class AttendancesPage extends StatelessWidget {
  const AttendancesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.attendance),
      ),
      body: BlocBuilder<AttendancesCubit, AttendancesState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.error != null
                  ? ErrorScreen(error: state.error)
                  : Container(
                      padding: const EdgeInsets.all(12),
                      child: ListView.builder(
                          itemCount: state.attendances.length,
                          itemBuilder: (context, index) {
                            var attendance = state.attendances[index];
                            return GestureDetector(
                              onTap: () {
                                context.push(Uri(
                                    path: RoutePaths.attendanceDetails.path,
                                    queryParameters: {
                                      "attendanceId": attendance.attendanceId
                                    }).toString());
                              },
                              child: ListItemWidget(
                                  title:
                                      "${attendance.courseName} (${attendance.subCourseName})",
                                  subtitle:
                                      "${attendance.dayName}(${attendance.date} at ${attendance.time})",
                                  icon: Icon(
                                    Icons.book,
                                    color: context.colorScheme.onPrimary,
                                  )),
                            );
                          }),
                    );
        },
      ),
    );
  }
}
