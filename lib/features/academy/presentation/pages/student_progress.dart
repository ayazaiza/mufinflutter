import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/cubits/stundent/student_progress/student_progress_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/loading_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants/app_strings.dart';

class StudentProgressPage extends HookWidget {
  const StudentProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.progress),
      ),
      body: BlocBuilder<StudentProgressCubit, StudentProgressState>(
        builder: (context, state) {
          return LoadingErrorWidget(
              isLoading: state.isLoading,
              error: state.error,
              type: state.topics,
              child:  SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionPanelList(
                          expansionCallback: (int index, bool isExpanded) {
                            context.read<StudentProgressCubit>().topicExpand(
                                isExpanded,
                                state.lists[index].completedTopic.topicId);
                          },
                          children: state.lists
                              .map((e) => ExpansionPanel(
                                    canTapOnHeader: true,
                                    headerBuilder:
                                        (BuildContext con, bool isExpanded) {
                                      return ListTile(
                                        title: Text(e.completedTopic.topicName),
                                        subtitle: Row(
                                          children: [
                                            Text(
                                                "${e.progressGradeTopicModel.where((element) => element.status).length}/${e.size}",
                                                style: context
                                                    .textTheme.bodyLarge),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Icon(
                                              Icons.star,
                                              // size: 20,
                                              color: e.status
                                                  ? Colors.orangeAccent
                                                  : Colors.grey,
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                    body: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ExpansionPanelList(
                                        expansionCallback:
                                            (int index, bool isExpanded) {
                                          context
                                              .read<StudentProgressCubit>()
                                              .gradeExpand(
                                                  isExpanded,
                                                  e
                                                      .progressGradeTopicModel[
                                                          index]
                                                      .gradeId);
                                        },
                                        children: e.progressGradeTopicModel
                                            .map((g) => ExpansionPanel(
                                                canTapOnHeader: true,
                                                headerBuilder:
                                                    (BuildContext con,
                                                        bool isExpanded) {
                                                  return ListTile(
                                                    title: Text(
                                                        g.gradeTopic.gradeName),
                                                    subtitle: Row(
                                                      children: [
                                                        Text(
                                                            "${g.progressLessonTopicModel.where((element) => element.status).length}/${g.size}",
                                                            style: context
                                                                .textTheme
                                                                .bodyLarge),
                                                        const SizedBox(
                                                          width: 6,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          // size: 20,
                                                          color: g.status
                                                              ? Colors
                                                                  .orangeAccent
                                                              : Colors.grey,
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                },
                                                body: Container(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: ExpansionPanelList(
                                                    expansionCallback:
                                                        (int index,
                                                            bool isExpanded) {
                                                      context
                                                          .read<
                                                              StudentProgressCubit>()
                                                          .lessonExpand(
                                                              isExpanded,
                                                              g
                                                                  .progressLessonTopicModel[
                                                                      index]
                                                                  .lessonId);
                                                    },
                                                    children: g
                                                        .progressLessonTopicModel
                                                        .map((l) =>
                                                            ExpansionPanel(
                                                                canTapOnHeader:
                                                                    true,
                                                                headerBuilder:
                                                                    (BuildContext
                                                                            con,
                                                                        bool
                                                                            isExpanded) {
                                                                  return ListTile(
                                                                    title: Text(l
                                                                        .lesson
                                                                        .lessonName),
                                                                    subtitle:
                                                                        Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .star,
                                                                          // size: 20,
                                                                          color: l.status
                                                                              ? Colors.orangeAccent
                                                                              : Colors.grey,
                                                                        )
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                                body: ListTile(
                                                                  title: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        size:
                                                                            20,
                                                                        color: l.lesson.status
                                                                            ? Colors.orangeAccent
                                                                            : Colors.grey,
                                                                      ),
                                                                      if (l
                                                                          .lesson
                                                                          .completedDate
                                                                          .isNotEmpty) ...[
                                                                        const SizedBox(
                                                                          height:
                                                                              12,
                                                                        ),
                                                                        RichText(
                                                                            text: TextSpan(
                                                                                text: l.lesson.completedDate,
                                                                                style: context.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600),
                                                                                children: [
                                                                              TextSpan(text: " ${l.lesson.completedTime}"),
                                                                              TextSpan(text: " by ", style: context.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.normal)),
                                                                              TextSpan(text: l.lesson.instructorName)
                                                                            ])),
                                                                        const SizedBox(
                                                                          height:
                                                                              12,
                                                                        ),
                                                                        Text(
                                                                          AppStrings
                                                                              .description,
                                                                          style: context
                                                                              .textTheme
                                                                              .bodyMedium!
                                                                              .copyWith(fontWeight: FontWeight.bold),
                                                                        ),
                                                                        Text(
                                                                          l.lesson
                                                                              .description,
                                                                          style: context
                                                                              .textTheme
                                                                              .bodyMedium,
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              12,
                                                                        ),
                                                                        Text(
                                                                          AppStrings
                                                                              .feedback,
                                                                          style: context
                                                                              .textTheme
                                                                              .bodyMedium!
                                                                              .copyWith(fontWeight: FontWeight.bold),
                                                                        ),
                                                                        Text(
                                                                          l.lesson
                                                                              .feedback,
                                                                          style: context
                                                                              .textTheme
                                                                              .bodyMedium,
                                                                        )
                                                                      ]
                                                                    ],
                                                                  ),
                                                                ),
                                                                isExpanded: l
                                                                    .isExpanded))
                                                        .toList(),
                                                  ),
                                                ),
                                                isExpanded: g.isExpanded))
                                            .toList(),
                                      ),
                                    ),
                                    isExpanded: e.isExpanded,
                                  ))
                              .toList()),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
