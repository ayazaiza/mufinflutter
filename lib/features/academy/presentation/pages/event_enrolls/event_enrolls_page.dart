import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/presentation/cubits/enrolls/all_enrolls/all_enrolls_cubit.dart';
import 'package:academy/features/academy/presentation/cubits/event_enrolls/all_event_enrolls/all_event_enrolls_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/app_local_assets.dart';
import '../../../../../core/utils/router_const.dart';
import '../../widgets/list_item_widget.dart';

class EventEnrollsPage extends StatelessWidget {
  const EventEnrollsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.eventEnrollDetails),
      ),
      body: BlocBuilder<AllEventEnrollsCubit, AllEventEnrollsState>(
        builder: (context, state) {
          return state.eventEnrolls.isNotEmpty
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
                              AppStrings.eventEnrolls.toUpperCase(),
                              style: context.textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(state.eventEnrolls.length.toString())
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.eventEnrolls.length,
                            itemBuilder: (BuildContext list, int index) {
                              return GestureDetector(
                                onTap: () {
                                  context.push(Uri(
                                      path: RoutePaths.eventEnrollDetails.path,
                                      queryParameters: {
                                        "id": state.eventEnrolls[index].id,
                                      }).toString());
                                },
                                child: ListItemWidget(
                                    title: state.eventEnrolls[index].studentName,
                                    subtitle:
                                        state.eventEnrolls[index].eventName,
                                    third: "status: ${state.eventEnrolls[index].status}",
                                    icon: AppLocalAssets.eventsIcon.toAssetIcon(
                                        color: context.colorScheme.onPrimary)),
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
