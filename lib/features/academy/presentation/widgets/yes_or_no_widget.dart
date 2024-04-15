import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/utils/yes_no.dart';



class YesOrNoWidget extends StatefulWidget {
  final String label;
  final YesRNo initialValue;
  final void Function(YesRNo) onChanged;

  const YesOrNoWidget(
      {required this.label, required this.onChanged, required this.initialValue, super.key});

  @override
  State<YesOrNoWidget> createState() => _YesOrNoWidgetState();
}

class _YesOrNoWidgetState extends State<YesOrNoWidget> {
  YesRNo? _yesRNo;

  @override
  void initState() {
    _yesRNo = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.label,
          style: context.textTheme.titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Row(
          children: [
            Radio<YesRNo>(
              value: YesRNo.yes,
              groupValue: _yesRNo,
              onChanged: (YesRNo? value) {
                setState(() {
                  _yesRNo = value;
                  widget.onChanged(_yesRNo!);
                });
              },
            ),
            Text("Yes", style: context.textTheme.titleLarge),
          ],
        ),
        Row(
          children: [
            Radio<YesRNo>(
              value: YesRNo.no,
              groupValue: _yesRNo,
              onChanged: (YesRNo? value) {
                setState(() {
                  _yesRNo = value;
                  widget.onChanged(_yesRNo!);
                });
              },
            ),
            Text("No", style: context.textTheme.titleLarge),
          ],
        ),
      ],
    );
  }
}
