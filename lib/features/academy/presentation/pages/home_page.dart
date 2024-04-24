import 'package:flutter/material.dart';

import '../../../../core/common/widgets/events_carousel_widget.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: EventsCarousel(),
      ),
    );
  }
}
