import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/blocs/add_student/add_student_bloc.dart';
import 'package:academy/features/academy/presentation/widgets/gender_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/widgets/action_bar_loader.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/custom_outlined_text_form_field.dart';
import '../../../../core/utils/custom_widgets.dart';
import '../widgets/date_of_select_widget.dart';
import '../widgets/drop_down_list.dart';
import '../widgets/error_screen.dart';

class AddStudentPage extends HookWidget {
  final double _padding = 8.0;
  final String title;

  const AddStudentPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          BlocBuilder<AddStudentBloc, AddStudentState>(
            builder: (context, state) {
              return state.isLoading
                  ? ActionBarLoader(isLoading: state.isLoading)
                  : IconButton(
                      onPressed: () {
                        context
                            .read<AddStudentBloc>()
                            .add(const AddStudentEvent.submit());
                      },
                      icon: const Icon(Icons.check));
            },
          )
        ],
      ),
      body: BlocConsumer<AddStudentBloc, AddStudentState>(
        listener: (context, state) {
          if (state.successMsg != null) {
            Fluttertoast.showToast(
                msg: state.successMsg!,
                backgroundColor: context.colorScheme.primary);
            context.pop();
          }
          if (state.errorMsg != null) {
            Fluttertoast.showToast(
                msg: state.errorMsg!,
                backgroundColor: context.colorScheme.error);
          }
        },
        builder: (context, state) {
          var event = context.read<AddStudentBloc>();
          return state.screenLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.error != null
                  ? ErrorScreen(error: state.error)
                  : SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(_padding),
                              child: CustomOutlinedTextFormField(
                                initialValue: state.firstName,
                                hintText: AppStrings.firstname,
                                errorMsg: state.firstNameError,
                                onChanged: (value) {
                                  event.add(
                                      AddStudentEvent.firstName(name: value));
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(_padding),
                              child: CustomOutlinedTextFormField(
                                initialValue: state.lastName,
                                hintText: AppStrings.lastname,
                                errorMsg: state.lastNameError,
                                onChanged: (value) {
                                  event.add(
                                      AddStudentEvent.lastName(name: value));
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(_padding),
                              child: DateOfBirthSelect(
                                initialValue: state.dateOfBirth,
                                // hintText: AppStrings.dateOfBirth,
                                hasError: state.dateOfBirthError,
                                onChange: (dob, age) {
                                  event.add(AddStudentEvent.dateOfBirth(
                                      dateOfBirth: dob, age: age));
                                },
                                label: AppStrings.dateOfBirth,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(_padding),
                              child: CustomDropDownList(
                                label: AppStrings.relation,
                                initialValue: state.relation,
                                countryList: state.relationsList,
                                errorMsg: state.relationError,
                                onChange: (relation) {
                                  event.add(AddStudentEvent.relation(
                                      relation: relation));
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(_padding),
                              child: GenderSelectWidget(
                                label: AppStrings.gender,
                                initialValue: state.gender,
                                error: state.genderError,
                                onChanged: (gender) {
                                  event.add(AddStudentEvent.genderEvent(
                                      gender: gender));
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width: context.width,
                                  child: CustomWidgets.customButton(
                                      actionText: AppStrings.save.toUpperCase(),
                                      context: context,
                                      onPressed: !state.isLoading
                                          ? () {
                                              event.add(const AddStudentEvent
                                                  .submit());
                                            }
                                          : null)),
                            )
                          ],
                        ),
                      ),
                    );
        },
      ),
    );
  }
}
