import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/domain/entities/utils/song.dart';
import 'package:academy/features/academy/presentation/blocs/delete_student/delete_student_bloc.dart';
import 'package:academy/features/academy/presentation/cubits/student_details/student_details_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/custom_container_box.dart';
import 'package:academy/features/academy/presentation/widgets/delete_confirm_dialog.dart';
import 'package:academy/features/academy/presentation/widgets/details_widget.dart';
import 'package:academy/features/academy/presentation/widgets/error_screen.dart';
import 'package:academy/features/academy/presentation/widgets/list_item_widget.dart';
import 'package:academy/features/academy/presentation/widgets/text_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/router_const.dart';

class ViewStudent extends HookWidget {
  const ViewStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StudentDetailsCubit, StudentDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Text(state.student?.name ?? AppStrings.appName),
            ),
            body: BlocListener<DeleteStudentBloc, DeleteStudentState>(
                listener: (context, state) {
                  if (state is StudentDeletedState) {
                    context.pop();
                    return;
                  }
                },
                child: state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : state.error != null && state.student == null
                        ? ErrorScreen(error: state.error)
                        : SafeArea(
                            child: Column(
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(18),
                                                decoration: BoxDecoration(
                                                    color: context
                                                        .colorScheme.primary,
                                                    shape: BoxShape.circle),
                                                child: Center(
                                                    child: Text(
                                                  state.student!.name[0],
                                                  style: context
                                                      .textTheme.titleLarge!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          color: context
                                                              .colorScheme
                                                              .onPrimary),
                                                )),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                state.student!.name,
                                                style: context
                                                    .textTheme.titleLarge!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700),
                                              )
                                            ],
                                          ),
                                        ),
                                        DetailsWidget(
                                          title: AppStrings.firstname,
                                          detail: state.student!.firstname,
                                        ),
                                        DetailsWidget(
                                          title: AppStrings.lastname,
                                          detail: state.student!.lastname,
                                        ),
                                        DetailsWidget(
                                          title: AppStrings.dateOfBirth,
                                          detail: state.student!.dateOfBirth,
                                        ),
                                        DetailsWidget(
                                          title: AppStrings.gender,
                                          detail: state.student!.gender,
                                        ),
                                        DetailsWidget(
                                          title: AppStrings.relation,
                                          detail:
                                              state.student!.relationToStudent,
                                        ),
                                        DetailsWidget(
                                          title: AppStrings.addedDate,
                                          detail: state.student!.timestamp
                                              .toDate()
                                              .toString(),
                                        ),
                                        if (state.progress.isNotEmpty) ...[
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          CustomContainerBox<EnrollCourse>(
                                              title: AppStrings.progress,
                                              item: state.progress,
                                              itemWidget: (index) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    context.push(Uri(
                                                        path: RoutePaths
                                                            .studentProgress
                                                            .path,
                                                        queryParameters: {
                                                          "enrollId": state
                                                              .progress[index]
                                                              .enrollDocId,
                                                          "studentId": state
                                                              .progress[index]
                                                              .studentDocumentId
                                                        }).toString());
                                                  },
                                                  child: ListItemWidget(
                                                      title:
                                                          "${state.progress[index].courseName} (${state.enrollCourses[index].subCourseName})",
                                                      subtitle: state
                                                          .progress[index]
                                                          .parentName,
                                                      icon: Icon(
                                                        Icons.home_work_rounded,
                                                        color: context
                                                            .colorScheme
                                                            .onPrimary,
                                                      )),
                                                );
                                              },
                                              itemCount: state.progress.length),
                                        ] else ...[
                                          const SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                        if (state.enrollCourses.isNotEmpty) ...[
                                          CustomContainerBox<EnrollCourse>(
                                              title: AppStrings
                                                  .regularCourseEnrolls,
                                              viewAll: () {},
                                              item: state.enrollCourses,
                                              itemWidget: (index) {
                                                return GestureDetector(
                                                  onTap: () {},
                                                  child: ListItemWidget(
                                                    title: state
                                                        .enrollCourses[index]
                                                        .courseName,
                                                    subtitle: state
                                                        .enrollCourses[index]
                                                        .subCourseName,
                                                    icon: Icon(
                                                      Icons.school_rounded,
                                                      color: context.colorScheme
                                                          .onPrimary,
                                                    ),
                                                    third: state
                                                        .enrollCourses[index]
                                                        .timestamp
                                                        .toDate()
                                                        .toString(),
                                                  ),
                                                );
                                              },
                                              itemCount: state.enrollCourses
                                                  .take(10)
                                                  .length)
                                        ],
                                        if (state.songs.isNotEmpty) ...[
                                          CustomContainerBox<Song>(
                                              title: AppStrings.songs,
                                              viewAll: () {},
                                              item: state.songs,
                                              itemWidget: (index) {
                                                return GestureDetector(
                                                  onTap: () {},
                                                  child: ListItemWidget(
                                                    title: state
                                                        .songs[index].songName,
                                                    subtitle: state.songs[index]
                                                        .songShortDesc,
                                                    icon: Icon(
                                                      Icons.music_note,
                                                      color: context.colorScheme
                                                          .onPrimary,
                                                    ),
                                                    third: state
                                                        .enrollCourses[index]
                                                        .timestamp
                                                        .toDate()
                                                        .toString(),
                                                  ),
                                                );
                                              },
                                              itemCount:
                                                  state.songs.take(10).length)
                                        ]
                                      ],
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: DeleteConfirmDialog(
                                            student: state.student!),
                                      ),
                                      Container(
                                        width: 0.3,
                                        height: 16,
                                        color: context.colorScheme.primary,
                                      ),
                                      Expanded(
                                        child: TextIconButton(
                                            onTap: () {
                                              context.push(Uri(
                                                  path: RoutePaths
                                                      .addStudent.path,
                                                  queryParameters: {
                                                    "uuid": state.uuid,
                                                    "studentId": state.studentId
                                                  }).toString());
                                            },
                                            iconData: Icons.edit_rounded,
                                            text: AppStrings.edit),
                                      ),
                                      Container(
                                        width: 0.3,
                                        height: 16,
                                        color: context.colorScheme.primary,
                                      ),
                                      Expanded(
                                          child: TextIconButton(
                                              onTap: () {},
                                              iconData: Icons.school_rounded,
                                              text: AppStrings.enroll)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )));
      },
    );
  }
}
