import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/slot/student_times.dart';
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
              return CustomContainerBox<StudentTimes>(
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
                              "enrollId": state.studentTimes[index].enrollId,
                              "studentId": state.studentTimes[index].studentId,
                              "studentTimeDocId": state.studentTimes[index].studentTimeDocId,
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
                  itemCount: state.studentTimes.take(3).length);
            },
          ),
        ],
      ),
    );
  }
}
