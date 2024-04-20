import 'package:academy/features/academy/presentation/widgets/details_widget.dart';
import 'package:academy/features/academy/presentation/widgets/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_strings.dart';
import '../cubits/attendance/attendance_details/attendance_cubit.dart';
import '../widgets/heading_title_widget.dart';

class AttendanceDetailsPage extends StatelessWidget {
  const AttendanceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.attendance),
      ),
      body: BlocBuilder<AttendanceCubit, AttendanceState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.error != null
                  ? ErrorScreen(error: state.error)
                  : Container(
                      padding: const EdgeInsets.all(12),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            HeadingTitleWidget(
                                title: state.attendance!.studentName),
                            DetailsWidget(
                                title: AppStrings.time,
                                detail: state.attendance!.time),
                            DetailsWidget(
                                title: AppStrings.courseName,
                                detail: state.attendance!.courseName),
                            DetailsWidget(
                                title: AppStrings.subCourseName,
                                detail: state.attendance!.subCourseName),
                            DetailsWidget(
                                title: AppStrings.parentName,
                                detail: state.attendance!.parentName),
                            DetailsWidget(
                                title: AppStrings.week,
                                detail: state.attendance!.dayName),
                            DetailsWidget(
                                title: AppStrings.date,
                                detail: state.attendance!.date),
                            DetailsWidget(
                                title: AppStrings.notes,
                                detail: state.attendance!.note),
                          ],
                        ),
                      ),
                    );
        },
      ),
    );
  }
}
