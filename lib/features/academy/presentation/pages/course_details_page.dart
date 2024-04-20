import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/cubits/courses/course_details/course_details_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/details_widget.dart';
import 'package:academy/features/academy/presentation/widgets/heading_title_widget.dart';
import 'package:academy/features/academy/presentation/widgets/loading_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
          builder: (context, state) {
            return Text(
                state.course == null ? AppStrings.appName : state.course!.name);
          },
        ),
      ),
      body: BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
        builder: (context, state) {
          return LoadingErrorWidget(
            isLoading: state.isLoading,
            error: state.error,
            type: state.course,
            child: state.course == null
                ? Container()
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingTitleWidget(title: state.course!.name),
                        DetailsWidget(
                            title: AppStrings.courseName,
                            detail: state.course!.name),
                        DetailsWidget(
                            title: AppStrings.about,
                            detail: state.course!.about),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            AppStrings.subCourses,
                            style: context.textTheme.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.subCourses.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (cxt, index) {
                              return Container(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  tileColor: context.colorScheme.surfaceVariant,
                                  title: Text(state.subCourses[index].name),
                                  subtitle: Text(state.subCourses[index].about),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
