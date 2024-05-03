import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/cubits/dashboard/dashboard_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_strings.dart';

class RecentActivitiesCard extends StatelessWidget {
  const RecentActivitiesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return state.recentActivities.isNotEmpty
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    // color: context.colorScheme.surfaceVariant.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppStrings.recentActivities.toUpperCase(),
                            style: context.textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            ))
                      ],
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.recentActivities.take(3).length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext list, int index) {
                          String activity =
                              state.recentActivities[index].activity;
                          return Container(
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            decoration: BoxDecoration(
                                color: activity.getActColor(context),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              children: [
                                Icon(activity.getIcon(),
                                    size: 20,
                                    color: context.colorScheme.secondary),
                                const SizedBox(
                                  width: 6,
                                ),
                                Expanded(
                                  child: Text(
                                    activity,
                                    style: context.textTheme.bodySmall,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
