import 'package:flutter/material.dart';

import 'error_screen.dart';

class LoadingErrorWidget<Type> extends StatelessWidget {
  final bool isLoading;
  final String? error;
  final Widget child;
  final Type? type;

  const LoadingErrorWidget(
      {super.key,
      required this.isLoading,
      required this.error,
      required this.type,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : error != null
            ? ErrorScreen(error: error)
            : child;
  }
}
