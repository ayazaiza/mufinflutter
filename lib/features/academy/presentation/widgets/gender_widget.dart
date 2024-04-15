import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/models/gender_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../domain/entities/utils/yes_no.dart';

class GenderSelectWidget extends HookWidget {
  final String label;
  final String? error;
  final Gender? initialValue;
  final void Function(Gender) onChanged;

  const GenderSelectWidget(
      {required this.label,
        required this.error,
      required this.initialValue,
      required this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    final gender = useState<Gender?>(initialValue);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: context.textTheme.titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Row(
          children: [
            Radio<Gender>(
              value: Gender.male,
              groupValue: gender.value,
              onChanged: (Gender? value) {
                gender.value = value;
                onChanged(gender.value!);
              },
            ),
            Text(Gender.male.toName, style: context.textTheme.titleLarge),
          ],
        ),
        Row(
          children: [
            Radio<Gender>(
              value: Gender.female,
              groupValue: gender.value,
              onChanged: (Gender? value) {
                gender.value = value;
                onChanged(gender.value!);
              },
            ),
            Text(Gender.female.toName, style: context.textTheme.titleLarge),
          ],
        ),
        Row(
          children: [
            Radio<Gender>(
              value: Gender.others,
              groupValue: gender.value,
              onChanged: (Gender? value) {
                gender.value = value;
                onChanged(gender.value!);
              },
            ),
            Text(Gender.others.toName, style: context.textTheme.titleLarge),
          ],
        ),
        error != null
            ? Text(
          error!,
          style: context.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w500,
              color: context.colorScheme.error),
          textAlign: TextAlign.end,
          maxLines: 2,
        )
            : const SizedBox.shrink()
      ],
    );
  }
}
