import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/presentation/cubits/enrolls/enrolled_details/enrolled_details_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/event_enrolls/event_enroll_details/event_enroll_details_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/loading_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/router_const.dart';
import '../../widgets/details_widget.dart';
import '../../widgets/heading_title_widget.dart';

class EventEnrolledDetailsPage extends HookWidget {
  const EventEnrolledDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<EventEnrollDetailsCubit, EventEnrollDetailsState>(
          builder: (context, state) {
            return Text(state.eventEnroll != null
                ? state.eventEnroll!.eventName
                : AppStrings.appName);
          },
        ),
      ),
      body: BlocBuilder<EventEnrollDetailsCubit, EventEnrollDetailsState>(
        builder: (context, state) {
          return LoadingErrorWidget<EventEnroll>(
              isLoading: state.isLoading,
              error: state.error,
              type: state.eventEnroll,
              child: state.eventEnroll == null
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
                                        title: state.eventEnroll!.eventName),
                                    DetailsWidget(
                                      title: AppStrings.eventEnrolls,
                                      detail: state.eventEnroll!.eventName,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.studentName,
                                      detail: state.eventEnroll!.studentName,
                                    ),

                                    DetailsWidget(
                                      title: AppStrings.enrolledDate,
                                      detail: state.eventEnroll!.timestamp
                                          .toDate()
                                          .toString(),
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.lastUpdated,
                                      detail: state.eventEnroll!.lastUpdated
                                          .toDate()
                                          .toString(),
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.status,
                                      detail: state.eventEnroll!.status,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.parentName,
                                      detail: state.eventEnroll!.parentName,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.parentEmail,
                                      detail: state.eventEnroll!.parentEmail,
                                    ),
                                    DetailsWidget(
                                      title: AppStrings.notes,
                                      detail: state.eventEnroll!.status,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
        },
      ),
    );
  }
}
