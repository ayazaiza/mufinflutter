import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/mufin_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/router_const.dart';
import '../cubits/bottom_nav/bottom_nav_cubit.dart';

class MufinEventCard extends StatelessWidget {
  final String? userId;

  final MufinEvents item;

  const MufinEventCard({required this.item, this.userId, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.colorScheme.surfaceVariant),
      child: Column(
        children: [
          SizedBox(
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: 250,
              // margin: const EdgeInsets.only(
              //     left: 5, right: 5, bottom: 10),
              decoration: BoxDecoration(
                  color: context.colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8)),
              child: Stack(fit: StackFit.expand, children: [
                const Icon(
                  Icons.image,
                  size: 42,
                ),
                Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                )
              ]),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              item.title,
              // softWrap: false,
              maxLines: 2,
              style: context.textTheme.titleLarge?.copyWith(
                  color: context.colorScheme.onBackground,
                  fontWeight: FontWeight.w900,
                  overflow: TextOverflow.ellipsis),
              textAlign: TextAlign.start,
            ),
          ),
          Text(
            item.description,
            softWrap: false,
            maxLines: 3,
            style: context.textTheme.titleMedium?.copyWith(
                // color: context
                //     .colorScheme
                //     .onPrimary,
                overflow: TextOverflow.ellipsis),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: OutlinedButton(
                      onPressed: () {
                        var route = Uri(
                          path: RoutePaths.mufinEventDetails.path,
                          queryParameters: <String, String>{
                            "eventId": item.mufinEventId
                          },
                        ).toString();
                        GoRouter.of(context).push(route);
                      },
                      child: Text(AppStrings.viewMore.toUpperCase()))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    if (userId == null) {
                      context.push(RoutePaths.login.path);
                    } else {
                      context.read<BottomNavCubit>().onTap(2);
                    }
                  },
                  child: Text(item.btnText.toUpperCase()),
                ),
              )
            ],
            // child: ElevatedButton(
            //     onPressed: () {}, child: Text(item.btnText)
            // )
          )
        ],
      ),
    );
  }
}
