import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/utils/router_const.dart';
import 'package:academy/features/academy/presentation/cubits/courses/all_courses/courses_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CoursesPage extends StatefulWidget {
  final String uuid;

  const CoursesPage({super.key, required this.uuid});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesCubit, CoursesState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state.error != null && state.courses.isEmpty
                ? ErrorScreen(
                    error: state.error,
                  )
                : Container(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        itemCount: state.courses.length,
                        itemBuilder: (context, index) {
                          var course = state.courses[index];
                          return Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        height: 130,
                                        width: 160,
                                        decoration: BoxDecoration(
                                            color: context
                                                .colorScheme.primaryContainer
                                                .withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Stack(
                                          fit: StackFit.expand,
                                          children: [
                                            const Icon(
                                              Icons.image,
                                              // color: Colors.grey,
                                              size: 48,
                                            ),
                                            Image.network(
                                              course.imageUrl,
                                              fit: BoxFit.cover,
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            course.name,
                                            style: context.textTheme.bodyLarge!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          Text(
                                            course.about,
                                            style: context.textTheme.bodyLarge,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6.0, horizontal: 4.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: OutlinedButton(
                                            onPressed: () {
                                              context.push(Uri(
                                                  path: RoutePaths
                                                      .courseDetails.path,
                                                  queryParameters: {
                                                    "courseId": course.courseId
                                                  }).toString());
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const Icon(Icons.info),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(AppStrings.knowMore
                                                    .toUpperCase()),
                                              ],
                                            )),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: OutlinedButton(
                                            onPressed: () {
                                              context.push(Uri(
                                                  path: RoutePaths
                                                      .enrollCourse.path,
                                                  queryParameters: {
                                                    "courseId": course.courseId,
                                                    "uuid": widget.uuid
                                                  }).toString());
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(Icons.school),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(AppStrings.interested
                                                    .toUpperCase()),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                )
                                // Text(course.name),
                              ],
                            ),
                          );
                        }),
                  );
      },
    );
  }
}
