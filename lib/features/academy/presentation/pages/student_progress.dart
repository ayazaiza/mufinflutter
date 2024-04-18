import 'package:academy/features/academy/presentation/cubits/student_progress/student_progress_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/error_screen.dart';
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
          print(state.lists.map((e) => e.isExpanded));
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.error != null
                  ? ErrorScreen(error: state.error)
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: ExpansionPanelList(
                              expansionCallback: (int index, bool isExpanded) {
                                print(isExpanded);
                                context
                                    .read<StudentProgressCubit>()
                                    .topicExpand(
                                        isExpanded,
                                        state.lists[index].completedTopic
                                            .topicId);
                              },
                              children: [
                                ...state.lists
                                    .map((e) => ExpansionPanel(
                                          // canTapOnHeader: true,
                                          headerBuilder: (BuildContext con,
                                              bool isExpanded) {
                                            return ListTile(
                                              title: Text(
                                                  e.completedTopic.topicName),
                                              subtitle: Row(
                                                children: [
                                                  Text("0/3"),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 16,
                                                  )
                                                ],
                                              ),
                                            );
                                          },
                                          body: ListTile(
                                            title:
                                                Text(e.completedTopic.topicId),
                                          ),
                                          isExpanded: e.isExpanded,
                                        ))
                                    .toList()
                              ],
                            ),
                          )
                        ],
                      ),
                    );
        },
      ),
    );
  }
}
