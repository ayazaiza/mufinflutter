import 'package:academy/features/academy/presentation/cubits/event_details/event_details_cubit.dart';
import 'package:academy/features/academy/presentation/widgets/loading_error_widget.dart';
import 'package:academy/features/academy/presentation/widgets/mufin_event_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_strings.dart';

class MufinEventsDetails extends StatelessWidget {
  const MufinEventsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventDetailsCubit, EventDetailsState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
                /* leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: (){
                context.pop();
              },
            ),*/
                title: Text(state.mufinEvents?.title ?? AppStrings.appName)),
            body: LoadingErrorWidget(
                isLoading: state.isLoading,
                error: state.error,
                type: state.mufinEvents,
                child: state.mufinEvents == null
                    ? Container()
                    : MufinEventDetailCard(item: state.mufinEvents!)));
      },
    );
  }
}
