import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/blocs/student/all_students/all_students_bloc.dart';
import 'package:academy/features/academy/presentation/widgets/student_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_strings.dart';

class AllStudents extends StatefulWidget {
  const AllStudents({super.key});

  @override
  State<AllStudents> createState() => _AllStudentsState();
}

class _AllStudentsState extends State<AllStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text(AppStrings.students),
        actions: [
          IconButton(onPressed: () {

          }, icon: const Icon(Icons.person_add))
        ],
      ),
      body: BlocBuilder<AllStudentsBloc, AllStudentsState>(
        builder: (context, state) {
          return state.students.isNotEmpty
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  margin: const EdgeInsets.all(12),
                  // decoration: BoxDecoration(
                  //     color:
                  //         context.colorScheme.surfaceVariant.withOpacity(0.5),
                  //     borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              AppStrings.students.toUpperCase(),
                              style: context.textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(state.students.length.toString())
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.students.length,
                            itemBuilder: (BuildContext list, int index) {
                              return StudentCard(
                                  student: state.students[index]);
                            }),
                      ),
                    ],
                  ),
                )
              : const Center(
                  child: Column(
                    children: [Text(AppStrings.dataNotFound)],
                  ),
                );
        },
      ),
    );
  }
}
