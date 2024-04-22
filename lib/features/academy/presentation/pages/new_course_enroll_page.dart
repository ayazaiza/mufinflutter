import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/blocs/enroll_course/enroll_course_bloc.dart';
import 'package:academy/features/academy/presentation/widgets/error_screen.dart';
import 'package:academy/features/academy/presentation/widgets/select_student_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/common/widgets/action_bar_loader.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/custom_outlined_text_form_field.dart';
import '../../../../core/utils/custom_widgets.dart';
import '../widgets/select_course_list.dart';
import '../widgets/select_sub_course_list.dart';

class NewCourseEnrollPage extends StatefulWidget {
  const NewCourseEnrollPage({super.key});

  @override
  State<NewCourseEnrollPage> createState() => _NewCourseEnrollPageState();
}

class _NewCourseEnrollPageState extends State<NewCourseEnrollPage> {
  final double _padding = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.enrollNewCourse,
            style: context.textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.w600)),
        actions: [
          BlocBuilder<EnrollCourseBloc, EnrollCourseState>(
            builder: (context, state) {
              return state.isLoading
                  ? ActionBarLoader(isLoading: state.isLoading)
                  : IconButton(
                      onPressed: () {
                        context
                            .read<EnrollCourseBloc>()
                            .add(const EnrollCourseEvent.submitEnroll());
                      },
                      icon: const Icon(Icons.check));
            },
          )
        ],
      ),
      body: BlocConsumer<EnrollCourseBloc, EnrollCourseState>(
        listener: (context, state) {
          if (state.successMsg != null) {
            Fluttertoast.showToast(
                msg: state.successMsg!,
                backgroundColor: context.colorScheme.primary);
          }
          if (state.errorMsg != null) {
            Fluttertoast.showToast(
                msg: state.errorMsg!,
                backgroundColor: context.colorScheme.error);
          }
        },
        builder: (context, state) {
          var event = context.read<EnrollCourseBloc>();
          return state.screenLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.errorMsg != null
                  ? ErrorScreen(error: state.errorMsg)
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(_padding),
                            child: SelectStudentList(
                                errorMsg: state.selectStudentError,
                                enabled: state.studentId == null,
                                initialValue: state.selectedStudent,
                                onChange: (student) {
                                  event.add(
                                      EnrollCourseEvent.selectStudentEvent(
                                          student: student));
                                },
                                studentsList: state.students,
                                label: AppStrings.selectStudent),
                          ),
                          Padding(
                            padding: EdgeInsets.all(_padding),
                            child: SelectCourseList(
                                errorMsg: state.selectCourseError,
                                enabled: state.courseId == null,
                                initialValue: state.selectedCourse,
                                onChange: (course) {
                                  event.add(EnrollCourseEvent.selectCourseEvent(
                                      course: course));
                                },
                                coursesList: state.courses,
                                label: AppStrings.selectCourse),
                          ),
                          Padding(
                            padding: EdgeInsets.all(_padding),
                            child: SelectSubCourseList(
                                errorMsg: state.selectSubCourseError,
                                initialValue: state.selectedSubCourse,
                                onChange: (subCourse) {
                                  event.add(
                                      EnrollCourseEvent.selectSubCourseEvent(
                                          subCourse: subCourse));
                                },
                                subCoursesList: state.subCourses,
                                label: AppStrings.selectSubCourse),
                          ),
                          Padding(
                            padding: EdgeInsets.all(_padding),
                            child: CustomOutlinedTextFormField(
                              // controller: addressController,
                              hintText: AppStrings.comments,
                              exampleHint: AppStrings.comments,
                              maxLines: 8,
                              initialValue: state.comments,
                              errorMsg: null,
                              onChanged: (comments) {
                                event.add(EnrollCourseEvent.commentsChangeEvent(
                                    comments: comments));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                width: context.width,
                                child: CustomWidgets.customButton(
                                    actionText: AppStrings.enroll.toUpperCase(),
                                    context: context,
                                    onPressed: !state.isLoading
                                        ? () {
                                            event.add(const EnrollCourseEvent
                                                .submitEnroll());
                                          }
                                        : null)),
                          ),
                          if (state.successMsg != null) ...[
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width: context.width,
                                  child: Text(
                                    state.successMsg!,
                                    style:
                                        context.textTheme.bodyLarge!.copyWith(
                                      color: context.colorScheme.primary,
                                    ),
                                    textAlign: TextAlign.center,
                                  )),
                            )
                          ],
                          if (state.submitError != null) ...[
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width: context.width,
                                  child: Text(
                                    state.submitError!,
                                    style: context.textTheme.bodyLarge!
                                        .copyWith(
                                            color: context.colorScheme.error),
                                    textAlign: TextAlign.center,
                                  )),
                            )
                          ]
                        ],
                      ),
                    );
        },
      ),
    );
  }
}
