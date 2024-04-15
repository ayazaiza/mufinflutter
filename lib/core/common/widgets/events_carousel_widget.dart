import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/academy/presentation/cubits/landing/landing_cubit.dart';
import '../../../features/academy/presentation/widgets/carousel_card_widget.dart';
import '../../../features/academy/presentation/widgets/mufin_event_card.dart';

class EventsCarousel extends StatefulWidget {
  const EventsCarousel({super.key});

  @override
  State<EventsCarousel> createState() => _EventsCarouselState();
}

class _EventsCarouselState extends State<EventsCarousel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<LandingCubit, LandingState>(
            builder: (context, state) {
              return Column(
                children: [
                  CarouselCard(items: state.items),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Mufin events",
                        style: context.textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: context.colorScheme.secondary),
                      )),
                  ...state.events.map((e) {
                    var item = e;
                    return MufinEventCard(item: item);
                  }).toList()
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
