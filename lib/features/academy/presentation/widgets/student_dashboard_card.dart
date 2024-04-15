import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/utils/router_const.dart';
import 'package:academy/features/academy/presentation/widgets/student_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../cubits/dashboard/dashboard_cubit.dart';

class StudentDashboardCard extends StatefulWidget {
  const StudentDashboardCard({super.key});

  @override
  State<StudentDashboardCard> createState() => _StudentDashboardCardState();
}

class _StudentDashboardCardState extends State<StudentDashboardCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return state.students.isNotEmpty
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: context.colorScheme.surfaceVariant.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppStrings.students.toUpperCase(),
                            style: context.textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              context.push(Uri(
                                      path: RoutePaths.students.path,
                                      queryParameters: {"uuid": state.uuid})
                                  .toString());
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            ))
                      ],
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.students.take(4).length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext list, int index) {
                          return StudentCard(student: state.students[index]);
                        }),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                AppStrings.addStudent.toUpperCase(),
                                style: context.textTheme.titleSmall,
                              )),
                        ),
                        Container(
                          width: 0.3,
                          height: 16,
                          color: context.colorScheme.primary,
                        ),
                        Expanded(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                AppStrings.viewMore.toUpperCase(),
                                style: context.textTheme.titleSmall,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
