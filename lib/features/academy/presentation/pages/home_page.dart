import 'package:flutter/material.dart';

import '../../../../core/common/widgets/events_carousel_widget.dart';

class HomePage extends StatelessWidget {
  final String? userId;

  const HomePage({super.key, this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: EventsCarousel(
          userId: userId,
        ),
      ),
    );
  }
}
