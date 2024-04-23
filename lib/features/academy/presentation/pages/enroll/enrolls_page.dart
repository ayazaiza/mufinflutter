import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/cubits/enrolls/all_enrolls/all_enrolls_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/router_const.dart';
import '../../widgets/list_item_widget.dart';

class EnrollsPage extends StatelessWidget {
  const EnrollsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.enrolls),
      ),
      body: BlocBuilder<AllEnrollsCubit, AllEnrollsState>(
        builder: (context, state) {
          return state.enrolls.isNotEmpty
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  margin: const EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              AppStrings.enrolls.toUpperCase(),
                              style: context.textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(state.enrolls.length.toString())
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.enrolls.length,
                            itemBuilder: (BuildContext list, int index) {
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
                                  icon: Icon(
                                    Icons.school_rounded,
                                    color: context.colorScheme.onPrimary,
                                  ),
                                  third: state.enrolls[index].timestamp
                                      .toDate()
                                      .toString(),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                )
              : ErrorScreen(
                  error: state.errorMsg,
                );
        },
      ),
    );
  }
}
