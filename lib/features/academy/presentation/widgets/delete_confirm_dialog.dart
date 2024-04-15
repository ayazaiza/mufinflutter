import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/presentation/widgets/text_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_strings.dart';
import '../blocs/delete_student/delete_student_bloc.dart';

class DeleteConfirmDialog extends StatelessWidget {
  final Student student;

  const DeleteConfirmDialog({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return TextIconButton(
        onTap: () {
          showMyDialog(context);
        },
        iconData: Icons.delete,
        text: AppStrings.delete);
  }

  Future<void> showMyDialog(BuildContext context) async {
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
