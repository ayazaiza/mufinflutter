import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/slot/student_times.dart';
import 'package:academy/features/academy/presentation/cubits/stundent/student_cls_details/student_cls_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/router_const.dart';
import '../../widgets/details_widget.dart';
import '../../widgets/heading_title_widget.dart';
import '../../widgets/loading_error_widget.dart';

class StudentClassDetailsPage extends StatelessWidget {
  const StudentClassDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.classDetails),
      ),
      body: BlocBuilder<StudentClsDetailsCubit, StudentClsDetailsState>(
        builder: (context, state) {
          return LoadingErrorWidget<StudentTimes>(
              isLoading: state.isLoading,
              error: state.error,
              type: state.studentTimes,
              child: state.studentTimes == null
                  ? Container()
                  : SafeArea(
                      child: Column(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    HeadingTitleWidget(
                                        title: state.studentTimes!.studentName),
                                    DetailsWidget(
                                      title: AppStrings.studentName,
                                      detail: state.studentTimes!.studentName,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.time,
                                      detail: state.studentTimes!.time,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.courseName,
                                      detail: state.studentTimes!.courseName,
                                    ),
                                    DetailsWidget(
                                        title: AppStrings.subCourseName,
                                        detail: state.studentTimes!.subCourse),
                                    DetailsWidget(
                                      title: AppStrings.parentName,
                                      detail: state.studentTimes!.parentName,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.week,
                                      detail: state.studentTimes!.dayName,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: context.colorScheme.surfaceVariant
                                    .withOpacity(0.4),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      context.push(Uri(
                                          path: RoutePaths.studentProgress.path,
                                          queryParameters: {
                                            "enrollId":
                                                state.studentTimes!.enrollId,
                                            "studentId":
                                                state.studentTimes!.studentId
                                          }).toString());
                                    },
                                    child: const Text(AppStrings.progress),
                                  ),
                                ),
                                Container(
                                  width: 0.3,
                                  height: 24,
                                  color: context.colorScheme.primary,
                                ),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      context.push(Uri(
                                          path: RoutePaths.attendances.path,
                                          queryParameters: {
                                            "enrollId":
                                                state.studentTimes!.enrollId,
                                            "studentId":
                                                state.studentTimes!.studentId
                                          }).toString());
                                    },
                                    child: const Text(AppStrings.attendance),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
        },
      ),
    );
  }
}
