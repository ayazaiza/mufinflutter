import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/cubits/stundent/student_cls/student_cls_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/router_const.dart';
import '../../widgets/error_screen.dart';
import '../../widgets/list_item_widget.dart';

class StudentAllCls extends StatelessWidget {
  const StudentAllCls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.scheduledClasses),
      ),
      body: BlocBuilder<StudentClsCubit, StudentClsState>(
        builder: (context, state) {
          return state.times.isNotEmpty
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
                              AppStrings.classes.toUpperCase(),
                              style: context.textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(state.times.length.toString())
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.times.length,
                            itemBuilder: (BuildContext list, int index) {
                              return GestureDetector(
                                onTap: () {
                                  context.push(Uri(
                                      path: RoutePaths.studentClsDetails.path,
                                      queryParameters: {
                                        "enrollId": state.times[index].enrollId,
                                        "studentId":
                                            state.times[index].studentId,
                                        "studentTimeDocId":
                                            state.times[index].studentTimeDocId,
                                      }).toString());
                                },
                                child: ListItemWidget(
                                    title: state.times[index].studentName,
                                    subtitle:
                                        "Course: ${state.times[index].courseName}",
                                    third:
                                        "Every ${state.times[index].dayName} at ${state.times[index].time} (IST)",
                                    icon: Icon(
                                      Icons.book_rounded,
                                      color: context.colorScheme.onPrimary,
                                    )),
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
