import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/presentation/cubits/enrolled_details/enrolled_details_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/loading_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/router_const.dart';
import '../widgets/details_widget.dart';

class EnrolledDetailsPage extends HookWidget {
  const EnrolledDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<EnrolledDetailsCubit, EnrolledDetailsState>(
          builder: (context, state) {
            return Text(state.enrollCourse != null
                ? state.enrollCourse!.courseName
                : AppStrings.appName);
          },
        ),
      ),
      body: BlocBuilder<EnrolledDetailsCubit, EnrolledDetailsState>(
        builder: (context, state) {
          return LoadingErrorWidget<EnrollCourse>(
              isLoading: state.isLoading,
              error: state.error,
              type: state.enrollCourse,
              child:  state.enrollCourse == null
                  ? Container()
                  :  SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DetailsWidget(
                                title: AppStrings.courseName,
                                detail: state.enrollCourse!.courseName,
                              ),
                              DetailsWidget(
                                title: AppStrings.subCourseName,
                                detail: state.enrollCourse!.subCourseName,
                              ),
                              DetailsWidget(
                                title: AppStrings.status,
                                detail: state.enrollCourse!.status,
                              ),
                              DetailsWidget(
                                title: AppStrings.courseEnrolledDate,
                                detail: state.enrollCourse!.timestamp
                                    .toDate()
                                    .toString(),
                              ),
                              DetailsWidget(
                                title: AppStrings.studentName,
                                detail: state.enrollCourse!.studentName,
                              ),
                              DetailsWidget(
                                title: AppStrings.dateOfBirth,
                                detail: state.enrollCourse!.studentDob,
                              ),
                              DetailsWidget(
                                title: AppStrings.parentName,
                                detail: state.enrollCourse!.parentName,
                              ),
                              DetailsWidget(
                                title: AppStrings.parentEmail,
                                detail: state.enrollCourse!.parentEmail,
                              ),
                              DetailsWidget(
                                title: AppStrings.notes,
                                detail: state.enrollCourse!.notes,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Center(
                                child: Text(
                                  "All ${state.studentTimes.length} scheduled classes"
                                      .toUpperCase(),
                                  style: context.textTheme.titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: context.colorScheme.primary),
                                ),
                              ),
                              ...state.studentTimes
                                  .map((e) => Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12.0, horizontal: 16),
                                      margin: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          color: context
                                              .colorScheme.tertiaryContainer,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Text(
                                        "Every ${e.dayName} at ${e.time} (IST)",
                                        style: context.textTheme.titleMedium,
                                      )))
                                  .toList()
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
                                          state.enrollCourse!.enrollDocId,
                                      "studentId":
                                          state.enrollCourse!.studentDocumentId
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
                                          state.enrollCourse!.enrollDocId,
                                      "studentId":
                                          state.enrollCourse!.studentDocumentId
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
