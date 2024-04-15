import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/presentation/blocs/delete_student/delete_student_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_local_assets.dart';
import '../../../../core/utils/router_const.dart';
import '../../domain/entities/student/pop_action.dart';

class StudentCard extends HookWidget {
  final Student student;

  const StudentCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteStudentBloc, DeleteStudentState>(
      listener: (context, state) {
        if (state is NotDeletedState) {
          Fluttertoast.showToast(msg: state.msg);
          return;
        }
        if (state is StudentDeletedState) {
          Fluttertoast.showToast(msg: state.msg);
          context
              .read<DeleteStudentBloc>()
              .add(const DeleteStudentEvent.started());
          return;
        }
      },
      child: InkWell(
        onTap: () {
          context.push(Uri(
              path: RoutePaths.studentDetails.path,
              queryParameters: {
                "uuid": student.userId,
                "studentId": student.studentDocId
              }).toString());
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
              color: context.colorScheme.surfaceVariant.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              AppLocalAssets.students
                  .toAssetIcon(color: context.colorScheme.primary, size: 32),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  student.name,
                  style: context.textTheme.bodyLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onSelected: (action) {
                    switch (action) {
                      case PopAction.view:
                        context.push(Uri(
                            path: RoutePaths.studentDetails.path,
                            queryParameters: {
                              "uuid": student.userId,
                              "studentId": student.studentDocId
                            }).toString());
                      case PopAction.delete:
                        showMyDialog(student, context);
                      case PopAction.edit:
                        context.push(Uri(
                            path: RoutePaths.addStudent.path,
                            queryParameters: {
                              "uuid": student.userId,
                              "studentId": student.studentDocId
                            }).toString());
                      case PopAction.enroll:
                    }
                  },
                  itemBuilder: (context) {
                    return <PopupMenuEntry<PopAction>>[
                      const PopupMenuItem(
                        value: PopAction.view,
                        child: Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(AppStrings.view),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: PopAction.edit,
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit_rounded,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(AppStrings.edit),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: PopAction.delete,
                        child: Row(
                          children: [
                            Icon(
                              Icons.delete_outline_rounded,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(AppStrings.delete),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: PopAction.enroll,
                        child: Row(
                          children: [
                            AppLocalAssets.courseIconActive
                                .toAssetIcon(size: 18),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(AppStrings.enroll),
                          ],
                        ),
                      ),
                    ];
                  })
              // IconButton(
              //     onPressed: () {
              //
              //     },
              //     icon: const Icon(Icons.more_vert_outlined))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showMyDialog(Student student, BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(AppStrings.confirmationRequired),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(AppStrings.deleteConfirmMsg),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(AppStrings.confirm),
              onPressed: () {
                context
                    .read<DeleteStudentBloc>()
                    .add(DeleteStudentEvent.deleteStudent(student: student));
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(AppStrings.cancel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
