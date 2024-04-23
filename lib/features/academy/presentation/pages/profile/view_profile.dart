import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/utils/router_const.dart';
import 'package:academy/features/academy/presentation/cubits/view_profile/view_profile_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/loading_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:academy/features/academy/presentation/widgets/details_widget.dart';
import 'package:academy/features/academy/presentation/widgets/heading_title_widget.dart';

class ViewProfilePage extends StatelessWidget {
  const ViewProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.profile),
        actions: [
          BlocBuilder<ViewProfileCubit, ViewProfileState>(
            builder: (context, state) {
              return state.mufinUser != null
                  ? IconButton(
                      onPressed: () {
                        context.push(Uri(
                            path: RoutePaths.profileUpdate.path,
                            queryParameters: {
                              "uuid": state.mufinUser?.userId,
                              "complete": AppStrings.updateProfile,
                              "email": state.mufinUser?.email
                            }).toString());
                      },
                      icon: const Icon(Icons.edit))
                  : Container();
            },
          )
        ],
      ),
      body: BlocBuilder<ViewProfileCubit, ViewProfileState>(
        builder: (context, state) {
          return LoadingErrorWidget(
              isLoading: state.isLoading,
              error: state.error,
              type: state.mufinUser,
              child: state.mufinUser == null
                  ? Container()
                  : Container(
                      padding: const EdgeInsets.all(12),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            HeadingTitleWidget(title: state.mufinUser!.name),
                            DetailsWidget(
                                title: AppStrings.email,
                                detail: state.mufinUser!.email),
                            DetailsWidget(
                                title: AppStrings.phone,
                                detail: state.mufinUser!.phone),
                            DetailsWidget(
                                title: AppStrings.preferredDay,
                                detail: state.mufinUser!.preferredDays
                                    .toSet()
                                    .toString()),
                            DetailsWidget(
                                title: AppStrings.preferredTime,
                                detail: state.mufinUser!.preferredTimes
                                    .toSet()
                                    .toString()),
                            DetailsWidget(
                                title: AppStrings.address,
                                detail: state.mufinUser!.address),
                            DetailsWidget(
                                title: AppStrings.country,
                                detail: state.mufinUser!.country),
                            DetailsWidget(
                                title: AppStrings.city,
                                detail: state.mufinUser!.city),
                          ],
                        ),
                      ),
                    ));
        },
      ),
    );
  }
}
