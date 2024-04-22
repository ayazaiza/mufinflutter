import 'package:academy/core/common/widgets/action_bar_loader.dart';
import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/utils/custom_outlined_text_form_field.dart';
import 'package:academy/features/academy/presentation/blocs/profile_update/profile_update_bloc.dart';
import 'package:academy/features/academy/presentation/widgets/drop_down_list.dart';
import 'package:academy/features/academy/presentation/widgets/selection_items.dart';
import 'package:academy/features/academy/presentation/widgets/yes_or_no_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/custom_widgets.dart';
import '../../../navigation/bloc/user_session_bloc.dart';

class ProfileUpdate extends StatefulWidget {
  final String? title;

  const ProfileUpdate({super.key, this.title});

  @override
  State<ProfileUpdate> createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  final double _padding = 8.0;

  @override
  Widget build(BuildContext context) {
    var event = context.read<ProfileUpdateBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? AppStrings.updateProfile,
            style: context.textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.w600)),
        actions: [
          if (kDebugMode) ...[
            IconButton(
                onPressed: () {
                  context.read<UserSessionBloc>().add(UserDoLoggedOutEvent());
                },
                icon: const Icon(Icons.logout_rounded)),
          ],
          BlocBuilder<ProfileUpdateBloc, ProfileUpdateState>(
            builder: (context, state) {
              return state.isLoading
                  ? ActionBarLoader(isLoading: state.isLoading)
                  : IconButton(
                      onPressed: () {
                        context
                            .read<ProfileUpdateBloc>()
                            .add(const ProfileUpdateEvent.submit());
                      },
                      icon: const Icon(Icons.check));
            },
          )
        ],
      ),
      body: BlocConsumer<ProfileUpdateBloc, ProfileUpdateState>(
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
          if (state.route != null &&
              state.uuid != null &&
              state.successMsg != null) {
            var route = Uri(path: state.route!, queryParameters: {
              "uuid": state.uuid!,
            }).toString();
            context.go(route);
            return;
          }
          // if (state.successMsg != null || state.errorMsg != null) {
          //   event.add(const ProfileUpdateEvent.reset());
          // }
        },
        builder: (context, state) {
          return state.screenLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
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
                            // controller: firstNameController,
                            hintText: AppStrings.firstname,
                            errorMsg: state.firstNameError,
                            onChanged: (value) {
                              event.add(
                                  ProfileUpdateEvent.firstName(name: value));
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: CustomOutlinedTextFormField(
                              initialValue: state.lastName,
                              // controller: lastNameController,
                              hintText: AppStrings.lastname,
                              errorMsg: state.lastNameError,
                              onChanged: (value) {
                                event.add(
                                    ProfileUpdateEvent.lastName(name: value));
                              }),
                        ),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: CustomOutlinedTextFormField(
                            initialValue: state.email,
                            enabled: false,
                            // controller: emailController,
                            hintText: AppStrings.email,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: CustomOutlinedTextFormField(
                              initialValue: state.phone,
                              // controller: phoneController,
                              hintText: AppStrings.phone,
                              keyboardType: TextInputType.phone,
                              errorMsg: state.phoneError,
                              onChanged: (phone) {
                                event.add(
                                    ProfileUpdateEvent.phone(phone: phone));
                              }),
                        ),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: YesOrNoWidget(
                            label: AppStrings.emailReceive,
                            initialValue: state.emailAlerts,
                            onChanged: (alert) {
                              event.add(
                                  ProfileUpdateEvent.emailAlert(alert: alert));
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: YesOrNoWidget(
                            label: AppStrings.phoneReceive,
                            initialValue: state.phoneAlerts,
                            onChanged: (alert) {
                              event.add(
                                  ProfileUpdateEvent.phoneAlert(alert: alert));
                            },
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(_padding + 4.0),
                            child: SelectionItems(
                                label: AppStrings.selectPrefDays,
                                items: AppStrings.prefDaysList,
                                hasError: state.preferredDaysError,
                                onTap: (items) {
                                  event.add(ProfileUpdateEvent.preferredDays(
                                      items: items));
                                },
                                selectedList: state.preferredDays)),
                        Padding(
                            padding: EdgeInsets.all(_padding + 4.0),
                            child: SelectionItems(
                                label: AppStrings.selectPrefTimings,
                                items: AppStrings.prefTimingsList,
                                hasError: state.preferredTimesError,
                                onTap: (items) {
                                  event.add(ProfileUpdateEvent.preferredTimes(
                                      items: items));
                                },
                                selectedList: state.preferredTimes)),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: CustomOutlinedTextFormField(
                              initialValue: state.address,
                              errorMsg: state.addressError,
                              // controller: addressController,
                              hintText: AppStrings.address,
                              onChanged: (address) {
                                event.add(ProfileUpdateEvent.address(
                                    address: address));
                              }),
                        ),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: CustomDropDownList(
                            label: AppStrings.country,
                            initialValue: state.country,
                            countryList: state.countriesList,
                            errorMsg: state.countryError,
                            onChange: (country) {
                              event.add(
                                  ProfileUpdateEvent.country(country: country));
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: CustomOutlinedTextFormField(
                            // controller: textStateController,
                            hintText: AppStrings.state,
                            initialValue: state.stateText,
                            errorMsg: state.stateError,
                            onChanged: (value) {
                              event.add(ProfileUpdateEvent.stateChange(
                                  statevalue: value));
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: CustomOutlinedTextFormField(
                            // controller: cityController,
                            hintText: AppStrings.city,
                            initialValue: state.city,
                            errorMsg: state.cityError,
                            onChanged: (city) {
                              event.add(ProfileUpdateEvent.city(city: city));
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(_padding),
                          child: CustomOutlinedTextFormField(
                            // controller: addressController,
                            hintText: AppStrings.whereDid,
                            exampleHint: AppStrings.whereDidExample,
                            maxLines: 8,
                            initialValue: state.where,
                            errorMsg: null,
                            onChanged: (where) {
                              event.add(ProfileUpdateEvent.where(where: where));
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
                                          event.add(const ProfileUpdateEvent
                                              .submit());
                                        }
                                      : null)

                              ),
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


/* child: FilledButton(
                            onPressed: () {
                              event.add(ProfileUpdateEvent.submit(
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  phone: phoneController.text,
                                  address: addressController.text,
                                  state: textStateController.text,
                                  city: cityController.text,
                                  where: whereController.text));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                AppStrings.save,
                                style: context.textTheme.titleLarge!.copyWith(
                                    color: context.colorScheme.onPrimary,
                                    fontWeight: FontWeight.w600),
                              ),
                            ))*/