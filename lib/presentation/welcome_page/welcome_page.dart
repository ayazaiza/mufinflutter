import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  final String userId;

  const WelcomePage({super.key, required String id}) : userId = id;

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const CircularProgressIndicator(), Text(widget.userId)],
        ),
      ),
    );
  }
}
