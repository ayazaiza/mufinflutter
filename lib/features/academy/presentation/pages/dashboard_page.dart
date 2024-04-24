import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/utils/app_local_assets.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/domain/entities/slot/student_times.dart';
import 'package:academy/features/academy/domain/entities/utils/song.dart';
import 'package:academy/features/academy/presentation/cubits/dashboard/dashboard_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/recent_activities_card.dart';
import 'package:academy/features/academy/presentation/widgets/student_dashboard_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/router_const.dart';
import '../widgets/custom_container_box.dart';
import '../widgets/list_item_widget.dart';

class DashboardPage extends StatefulWidget {
  final String uuid;

  const DashboardPage({super.key, required this.uuid});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final int limit = 4;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const RecentActivitiesCard(),
          const SizedBox(
            height: 6,
          ),
          const StudentDashboardCard(),
          BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomContainerBox<StudentTimes>(
                      viewAll: () {
                        context.push(Uri(
                            path: RoutePaths.studentAllCls.path,
                            queryParameters: {
                              "userId": widget.uuid,
                            }).toString());
                      },
                      title: AppStrings.scheduledClasses,
                      item: state.studentTimes,
                      itemWidget: (index) {
                        return GestureDetector(
                          onTap: () {
                            context.push(Uri(
                                path: RoutePaths.studentClsDetails.path,
                                queryParameters: {
                                  "enrollId":
                                      state.studentTimes[index].enrollId,
                                  "studentId":
                                      state.studentTimes[index].studentId,
                                  "studentTimeDocId": state
                                      .studentTimes[index].studentTimeDocId,
                                }).toString());
                          },
                          child: ListItemWidget(
                              title: state.studentTimes[index].studentName,
                              subtitle:
                                  "Course: ${state.studentTimes[index].courseName}",
                              third:
                                  "Every ${state.studentTimes[index].dayName} at ${state.studentTimes[index].time} (IST)",
                              icon: Icon(
                                Icons.book_rounded,
                                color: context.colorScheme.onPrimary,
                              )),
                        );
                      },
                      itemCount: state.studentTimes.take(limit).length),
                  if (state.enrolls.isNotEmpty ||
                      state.eventEnrolls.isNotEmpty) ...[
                    Text(
                      AppStrings.enrollments,
                      style: context.textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    CustomContainerBox<EnrollCourse>(
                        viewAll: () {
                          context.push(Uri(
                                  path: RoutePaths.enrolls.path,
                                  queryParameters: {"uuid": widget.uuid})
                              .toString());
                        },
                        title: AppStrings.regularCourseEnrolls,
                        item: state.enrolls,
                        itemWidget: (index) {
                          return GestureDetector(
                            onTap: () {
                              context.push(Uri(
                                  path: RoutePaths.enrollDetails.path,
                                  queryParameters: {
                                    "enrollId":
                                        state.enrolls[index].enrollDocId,
                                    "instructorId":
                                        state.enrolls[index].instructorId
                                  }).toString());
                            },
                            child: ListItemWidget(
                                title: state.enrolls[index].courseName,
                                subtitle: state.enrolls[index].subCourseName,
                                third: state.enrolls[index].timestamp
                                    .toDate()
                                    .toLocal()
                                    .toString(),
                                icon: AppLocalAssets.courseIconActive
                                    .toAssetIcon(
                                        color: context.colorScheme.onPrimary)),
                          );
                        },
                        itemCount: state.enrolls.take(limit).length),
                    CustomContainerBox<EventEnroll>(
                        viewAll: () {
                          context.push(Uri(
                              path: RoutePaths.eventEnrolls.path,
                              queryParameters: {
                                "userId": widget.uuid,
                              }).toString());
                        },
                        title: AppStrings.eventEnrolls,
                        item: state.eventEnrolls,
                        itemWidget: (index) {
                          return GestureDetector(
                            onTap: () {
                              context.push(Uri(
                                  path: RoutePaths.eventEnrollDetails.path,
                                  queryParameters: {
                                    "id": state.eventEnrolls[index].id,
                                  }).toString());
                            },
                            child: ListItemWidget(
                                title: state.eventEnrolls[index].eventName,
                                subtitle: state.eventEnrolls[index].studentName,
                                third: state.eventEnrolls[index].status,
                                icon: AppLocalAssets.eventsIcon.toAssetIcon(
                                    color: context.colorScheme.onPrimary)),
                          );
                        },
                        itemCount: state.eventEnrolls.take(limit).length),
                    CustomContainerBox<Song>(
                        viewAll: () {
                          context.push(Uri(
                              path: RoutePaths.allSongs.path,
                              queryParameters: {
                                "userId":
                                widget.uuid,
                              }).toString());
                        },
                        title: AppStrings.songs,
                        item: state.songs,
                        itemWidget: (index) {
                          return GestureDetector(
                            onTap: () {
                              context.push(Uri(
                                  path: RoutePaths.songDetails.path,
                                  queryParameters: {
                                    "songId": state.songs[index].songId,
                                  }).toString());
                            },
                            child: ListItemWidget(
                                title: state.songs[index].songName,
                                subtitle: state.songs[index].songAlbum,
                                third: state.songs[index].songGenre,
                                icon: AppLocalAssets.songIcon.toAssetIcon(
                                    color: context.colorScheme.onPrimary)),
                          );
                        },
                        itemCount: state.songs.take(limit).length),
                  ]
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
