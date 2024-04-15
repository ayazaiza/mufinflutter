import 'package:flutter/material.dart';

class ActionBarLoader extends StatelessWidget {
  final bool isLoading;

  const ActionBarLoader({required this.isLoading, super.key});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container(
            height: 25,
            width: 25,
            margin: const EdgeInsets.only(right: 15),
            child: const CircularProgressIndicator(),
          )
        : Container();
  }
}
