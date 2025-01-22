import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_local_assets.dart';
import '../../../../core/utils/custom_widgets.dart';

class NewLoginUi extends HookWidget {
  const NewLoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppLocalAssets.muffinLoginImg,
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Expanded(flex: 2, child: Container()),
              Text(
                "Welcome Back!",
                style: context.title!.copyWith(fontWeight: FontWeight.bold),
              ),
              CustomWidgets.spacerHeight(defaultHeight: 24),
              CustomWidgets.customOutlinedTextFormField(
                  hintText: "Phone number",
                  context: context,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          /*Image.asset(
                            AppLocalAssets.flagIndia,
                            height: 28,
                            width: 28,
                          ),*/
                          PopupMenuButton(
                              padding: const EdgeInsets.all(0),
                              icon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                      "${AppStrings.countriesWithFlag[0]["flag"]}",
                                      style: context.textTheme.titleLarge),
                                  const Icon(Icons.arrow_drop_down)
                                ],
                              ),
                              // icon: const Icon(Icons.arrow_drop_down),
                              itemBuilder: (context) => AppStrings
                                  .countriesWithFlag
                                  .map((e) => PopupMenuItem(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                            Text("${e["flag"]}",
                                                style: context
                                                    .textTheme.titleLarge),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Text("(${e["phoneCode"]})",
                                                  style: context
                                                      .textTheme.labelMedium!
                                                      .copyWith(
                                                          color: Colors.black)),
                                            ),
                                            Text("${e["country"]}",
                                                style: context
                                                    .textTheme.labelMedium!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold))
                                          ])
                                          /* Text.rich(
                                          textAlign: TextAlign.center,
                                          TextSpan(
                                              style:
                                                  context.textTheme.titleLarge!,
                                              children: [
                                                TextSpan(
                                                  text: e["flag"],
                                                ),
                                                TextSpan(
                                                    text: "(${e["phoneCode"]})",
                                                    style: context
                                                        .textTheme.labelMedium!
                                                        .copyWith(
                                                            color:
                                                                Colors.black)),
                                                TextSpan(
                                                    text: e["country"],
                                                    style: context
                                                        .textTheme.labelMedium!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600))
                                              ]))*/ /*Text(
                                          "${e["flag"]}  ${e["phoneCode"]}  ${e["country"]}")*/
                                          ))
                                  .toList())

                          /* DropdownButton<Map<String, String>>(
                              enableFeedback: false,
                              style: context.textTheme.labelLarge!.copyWith(
                                  color: context.colorScheme.onSurface,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5),
                              hint: const Icon(Icons.arrow_drop_down),
                              value: AppStrings.countriesWithFlag[0],
                              underline: Container(),
                              isExpanded: true,
                              items: AppStrings.countriesWithFlag.map((e) {
                                return DropdownMenuItem<Map<String, String>>(
                                  onTap: () {},
                                  value: e,
                                  child: Text(
                                      "${e["flag"]} ${e["phoneCode"]} ${e["country"]}"),
                                );
                              }).toList(),
                              onChanged: (value) {
                                */ /*  selectedCountry.value = value;
                                onChange(selectedCountry.value!);*/ /*
                              })*/
                          // const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                  suffixIcon: const Icon(Icons.arrow_circle_right_outlined)),
              Text(
                AppStrings.standardCall,
                style: context.textTheme.labelSmall,
              ),
              CustomWidgets.spacerHeight(defaultHeight: 24),
              CustomWidgets.customOutlinedTextFormField(
                hintText: "Enter OTP",
                context: context,
              ),
              CustomWidgets.spacerHeight(defaultHeight: 24),
              CustomWidgets.customButton(
                  onPressed: () {},
                  actionText: AppStrings.signIn.toUpperCase(),
                  context: context,
                  color: context.colorScheme.secondary,
                  elevation: 0),
              CustomWidgets.spacerHeight(defaultHeight: 24),
            ],
          ),
        ),
      ),
    );
  }
}
